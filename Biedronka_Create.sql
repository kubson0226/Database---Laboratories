USE Biedronka3
go
Create TABLE Producer
(Name VARCHAR(255) NOT NULL CHECK(ASCII(left(Name,1)) BETWEEN 60 and 90) PRIMARY KEY,
Country VARCHAR(30) CHECK(ASCII(left(Country,1)) BETWEEN 60 and 90));

Create TABLE Product
(Product_name VARCHAR(255) NOT NULL PRIMARY KEY,
Kind_of_product VARCHAR(20),
prod_Name VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES Producer(Name) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Delivery_Part
(part_ID VARCHAR(6) NOT NULL CHECK(part_ID LIKE '[8][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
Date_of_expiration DATE,
Number_of_Products smallint,
product_name VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES Product(Product_name) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Delivery_Warehouse
(delivery_ID varchar(6) NOT NULL CHECK(delivery_ID LIKE '[9][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
expected_duraton time,
time_date_of_sending datetime2,
time_date_of_arrival datetime2);

ALTER TABLE Delivery_Part
ADD delivery_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Delivery_Warehouse(delivery_ID);

CREATE TABLE Warehouse
(IDCode varchar(6) NOT NULL CHECK(IDCode LIKE '[1][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
ware_capacity smallint,
ware_street varchar(255),
ware_number_of_building smallint,
ware_city varchar(255) CHECK(ware_city NOT LIKE '%[^A-Z]'));

ALTER TABLE Delivery_Warehouse
ADD war_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Warehouse(IDCode);

CREATE TABLE Orders
(order_ID varchar(6) NOT NULL CHECK(order_ID LIKE '[2][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
how_many_products smallint,
_Date date,
war_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Warehouse(IDCode));

CREATE TABLE Shop
(shop_ID varchar(4) NOT NULL CHECK(shop_ID LIKE '[7][0-9][0-9][0-9]') PRIMARY KEY,
shop_capacity smallint,
shop_street varchar(255),
shop_number_of_building smallint,
shop_city varchar(255) CHECK(shop_city NOT LIKE '%[^A-Z]'));

ALTER TABLE Orders
ADD shop_id varchar(4) NOT NULL FOREIGN KEY REFERENCES Shop(shop_ID);

CREATE TABLE Order_Part
(ordpart_ID varchar(6) NOT NULL CHECK(ordpart_ID LIKE '[3][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
number_of_products smallint,
current_left smallint,
product_name varchar(255) NOT NULL FOREIGN KEY REFERENCES Product(product_name) ON DELETE CASCADE ON UPDATE CASCADE,
ord_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Orders(order_ID));

CREATE TABLE Prod_Delivery
(ID varchar(6) NOT NULL CHECK(ID LIKE '[5][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
Products_taken smallint,
Date_of_expiration date,
ordpart_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Order_Part(ordpart_ID),
part_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Delivery_Part(part_ID) ON DELETE CASCADE);

CREATE TABLE Offer
(offer_ID varchar(6) NOT NULL CHECK(offer_ID LIKE '[4][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
Price decimal(4,2) NOT NULL,
Date_beg date,
Date_end date,
ordpart_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Order_Part(ordpart_ID),
product_name varchar(255) NOT NULL FOREIGN KEY REFERENCES Product(Product_name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Offer_for
(shop_id varchar(4) NOT NULL FOREIGN KEY REFERENCES Shop(shop_ID),
offer_id varchar(6) FOREIGN KEY REFERENCES Offer(offer_ID) ON DELETE CASCADE,
CONSTRAINT PK_OfferFor PRIMARY KEY (shop_id, offer_id));

CREATE TABLE Priced_by
(offer_id varchar(6) FOREIGN KEY REFERENCES Offer(offer_ID) ON DELETE NO ACTION,
id varchar(6) NOT NULL FOREIGN KEY REFERENCES Prod_Delivery(ID)  ON DELETE CASCADE,
CONSTRAINT PK_Priced_by PRIMARY KEY (offer_ID, id));

CREATE TABLE Sold_Products
(sale_ID varchar(6) NOT NULL CHECK(sale_ID LIKE '[0][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
_Date date,
Products_sold int, 
Profit int,
offer_id varchar(6) NOT NULL FOREIGN KEY REFERENCES Offer(offer_ID) ON DELETE NO ACTION,
id varchar(6) NOT NULL FOREIGN KEY REFERENCES Prod_Delivery(ID) ON DELETE CASCADE);

CREATE TABLE Lost_Products
(loss_ID varchar(6) NOT NULL CHECK(loss_ID LIKE '[6][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY,
_Date date,
Products_Lost int,
Loss int,
id varchar(6) NOT NULL FOREIGN KEY REFERENCES Prod_Delivery(ID)  ON DELETE CASCADE);
