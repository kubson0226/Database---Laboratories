USE Biedronka3
go
/* Producer */
INSERT INTO Producer (Name, Country)
VALUES ('Crunchips', 'Germany');
INSERT INTO Producer (Name, Country)
VALUES ('Bakoma', 'Poland');
INSERT INTO Producer (Name, Country)
VALUES ('Mlekovita', 'Poland');
INSERT INTO Producer (Name, Country)
VALUES ('Lindt', 'Switzerland');
INSERT INTO Producer (Name, Country)
VALUES ('Heinz', 'USA');
INSERT INTO Producer (Name, Country)
VALUES ('CocaColaCo', 'USA');
INSERT INTO Producer (Name, Country)
VALUES ('Nivea', 'Germany');
INSERT INTO Producer (Name, Country)
VALUES ('Mondelez', 'USA');
INSERT INTO Producer (Name, Country)
VALUES ('Danone', 'France');
INSERT INTO Producer (Name, Country)
VALUES ('Tymbark', 'Poland');
INSERT INTO Producer (Name, Country)
VALUES ('Jacobs', 'Germany');
INSERT INTO Producer (Name, Country)
VALUES ('Rexona', 'Australia');
INSERT INTO Producer (Name, Country)
VALUES ('Lubella', 'Poland');

/* Product */
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Salted Crunchips', 'Snack', 'Crunchips');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Green Onion Crunchips', 'Snack', 'Crunchips');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Spicy ketchup Heinz', 'Sauce', 'Heinz');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Lubisie', 'Sweets', 'Mondelez');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Nivea Cream', 'Selfcare', 'Nivea');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Coca Cola', 'Drink', 'CocaColaCo');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Sprite', 'Drink', 'CocaColaCo');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Anti-desodorant Rexona', 'Self-Care', 'Rexona');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Jacobs Coffee', 'Drink', 'Jacobs');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Tymbark Jab³ko Pomarañcza', 'Drink', 'Tymbark');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Milk Mlekovita', 'Drink', 'Mlekovita');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Lindt Dark Chocolate', 'Sweets', 'Lindt');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Danonki', 'Dairy', 'Danone');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Gratka', 'Dairy', 'Danone');
INSERT INTO Product (Product_name, Kind_of_product, prod_Name)
VALUES ('Pasta Lubella', 'Cereal', 'Lubella');

/* Warehouse */
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188767', 20000, 'Ul. Kartuska', 'Gdañsk', 491);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188768', 12000, 'Ul. Metalowców', 'Gorzów Wielkopolski', 6);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188769', 16000, 'Ul. Bia³y Bór', 'Grudzi¹dz', 4);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188770', 11000, 'Ul. Biedronkowa', 'Lubin', 1);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188771', 9000, 'Ul. Gazowa', 'Lubartów', 3);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188772', 17000, 'Ul. Tarczyñska', 'Mszczonów', 121);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188773', 11000, 'Ul. Leœna', 'Wyszków', 33);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188774', 24000, 'Ul. Œw. Jerzego', 'Warszawa', 3);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188775', 14000, 'Ul. Innowacyjna', 'Sosnowiec', 6);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188776', 13000, 'Ul. Szyb Walenty', 'Ruda Sl¹ska', 10);
INSERT INTO Warehouse (IDCode, ware_capacity, ware_street, ware_city, ware_number_of_building)
VALUES ('188777', 15000, 'Ul. ¯niwna', 'Kostrzyn', 3);

/* Delivery_Warehouse */
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987654', '02:05:00', '2021-12-28 06:08:00', '2021-12-28 08:02:00', '188777');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987655', '01:47:00', '2022-02-15 05:04:00', '2022-02-15 07:00:00', '188767');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987656', '01:27:00', '2022-03-14 03:48:00', '2022-03-14 05:20:00', '188769');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987657', '01:20:00', '2022-03-15 04:25:00', '2022-03-15 05:55:00', '188774');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987658', '02:37:00', '2022-04-06 04:45:00', '2022-04-06 07:30:00', '188771');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987659', '02:40:00', '2022-04-22 06:30:00', '2022-04-22 09:25:00', '188770');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987660', '01:45:00', '2022-05-21 03:34:00', '2022-05-21 05:20:00', '188767');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987661', '02:00:00', '2022-05-23 02:40:00', '2022-05-23 05:10:00', '188771');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987662', '01:51:00', '2022-06-07 07:08:00', '2022-06-07 09:05:00', '188772');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987663', '01:15:00', '2022-06-24 03:09:00', '2022-06-24 04:20:00', '188774');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987664', '01:29:00', '2022-07-15 04:00:00', '2022-07-15 05:30:00', '188768');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987665', '02:10:00', '2022-07-15 05:20:00', '2022-07-15 07:51:00', '188770');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987666', '01:37:00', '2022-08-15 06:50:00', '2022-08-15 08:40:00', '188767');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987667', '01:57:00', '2022-08-22 03:32:00', '2022-08-22 05:35:00', '188776');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987668', '03:20:00', '2022-09-30 04:30:00', '2022-09-30 08:04:00', '188775');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987669', '01:00:00', '2022-10-21 06:20:00', '2022-10-21 07:32:00', '188774');
INSERT INTO Delivery_Warehouse (delivery_ID, expected_duraton, time_date_of_sending, time_date_of_arrival, war_id)
VALUES ('987670', '02:15:00', '2022-11-07 04:23:00', '2022-11-07 06:50:00', '188773');

