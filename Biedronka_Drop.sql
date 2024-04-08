USE Biedronka3
go
DROP TABLE Offer_for
DROP TABLE Priced_by
DROP TABLE Sold_Products
DROP TABLE Lost_Products
DROP TABLE Prod_Delivery
DROP TABLE Offer
DROP TABLE Order_Part
DROP TABLE Orders
DROP TABLE Shop
DROP TABLE Delivery_Part
DROP TABLE Delivery_Warehouse
DROP TABLE Warehouse
DROP TABLE Product
DROP TABLE Producer

DELETE Priced_by
DELETE Offer_for
DELETE Sold_Products
DELETE Lost_Products
DELETE Prod_Delivery
DELETE Offer
DELETE Order_Part
DELETE Orders
DELETE Shop
DELETE Delivery_Part
DELETE Delivery_Warehouse
DELETE Warehouse
DELETE Product
DELETE Producer

UPDATE Producer SET Name = 'Lays' WHERE Name = 'Crunchips'; 
SELECT * FROM Producer
SELECT * FROM Product

UPDATE Product SET Product_name = 'Fromage Crunchips' WHERE Product_name = 'Salted Crunchips'; 
SELECT * FROM Delivery_Part
SELECT * FROM Product
SELECT * FROM Offer

DELETE FROM Product WHERE Product_name = 'Salted Crunchips';
SELECT * FROM Product

DELETE FROM Producer WHERE Name = 'Crunchips';
SELECT * FROM Producer
SELECT * FROM Product

DROP VIEW loss_due_expiration