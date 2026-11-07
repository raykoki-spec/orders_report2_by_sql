# File: README.md

# Nairobi Wholesale Distributor Customer-Record Analysis

A Python script that automates report of customer records with three key metrics for the sales manager.

## What It Does
- Formats 3 clear questions
- Creates a summary indicating:
      All orders showing customer name alongside customer tier,
      Total revenue for customers with more than 3 orders,
      Top customer per county.
- Each question is answered in form of a table
- Answer for question 2 indicates 'Empty DataFrame' since there is no customer with multiple orders
## Setup

```bash
pip install pandas
```

## Usage

Run the program from the project's folder where the database file(order.db) is saved. 
```
python customers.py
```

## How It Works

 Prints the customer report using pandas read_sql_query.
 
```python

def main():
    conn = sqlite3.connect(DB_PATH)
    try:
        for title, sql in QUERIES.items():
            df = pd.read_sql_query(sql, conn)
            print(f"\n{title}")
            print("-" * len(title))
            print(df.to_string(index=False))
```

## Sample Output
```
3. Top customer per county
--------------------------
   customer_name   county  total_value
  Hassan Traders  Mombasa       128000
Wafula Suppliers  Nairobi       112000
 Koech Suppliers   Nakuru        64000
```

## Stack

Python, SQL, Pandas

