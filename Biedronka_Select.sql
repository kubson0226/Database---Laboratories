USE Biedronka3
go

CREATE VIEW [All_drinks] AS
SELECT *
FROM Order_Part AS OP
WHERE OP.product_name IN (SELECT P.Product_name
							FROM Product AS P
							WHERE P.Kind_of_product = 'Drink')

SELECT *
FROM All_drinks

--  Find all shops which have a product of a given kind, from producer of a given country and with an expiration date in a given month.
SELECT S.shop_ID, S.shop_street, S.shop_number_of_building, S.shop_city
FROM Orders AS O JOIN Shop AS S
ON S.shop_ID = O.shop_id
WHERE O.order_ID IN (SELECT OP.ord_id 
					FROM Order_Part AS OP, Prod_Delivery AS PD
					WHERE OP.product_name IN
										(SELECT P.Product_name 
										FROM Product AS P
										WHERE P.prod_Name IN (SELECT Prod.Name
															FROM Producer AS Prod
															WHERE Prod.Country = 'France')
										AND P.Kind_of_product = 'Dairy')
					AND MONTH(PD.Date_of_expiration) = 10)

-- Find which type of product has the highest rate of sale in the past 6 months
SELECT TOP 1 SUM(PD.Products_taken-L.Products_lost) AS "Sale Rate", P.Kind_of_product
FROM Prod_Delivery AS PD, Lost_Products AS L, Delivery_Part AS D JOIN Product AS P
ON P.Product_name = D.product_name
WHERE D.part_ID = PD.part_id AND L.id = PD.ID AND L._Date > DATEADD(MONTH, -6, GETDATE())
GROUP BY P.Kind_of_product
ORDER BY "Sale Rate" DESC

-- Calculate an average price of a particular product for the past 6 months.
SELECT AVG(Price) AS "Average Price", product_name
FROM Offer AS O
WHERE ordpart_id IN (SELECT ordpart_ID 
					FROM Order_Part AS OP
					WHERE OP.product_name = 'Danonki')
AND O.Date_beg > DATEADD(MONTH, -6, GETDATE())
GROUP BY product_name

-- What type of products are mostly ordered by Biedronka in Christmas time (between 10.12.2022 and 23.12.2022)
SELECT OP.product_name AS "Product", P.Kind_of_product AS "Kind of product", OP.number_of_products AS "Number of products", O._Date AS "Date"
FROM Order_Part AS OP JOIN Product AS P ON P.Product_name = OP.product_name
JOIN Orders AS O ON order_ID = OP.ord_id
WHERE OP.ord_id IN (SELECT O.order_ID
FROM Orders AS O
WHERE O._Date >= DATEADD(DAYOFYEAR,  0, '2022-12-10') AND O._Date <= DATEADD(DAYOFYEAR,  0, '2022-12-23'))
--GROUP BY P.Kind_of_product, OP.product_name, OP.number_of_products, OP.ord_id, O._Date
ORDER BY "Number of products" DESC

-- Find all products and its kind that got lost between 12.10.2022 and 24.12.2022
SELECT L._Date, L.Products_Lost, OP.product_name, P.Kind_of_product
FROM Lost_Products AS L JOIN Prod_Delivery AS PD ON PD.ID = L.id
JOIN Order_Part AS OP ON OP.ordpart_ID = PD.ordpart_id
JOIN Product AS P ON OP.product_name = P.Product_name
WHERE _Date >= DATEADD(DAYOFYEAR, 0, '2022-10-12') AND _Date <= DATEADD(DAYOFYEAR, 0, '2022-12-24')

-- How much food on average does Biedronka threw away per month in case of expiration date in a given year
SELECT SUM(Products_Lost)/12 AS "Average monthly loss in 2022"
FROM Lost_Products AS L JOIN Prod_Delivery AS PD ON PD.ID = L.id
WHERE YEAR(L._Date) = 2022 AND PD.Date_of_expiration <= L._Date

SELECT *
FROM Lost_Products AS L JOIN Prod_Delivery AS PD ON PD.ID = L.id
WHERE YEAR(L._Date) = 2022 AND PD.Date_of_expiration <= L._Date

-- Find all products which were delivered to the warehouses in Warsaw in year 2022
SELECT DW.time_date_of_arrival AS "Arrival", W.ware_street AS "Street", W.ware_number_of_building AS "Number of building", W.ware_city AS "City", DP.product_name AS "Product", DP.Number_of_Products
FROM Delivery_Warehouse AS DW
JOIN Delivery_Part AS DP ON DP.delivery_id = DW.delivery_ID
JOIN Warehouse AS W ON W.IDCode = DW.war_id
WHERE war_id IN (SELECT W.IDCode
				FROM Warehouse AS W
				WHERE W.ware_city = 'Warszawa')
AND YEAR(DW.time_date_of_sending) = 2022

-- In which shop we can see the biggest number of lost products in year 2022
SELECT TOP 1 S.shop_street AS "Street", S.shop_number_of_building AS "Number", S.shop_city AS "City", SUM(L.Products_Lost) AS "Products lost in year 2022"
FROM Orders AS O
JOIN Shop AS S ON S.shop_ID = O.shop_id
JOIN Order_Part AS OP ON O.order_ID = OP.ord_id
JOIN Prod_Delivery AS PD ON PD.ordpart_id = OP.ordpart_ID
JOIN Lost_Products AS L ON L.id = PD.ID
WHERE YEAR(L._date) = 2022
GROUP BY S.shop_street, S.shop_number_of_building, S.shop_city
ORDER BY "Products lost in year 2022" DESC

-- Show the order parts and warehouses from where they come from for which number of delivered products of a particular kind is at most lower by 30 than ordered
SELECT OP.ordpart_ID, OP.product_name, W.ware_street AS "Street", W.ware_number_of_building AS "Number", W.ware_city AS "City", OP.number_of_products, PD.Products_taken
FROM Orders AS O
JOIN Warehouse AS W ON W.IDCode = O.war_id
JOIN Order_Part AS OP ON OP.ord_id = O.order_ID
JOIN Prod_Delivery AS PD ON PD.ordpart_id = OP.ordpart_ID
WHERE OP.number_of_products-PD.Products_taken <= 30
AND PD.ordpart_id IN (SELECT ordpart_ID
					FROM [All_drinks])