/* Delivery_Part */
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876543', '2023-06-30', 200, 'Salted Crunchips', '987654');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876544', '2023-06-30', 300, 'Green Onion Crunchips', '987654');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876545', '2023-04-02', 250, 'Jacobs Coffee', '987655');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876548', '2023-09-15', 140, 'Spicy ketchup Heinz', '987656');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876546', '2022-10-02', 200, 'Danonki', '987657');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876547', '2022-10-02', 300, 'Gratka', '987657');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876549', '2023-02-15', 140, 'Pasta Lubella', '987658');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876550', '2022-07-21', 230, 'Milk Mlekovita', '987660');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876551', '2023-06-07', 230, 'Lubisie', '987662');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876552', '2026-07-15', 500, 'Nivea Cream', '987664');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876553', '2023-05-16', 350, 'Sprite', '987665');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876554', '2023-05-16', 350, 'Coca Cola', '987665');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876555', '2023-09-15', 250, 'Danonki', '987667');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876556', '2026-09-15', 250, 'Anti-desodorant Rexona', '987668');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876557', '2024-05-23', 250, 'Spicy ketchup Heinz', '987669');
INSERT INTO Delivery_Part (part_ID, Date_of_expiration, Number_of_Products, product_name, delivery_id)
VALUES ('876558', '2024-01-23', 350, 'Coca Cola', '987670');

/* Shop */
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7654', 5000, 'Ul. Chwarznieñska', 'Gdynia', 178);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7655', 6000, 'Aleja Grunwaldzka', 'Gdañsk', 100);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7656', 4500, 'Ul. Matejki', 'Gorzów Wielkopolski', 46);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7657', 4000, 'Ul. Che³miñska', 'Grudzi¹dz', 117);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7658', 4800, 'Ul. Jana Paw³a II', 'Lubin', 78);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7659', 4300, 'Aleja Tysi¹clecia', 'Lubartów', 2);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7660', 4100, 'Ul. Œwiêtojañska', 'Wyszków', 175);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7661', 6500, 'Ul. Nowy Œwiat', 'Warszawa', 68);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7662', 6000, 'Ul. Zwyciêzców', 'Warszawa', 40);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7663', 4600, 'Ul. Koœcielna 58', 'Sosnowiec', 58);
INSERT INTO Shop (shop_ID, shop_capacity, shop_street, shop_city, shop_number_of_building)
VALUES ('7664', 4000, 'Ul. Poznañska', 'Kostrzyn', 116);

/* Order */
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234567', 6000, '2022-01-23', '188777', '7664');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234568', 5500, '2022-03-05', '188767', '7655');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234569', 4000, '2022-04-15', '188769', '7657');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234570', 4500, '2022-09-16', '188774', '7661');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234571', 4300, '2022-05-01', '188771', '7659');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234572', 5000, '2022-06-05', '188767', '7655');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234573', 4900, '2022-08-11', '188768', '7656');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234574', 5200, '2022-07-26', '188770', '7658');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234575', 4800, '2022-10-15', '188775', '7664');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234576', 5500, '2022-12-15', '188774', '7662');
INSERT INTO Orders (order_ID, how_many_products, _Date, war_id, shop_id)
VALUES ('234577', 5100, '2022-12-22', '188773', '7660');

/* Order_Part */
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345678', 200, 1000, 'Salted Crunchips', '234567');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345679', 200, 900, 'Green Onion Crunchips', '234567');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345680', 100, 900, 'Jacobs Coffee', '234568');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345681', 100, 300, 'Spicy ketchup Heinz', '234569');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345682', 420, 470, 'Danonki', '234570');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345683', 180, 540, 'Gratka', '234570');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345684', 80, 250, 'Pasta Lubella', '234571');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345685', 150, 580, 'Milk Mlekovita', '234572');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345686', 300, 800, 'Nivea Cream', '234573');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345687', 200, 600, 'Sprite', '234574');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345688', 180, 550, 'Coca Cola', '234574');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345689', 190, 340, 'Anti-desodorant Rexona', '234575');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345690', 160, 500, 'Spicy ketchup Heinz', '234576');
INSERT INTO Order_Part (ordpart_ID, number_of_products, current_left, product_name, ord_id)
VALUES ('345691', 350, 760, 'Coca Cola', '234577');

