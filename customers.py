import sqlite3
from pathlib import Path

import pandas as pd


DB_PATH = Path(__file__).parent / "order.db"

QUERIES = {
    "1. Orders with customer's account tier": """
        SELECT o.order_id, o.customer_name, c.account_tier, o.total_value
        FROM orders o
        INNER JOIN customers c ON o.customer_name = c.customer_name
        ORDER BY o.total_value DESC;
    """,
    "2. Total spent per customers with more than 3 orders": """
        SELECT customer_name, COUNT(*) AS order_count, SUM(total_value) AS total_revenue
        FROM orders
        GROUP BY customer_name
        HAVING COUNT(*) > 3
        ORDER BY total_value DESC;
    """,
    "3. Top customer per county": """
        SELECT customer_name, county, total_value
        FROM orders o
        WHERE total_value = (
            SELECT max(total_value)
            FROM orders
            WHERE county =o.county
        )
        ORDER BY total_value DESC;
    """,
}


def main():
    conn = sqlite3.connect(DB_PATH)
    try:
        for title, sql in QUERIES.items():
            df = pd.read_sql_query(sql, conn)
            print(f"\n{title}")
            print("-" * len(title))
            print(df.to_string(index=False))
    finally:
        conn.close()


if __name__ == "__main__":
    main()