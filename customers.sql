BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "orders" (
	"order_id"	INTEGER,
	"customer_name"	TEXT,
	"county"	TEXT,
	"account_tier"  TEXT
);
INSERT INTO "customers" VALUES (1001,'Kamau Stores','Nairobi','gold'),
 (1002,'Otieno Wholesale','Kisumu','silver'),
 (1003,'Njoroge Supplies','Nakuru','bronze'),
 (1004,'Hassan Traders','Mombasa','silver'),
 (1005,'Waweru Ltd','Nairobi','gold'),
 (1006,'Owino Trading','Kisumu','Silver'),
 (1007,'Karanja Mart','Mombasa','bronze'),
 (1008,'Kiprono Stores','Eldoret','gold'),
 (1009,'Ochieng Supplies','Kisumu','bronze'),
 (1010,'Mutua Wholesale','Machakos','bronze'),
 (1011,'Mutinda Mart','Kitui','bronze'),
 (1012,'Ouma Ltd','Kisumu','silver'),
 (1013,'Wafula Suppliers','Nairobi','gold'),
 (1014,'Kimani Stores','Mombasa','silver'),
 (1015,'Nyongesa Traders','Eldoret','gold'),
 (1016,'Koech Suppliers','Nakuru','bronze'),
 (1017,'Otieno Mart','Kisumu','gold'),
 (1018,'Wanjiku Stores', 'Nakuru', 'silver'),
 (1019,'Wamudhende Traders','Nakuru','silver'),
 (1020,'Ngetich Ltd','Eldoret','gold');
COMMIT;