/* Offer */
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456789', '2022-01-20', '2022-02-16', 3.00, '345678', 'Salted Crunchips');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456790', '2022-01-20', '2022-02-18', 3.00, '345679', 'Green Onion Crunchips');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456791', '2022-02-05', '2022-04-05', 10.00, '345680', 'Jacobs Coffee');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456792', '2022-03-10', '2022-06-10', 2.00, '345681', 'Spicy ketchup Heinz');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456793', '2022-09-10', '2022-09-20', 2.00, '345682', 'Danonki');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456794', '2022-09-20', '2022-09-30', 1.00, '345682', 'Danonki');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456795', '2022-03-20', '2022-03-30', 1.00, '345683', 'Gratka');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456796', '2022-05-30', '2022-09-30', 3.00, '345684', 'Pasta Lubella');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456797', '2022-06-15', '2022-07-15', 2.00, '345685', 'Milk Mlekovita');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456798', '2022-08-18', '2022-12-18', 3.00, '345686', 'Nivea Cream');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456799', '2022-08-15', '2022-09-15', 2.00, '345687', 'Sprite');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456800', '2022-08-15', '2022-09-15', 3.00, '345688', 'Coca Cola');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456801', '2022-11-15', '2022-12-15', 2.00, '345689', 'Spicy ketchup Heinz');
INSERT INTO Offer(offer_ID, Date_beg, Date_end, Price, ordpart_id, product_name)
VALUES ('456802', '2022-12-10', '2023-01-30', 3.00, '345690', 'Coca Cola');

/* Prod_Delivery */
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567890', 200, '2023-06-30', '345678', '876543');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567891', 190, '2023-06-30', '345679', '876544');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567892', 100, '2023-04-02', '345680', '876545');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567893', 290, '2022-10-02', '345682', '876546');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567894', 230, '2022-10-02', '345682', '876546');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567895', 180, '2022-04-02', '345683', '876547');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567896', 100, '2023-09-15', '345681', '876548');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567897', 70, '2023-02-15', '345684', '876549');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567898', 150, '2022-07-21', '345685', '876550');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567899', 250, '2026-07-15', '345686', '876552');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567900', 50, '2026-07-15', '345686', '876552');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567901', 200, '2023-05-16', '345687', '876553');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567902', 150, '2023-05-16', '345688', '876554');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567903', 45, '2026-09-15', '345689', '876556');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567904', 60, '2024-05-23', '345690', '876557');
INSERT INTO Prod_Delivery(ID, Products_taken, Date_of_expiration, ordpart_id, part_id)
VALUES ('567905', 350, '2024-01-23', '345691', '876558');

/* Lost_Products */
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678901', '2022-01-30', 100, 300, '567890');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678902', '2022-01-30', 0, 0, '567891');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678903', '2022-03-13', 30, 300, '567892');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678904', '2022-10-14', 100, 200, '567893');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678905', '2022-10-15', 120, 240, '567894');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678906', '2022-04-30', 50, 50, '567895');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678908', '2022-04-30', 50, 100, '567896');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678907', '2022-03-30', 200, 600, '567897');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678909', '2022-06-30', 150, 300, '567898');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678910', '2022-10-30', 150, 450, '567899');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678911', '2022-08-30', 50, 100, '567901');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678912', '2022-08-30', 100, 300, '567902');
INSERT INTO Lost_Products(loss_ID, _Date, Products_Lost, Loss, id)
VALUES ('678913', '2022-12-14', 30, 90, '567904');

/* Sold_Products */
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012345', '2022-01-30', 150, 450, '456789', '567890');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012346', '2022-01-30', 100, 300, '456790', '567891');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012347', '2022-03-30', 70, 700, '456791', '567892');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012348', '2022-04-15', 80, 160, '456792', '567896');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012349', '2022-10-20', 50, 100, '456793', '567893');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012350', '2022-10-30', 40, 40, '456794', '567893');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012351', '2022-03-30', 40, 40, '456795', '567895');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012352', '2022-05-31', 40, 80, '456792', '567896');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012353', '2022-07-31', 60, 180, '456796', '567897');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012354', '2022-07-21', 40, 80, '456797', '567898');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012355', '2022-11-30', 200, 600, '456798', '567899');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012356', '2022-12-15', 40, 120, '456798', '567900');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012357', '2022-09-15', 60, 120, '456799', '567901');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012358', '2022-09-15', 110, 330, '456800', '567902');
INSERT INTO Sold_Products(sale_ID, _Date, Products_Sold, Profit, offer_id, id)
VALUES ('012359', '2022-12-15', 50, 100, '456801', '567903');

/* Offer_for */
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456789', '7664')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456790', '7664')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456791', '7655')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456792', '7657')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456793', '7661')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456794', '7661')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456795', '7661')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456796', '7659')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456797', '7655')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456798', '7656')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456799', '7658')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456800', '7658')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456801', '7664')
INSERT INTO Offer_for(offer_id, shop_id)
VALUES ('456802', '7662')

/* Priced_by */
INSERT INTO Priced_by(offer_id, id)
VALUES ('456789', '567890')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456790', '567891')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456791', '567892')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456792', '567896')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456793', '567893')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456794', '567894')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456794', '567893')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456793', '567894')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456795', '567895')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456796', '567897')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456797', '567898')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456798', '567899')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456798', '567900')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456799', '567901')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456800', '567902')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456801', '567903')
INSERT INTO Priced_by(offer_id, id)
VALUES ('456802', '567904')

