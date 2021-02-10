DROP database IF EXISTS PJ8;
CREATE DATABASE IF NOT EXISTS PJ8;
USE PJ8;

/* Creates Vendor table and definitions */
CREATE TABLE Vendor
(
	VendorId INT          PRIMARY KEY  AUTO_INCREMENT
   ,Company  VARCHAR(45)  NOT NULL
   ,Phone    CHAR(10)     NOT NULL
   ,EMAIL    VARCHAR(45)  NOT NULL
   ,Address  VARCHAR(45)  NOT NULL
   ,Country  VARCHAR(45)  NOT NULL
   ,ZipCode	 INT(5) 	  NOT NULL
);

/* Creates VendorOrders table and definitions */
CREATE TABLE VendorOrders
(
	VendorOrdersId INT PRIMARY KEY AUTO_INCREMENT
   ,VendorId      INT             NOT NULL
   ,Description   VARCHAR(255)
   ,Subtotal      FLOAT
   ,PaymentType   VARCHAR(45)
   ,OrderDate     VARCHAR(45),
    CONSTRAINT FOREIGN KEY (VendorId)  REFERENCES Vendor  (VendorId)
);

/* Creates ComputerParts table and definitions */
CREATE TABLE ComputerParts
(
	ComputerPartsId INT PRIMARY KEY AUTO_INCREMENT,
    `Type`			VARCHAR(45) 	NOT NULL,
    Product 		VARCHAR(45) 	NOT NULL,
    Specs 			VARCHAR(255) 	NOT NULL,
    Manufacturer	VARCHAR(45) 	NOT NULL,
    ClientPrice 	DECIMAL(19,3),
    VendorPrice 	DECIMAL(19,3)
);

/* Creates VendorOrderComputerParts table and definitions */
CREATE TABLE VendorOrdersComputerParts
(
	ComputerPartsId 	INT 	NOT NULL
   ,VendorOrdersId   	INT 	NOT NULL
   ,Quantity        	INT 	NOT NULL,
   CONSTRAINT FOREIGN KEY (ComputerPartsId)  REFERENCES ComputerParts (ComputerPartsId),
   CONSTRAINT FOREIGN KEY (VendorOrdersId)   REFERENCES VendorOrders  (VendorOrdersId)
);

/* Creates Client table and definitions */
CREATE TABLE Client
(
	ClientId INT          PRIMARY KEY  AUTO_INCREMENT
   ,Company  VARCHAR(45)  NOT NULL
   ,Phone    CHAR(10)     NOT NULL
   ,EMAIL    VARCHAR(45)  NOT NULL
   ,Address  VARCHAR(45)  NOT NULL
   ,ZipCode	 INT(5) 	  NOT NULL
);

/* Creates ClientOrders table and definitions */
CREATE TABLE ClientOrders
(
	ClientOrdersId INT PRIMARY KEY AUTO_INCREMENT
   ,ClientId      INT             NOT NULL
   ,Description   VARCHAR(255)
   ,Subtotal      DECIMAL
   ,PaymentType   VARCHAR(45)
   ,OrderDate     VARCHAR(45),
    CONSTRAINT FOREIGN KEY (ClientId)  REFERENCES Client  (ClientId)
);

/* Creates ClientOrdersComputerParts table and definitions */
CREATE TABLE ClientOrdersComputerParts
(
	ComputerPartsId 	INT NOT NULL
   ,ClientOrdersId   	INT NOT NULL
   ,Quantity        	INT NOT NULL,
   CONSTRAINT FOREIGN KEY (ComputerPartsId) REFERENCES ComputerParts (ComputerPartsId),
   CONSTRAINT FOREIGN KEY (ClientOrdersId)   REFERENCES ClientOrders   (ClientOrdersId)
);

/* Populate ComputerParts data */
INSERT INTO ComputerParts
	(ComputerPartsId, Type, Product, Specs, Manufacturer, ClientPrice, VendorPrice)
VALUES 
	(DEFAULT, 'Motherboard', 'G501-F', 'LGA SATA 6GB/S', 'ASUS', 200, 150),
	(DEFAULT, 'Motherboard', 'SPEEDX', 'LGA SATA 6GB/S', 'GIGABYTE', 500, 400),
	(DEFAULT, 'Motherboard', 'COBRA500', 'LGA SATA 6GB/S USB 4.1', 'MSI', 200, 150),
	(DEFAULT, 'Motherboard', 'ZSERIES', 'LGA SATA 6GB/S', 'BIOSTAR', 300, 250),
	(DEFAULT, 'Motherboard', 'SATAN', 'LGA SATA 6GB/S USB 4.1', 'MSI', 500, 350),
	(DEFAULT, 'Motherboard', 'XTF', 'LGA SATA 6GB/S', 'ASUS', 700, 600),
	(DEFAULT, 'Processor', 'RYZEN9000', '32 CORE 4.7GHZ', 'AMD', 500, 400),
	(DEFAULT, 'Processor', 'RYZEN6000', '64 CORE 5.1GHZ', 'AMD', 10000, 100),
	(DEFAULT, 'Processor', 'RYZEN7000', '32 CORE 3.7GHZ', 'AMD', 700, 600),
	(DEFAULT, 'Processor', 'CORE i7 10000k', '8 CORE 5GHZ', 'Intel', 2000, 1500),
	(DEFAULT, 'Processor', 'Core i9 20000k', '16 CORE 8GHZ', 'Intel', 3000, 700),
	(DEFAULT, 'MEMORY', 'RIPJAWS V', '288 pin ddr4 SDRAM', 'G.SKILL', 200, 50),
	(DEFAULT, 'MEMORY', 'RIPJAWS X', '288 pin ddr4 SDRAM', 'G.SKILL', 300, 100),
	(DEFAULT, 'MEMORY', 'RIPJAWS Y', '288 pin ddr4 SDRAM', 'G.SKILL', 700, 650),
	(DEFAULT, 'MEMORY', 'VENGEANCE LPX', '288 pin ddr4 SDRAM', 'CORSAIR', 3000, 2500),
	(DEFAULT, 'MEMORY', 'VENGEANCE LPX2', '288 pin ddr4 SDRAM', 'CORSAIR', 1000, 700),
	(DEFAULT, 'PowerSupply', 'RM650x', '500 W', 'Thermaltake', 500, 400),
	(DEFAULT, 'PowerSupply', 'CX450M', '600 W', 'Thermaltake', 350, 120),
	(DEFAULT, 'PowerSupply', 'CX750', '700 W', 'CORSAIR', 350, 200),
	(DEFAULT, 'PowerSupply', 'TX-M', '750 W', 'EVGA', 780, 520),
	(DEFAULT, 'PowerSupply', 'CX250M', '800 W', 'CORSAIR', 750, 400),
	(DEFAULT, 'Video Card', 'geforce gtx1080', '12GB', 'GIGABYTE', 500, 400),
	(DEFAULT, 'Video Card', 'radeon rx7050', '24GB', 'ASUS', 350, 120),
	(DEFAULT, 'Video Card', 'geforce gtx2080', '6GB', 'MSI', 350, 200),
	(DEFAULT, 'Video Card', 'radeon rx900', '8GB', 'EVGA', 780, 520),
	(DEFAULT, 'Video Card', 'geforce x', '24GB', 'EVGA', 750, 400),
	(DEFAULT, 'Hard Drive', 'Black', '6TB 7200RPM', 'WD', 350, 200),
	(DEFAULT, 'Hard Drive', 'Red', '12TB 7200RPM', 'Seagate', 400, 200),
	(DEFAULT, 'Hard Drive', 'Elements', '8TB 7200RPM', 'Toshiba', 500, 450),
	(DEFAULT, 'Hard Drive', 'Black', '4TB 5200RPM', 'WD', 600, 400),
	(DEFAULT, 'Hard Drive', 'Red', '4TB 5200RPM', 'Seagate', 150, 50),
	(DEFAULT,'Motherboard','ASUS ROG Strix B550-F', 'AMD AM4, PCIe 4.0, 2.5Gb LAN, HDMI 2.1','ASUS',209.99,180),
	(DEFAULT, 'Motherboard','MSI MPG Z490','Intel Z490 SATA 6Gb/s ATX','MSI',269.99,225),
	(DEFAULT, 'Motherboard','ASRock Z490M-ITX/ac','LGA 1200 Intel Z490 SATA 6Gb/s Mini ITX','ASRock',159.99,143),
	(DEFAULT, 'Processor','Intel Core i9-9900K', 'Coffee Lake 8-Core, 16-Thread, 3.6 GHz (5.0 GHz Turbo) LGA 1151 95W', 'Intel',424.99,395),
	(DEFAULT,'Processor','Intel Core i7-9700K', 'Coffee Lake 8-Core 3.6 GHz (4.9 GHz Turbo) LGA 1151 95W BX80684I79700K UHD Graphics 630 ','Intel',329.99, 300),
	(DEFAULT,'Processor','Intel Core i7-10700K', 'Comet Lake 8-Core 3.8 GHz LGA 1200 125W BX8070110700K Desktop Intel UHD Graphics 630','Intel',409.99, 390),
	(DEFAULT,'Processor','Intel Core i5-9400F', 'Coffee Lake 6-Core 2.9 GHz (4.1 GHz Turbo) LGA 1151 (300 Series) 65W BX80684I59400F Desktop Processor Without Graphics ','Intel',153.99, 130),
	(DEFAULT,'Processor','Intel Core i5-9600K', 'Coffee Lake 6-Core 3.7 GHz (4.6 GHz Turbo) LGA 1151 (300 Series) 95W BX80684I59600K Desktop Processor Intel UHD Graphics 630', 'Intel',199.99, 170),
	(DEFAULT,'Processor','AMD RYZEN 9','3900X 12-Core 3.8 GHz (4.6 GHz Max Boost) Socket AM4 105W 100-100000023BOX Desktop Processor','AMD',429.99,388),
	(DEFAULT,'Processor','AMD RYZEN 7','3700X 8-Core 3.6 GHz (4.4 GHz Max Boost) Socket AM4 65W 100-100000071BOX Desktop Processor','AMD',289.99,264),
	(DEFAULT,'Processor','AMD RYZEN 5','2600X 6-Core 3.6 GHz (4.2 GHz Max Boost) Socket AM4 95W YD260XBCAFBOX Desktop Processor','AMD',177.49,155),
	(DEFAULT,'Video Card','GIGABYTE GeForce RTX 2070', 'DirectX 12 GV-N2070WF2-8GD 8GB 256-Bit GDDR6 PCI Express 3.0 x16 ATX', 'GIGABYTE',399.99,371),
	(DEFAULT,'Video Card','MSI GeForce GTX 1660','DirectX 12 GTX 1660 SUPER VENTUS XS OC 6GB 192-Bit GDDR6 PCI Express 3.0 x16 HDCP Ready', 'MSI',249.99,225),
	(DEFAULT,'Video Card','EVGA GeForce RTX 2060','XC GAMING, 6GB GDDR6, HDB Fan Graphics Card 06G-P4-2063-KR', 'EVGA',379.99,363),
	(DEFAULT,'Computer Case','Fractal Design Meshify','Black ATX High-Airflow Compact Light Tint Tempered Glass Mid Tower Computer Case','Fractal Design',89.99, 78),
	(DEFAULT,'Computer Case','CORSAIR Crystal 570X','RGB Tempered Glass, Premium ATX Mid Tower Case, White','CORSAIR',179.99, 158),
	(DEFAULT,'Computer Case','Cooler Master MasterBox Q300L','Micro ATX Tower w/ Magnetic Design Dust Filter, Transparent Acrylic Side Panel, Adjustable I/O & Fully Ventilated for Airflow ','Cooler Master',49.99, 39),
	(DEFAULT,'PowerSupply','EVGA 500 BA', '100-BA-0500-K1 500W ATX12V / EPS12V SLI CrossFire 80 PLUS BRONZE Certified Non-Modular Active PFC','EVGA',55.99,45),
	(DEFAULT,'PowerSupply','EVGA 600 BA', '100-BA-0600-K1 600W ATX12V / EPS12V SLI CrossFire 80 PLUS BRONZE Certified Non-Modular Active PFC','EVGA',69.99,56),
	(DEFAULT,'PowerSupply','CORSAIR RMx Series RM650x', '2018 CP-9020178-NA 650W ATX12V / EPS12V 80 PLUS GOLD Certified Full Modular Power Supply','CORSAIR',129.99,111),
	(DEFAULT,'Memory','CORSAIR Vengeance RGB Pro 32GB', '(2 x 16GB) 288-Pin DDR4 SDRAM DDR4 3200 (PC4 25600) Intel XMP 2.0 Memory Model CMW32GX4M2C3200C16','CORSAIR',129.99,106),
	(DEFAULT,'Memory','G.SKILL Ripjaws V Series 16GB', '(2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3600 (PC4 28800) Intel XMP 2.0 Memory Model F4-3600C16D-16GVKC','CORSAIR',75.99,67),
	(DEFAULT,'Memory','OLOy 16GB', '(2 x 8GB) 288-Pin DDR4 SDRAM DDR4 3000 (PC4 24000) Memory Model MD4U083016BGDA','OLOy',52.99,42),
	(DEFAULT,'Hard Drive','Seagate BarraCuda ST2000DM008 2TB', '7200 RPM 256MB Cache SATA 6.0Gb/s 3.5"','Seagate',54.99,46),
	(DEFAULT,'Hard Drive','WD Black 6TB Performance', '7200 RPM SATA 6Gb/s 256MB Cache 3.5 Inch - WD6003FZBX ','WD',229.99,211),
	(DEFAULT,'Hard Drive','WD Blue 3D NAND 1TB','SATA III 6Gb/s 2.5"/7mm Solid State Drive - WDS100T2B0A','WD',104.99, 89),
	(DEFAULT,'Hard Drive','WD BLACK SN750 NVMe M.2 2280 2TB', 'PCI-Express 3.0 x4 64-layer 3D NAND Internal Solid State Drive (SSD) WDS200T3X0C','WD',309.99, 277);


/* Populate Client Data */
INSERT INTO Client
	(ClientId, Company, Phone, Email, Address, ZipCode)
VALUES
	(DEFAULT, 'Amazon', '2068728298', 'jeff.bezos@amazon.com', '999 Jeff Island', '98739'),
	(DEFAULT, 'Walmart', '2067892281', 'albert.einstein@google.com', '1000 PARK DRIVE', '97888'),
	(DEFAULT, 'BestBuy', '4259654123', 'bbcorporate@gmail.com', '5000 Shirley Ave', '97850'),
	(DEFAULT, 'Costco', '3602145874', 'jksdfdjsk@costco.com', '85 Roberts Lane', '97888'),
	(DEFAULT, 'Microsoft', 3602142551, 'jkffwkjkj@microsoft.com', '37 George St', '97850'),
	(DEFAULT, 'Netflix', 2064587451, 'netflix@microsoft.com', '8245 New Street', '99999'),
	(DEFAULT, 'Google', 4254125465, 'Google@msn.com', '836 Woodlane Lane', '97054'),
	(DEFAULT, 'Target', 2065481244, 'Target@gmail.com', '55 East Theatre St', '92541'),
	(DEFAULT, 'T-mobile', 4256987412, 'Tmobile@yahoo.com', '777 Academy Rd', '97841'),
	(DEFAULT, 'At&t', 2065489999, 'att@t-mobile.com', '9037 Pierce Avenue', '99999');
    

/* Populate ClientOrders Data */
INSERT INTO ClientOrders
	(ClientOrdersId, ClientId, Description, Subtotal, PaymentType, OrderDate)
Values
	(DEFAULT, 1, 'x255 ASUS P90', 20000, 'Visa', '2017-09-02'),
	(DEFAULT, 1, 'x500 CORSAIR MEM', 15000, 'Visa', '2018-05-26'),
	(DEFAULT, 3, 'x500 CORSAIR MEM', 15000, 'Visa', '2016-02-17'),
	(DEFAULT, 10, 'x2 Thermaltake 500W PSU, x10 Intel i10 CPU', 30000, 'Visa', '2018-05-18'),
	(DEFAULT, 9, 'x64 2TB HDD', 3000, 'Mastercard', '2018-05-26'),
	(DEFAULT, 7, 'ASUS Geforce 2080ti', 500, 'Mastercard', '2018-05-25'),
	(DEFAULT, 6, 'MSI G20 Mobo', 250, 'Visa', '2018-04-21'),
	(DEFAULT, 4, 'Intel core i7', 600, 'Visa', '2018-07-09'),
	(DEFAULT, 4, 'Corsair Cx400 800w', 1000, 'Check', '2018-07-13'),
	(DEFAULT, 4, 'Nvidia Geforce 1080i', 700, 'Check', '2016-08-29'),
	(DEFAULT, 3, 'AMD RYZEN 10', 600, 'Visa', '2017-02-15'),
	(DEFAULT, 2, 'x4 G.SKILL 16GB', 1200, 'Mastercard', '2009-03-28'),
	(DEFAULT, 9, 'x255 CORSAIR MEM', 7000, 'Mastercard', '2004-07-11'),
	(DEFAULT, 3, 'x255 ASUS P90', 10000, 'Check', '2000-09-26'),
	(DEFAULT, 8, 'Radeon rx 7890', 150000, 'Check', '2001-01-02'),
	(DEFAULT, 7, 'x2 Gigabyte g90', 700, 'Check', '2006-05-20'),
	(DEFAULT, 9, 'x64 2TB HDD', 3000, 'Visa', '2019-05-26'),
	(DEFAULT, 4, 'x100 2TB HDD', 6000, 'Discover', '2019-05-26'),
	(DEFAULT, 3, 'x100 2TB HDD', 6000, 'American Express', '2020-04-44'),
	(DEFAULT, 1, 'x25 2TB HDD', 1000, 'American Express', '2020-04-05'),
	(DEFAULT, 6, '2TB HDD', 100, 'American Express', '2020-03-20'),
	(DEFAULT, 9, '4TB TOSHIBA HDD', 250, 'American Express', '2021-03-06');

/* Populate ClientOrdersComputerParts data */
INSERT INTO ClientOrdersComputerParts
	(ComputerPartsId, ClientOrdersId, Quantity)
VALUES
	(3, 22, 20),
	(2, 19, 40),
	(1, 11, 5),
	(10, 22, 11),
	(7, 6, 9),
	(6, 8, 7),
	(8, 7, 50),
	(2, 11, 60),
	(9, 4, 55),
	(2, 9, 22),
	(9, 13, 30),
	(10, 16, 3),
	(50, 1, 20),
	(58, 3, 40),
	(55, 7, 5),
	(43, 11, 11),
	(42, 18, 9),
	(33, 9, 7),
	(27, 21, 50),
	(30, 15, 60),
	(45, 13, 55),
	(54, 12, 22),
	(37, 1, 30),
	(34, 19, 3);

/* Populate Vendor data */
INSERT INTO Vendor
	(VendorId, Company, Phone, Email, Address, Country, Zipcode)
VALUES
	(DEFAULT, 'ComputeIndia', '8762987261', 'computerindia@aol.com', '73882 J Road Drive', 'India', '89228'),    
	(DEFAULT, 'ComputeVietnam', '1254875698', 'computervietnam@aol.com', '10 Arnold Rd ', 'Vietnam', '65442'),
	(DEFAULT, 'ComputeChina', '6587451258', 'computerchina@aol.com', '60 Lakeside Dr', 'China', '77584'),
	(DEFAULT, 'ComputeCambodia', '7458998541', 'computercambodia@aol.com', '214 W Fairview Rd', 'Cambodia', '65447'),
	(DEFAULT, 'Electronics Supplies', '9839882982', 'esupplies@aol.com', '329 NE 4th st', 'China', '74415'),
	(DEFAULT, 'India Parts Store', '5659877452', 'partsstore@gmail.com', '316 Stokes St', 'India', '95558'),
	(DEFAULT, 'China Parts Store', '9587855987', 'chinaparts@gmail.com', '107 Bee Lake Rd', 'China', '12554'),
	(DEFAULT, 'Vietnam Parts Store', '1548966523', 'computerindia@aol.com', '6300 Midnight Pass', 'Vietnam', '65884'),
	(DEFAULT, 'India Supplier', '6598744512', 'computerindia@aol.com', '2216 Bellaire Ave #5', 'India', '65998'),
	(DEFAULT, 'Vietnam Supplier', '1254788859', 'computerindia@aol.com', '10130 Steven Dr', 'Vietnam', '54447');
 
 /* Populate VendorOrders data */
 INSERT INTO VendorOrders
	(VendorOrdersId, VendorId, Description, Subtotal, PaymentType, OrderDate)
Values
	(DEFAULT, 9, 'x500 NVIDIA Geforce 2080TI', 50000, 'Check', '2020-02-01'),
	(DEFAULT, 8, 'x300 CORSAIR MEM', 1000, 'Check', '2020-02-01'),
	(DEFAULT, 5, 'x250 Intel core i7', 2000, 'Check', '2020-04-03'),
	(DEFAULT, 2, 'x300 4TB Toshiba HDD', 4500, 'Check', '2020-02-01'),
	(DEFAULT, 1, 'x1000 CORSAIR MEM', 5000, 'Check', '2020-02-01'),
	(DEFAULT, 1, 'x100 AMD RYZEN 9', 50000, 'Check', '2018-03-07'),
	(DEFAULT, 5, 'x100 Radeon rx 7890', 10000, 'Check', '2020-05-07'),
	(DEFAULT, 7, 'x200 Thermaltake 500W PSU', 2500, 'Check', '2020-02-01'),
	(DEFAULT, 9, 'x150 Thermaltake 500W PSU', 3000, 'Check', '2020-02-03'),
	(DEFAULT, 10, 'x700 Thermaltake 500W PSU', 4000, 'Check', '2020-02-04'),
	(DEFAULT, 2, 'x200 GIGABYTE G90', 1000, 'Check', '2020-02-01'),
	(DEFAULT, 4, 'x700 Radeon rx 7890', 7000, 'Check', '2020-01-16'),
	(DEFAULT, 4, 'x200 Radeon rx 7890', 500, 'Check', '2020-04-09'),
	(DEFAULT, 6, 'x20 Radeon rx 7890', 200, 'Check', '2020-05-16'),
	(DEFAULT, 7, 'x300 INTEL Core i9', 10000, 'Check', '2020-02-01'),
	(DEFAULT, 5, 'x20 EVGA Geforce 2090ti', 1000, 'Check', '2019-05-07'),
	(DEFAULT, 1, 'x20 TOSHIBA 4TB HDD', 500, 'Check', '2020-02-01'),
	(DEFAULT, 3, 'x10 MSI G20 Mobo', 1000, 'Check', '2020-02-01');

/* Populate VendorOrdersComputerParts data */
INSERT INTO VendorOrdersComputerParts
	(ComputerPartsId, VendorOrdersId, Quantity)
Values
	(52, 11, 25),
	(52, 17, 100),
	(12, 12, 200),
	(43, 5, 250),
	(47, 3, 750),
	(25, 4, 800),
	(17, 2, 900),
	(2, 6, 500),
	(6, 7, 270),
	(38, 11, 692),
	(27, 7, 701),
	(32, 9, 305),
	(56, 12, 863),
	(22, 4, 150),
	(7, 7, 400),
	(5, 5, 200);

/* Create a view to give a description and date of the parts ordered by client */
CREATE OR REPLACE VIEW ClientOrdersDescription
AS
SELECT Company, Description, OrderDate
FROM Client JOIN ClientOrders 			   USING (ClientId)
			JOIN ClientOrdersComputerParts USING (ClientOrdersId)
			JOIN ComputerParts 			   USING (ComputerPartsId);

/* Create a view to give a description and date of the parts ordered from vendor */
CREATE OR REPLACE VIEW VendorOrdersDescription
AS
SELECT Company, Description, OrderDate
FROM Vendor JOIN VendorOrders 			   USING (VendorId)
			JOIN VendorOrdersComputerParts USING (VendorOrdersId)
			JOIN ComputerParts 			   USING (ComputerPartsId);
            
/* Query that shows the types of motherboards ordered by clients and on which dates */
SELECT Company, Product, Type, OrderDate
FROM Client JOIN ClientOrders USING (ClientId)
			JOIN ClientOrdersComputerParts USING (ClientOrdersId)
			JOIN ComputerParts 			   USING (ComputerPartsId)
WHERE type="motherboard";

/* Query that shows the types of memories ordered from Vendor and on which dates */
SELECT Company, Product, Type, OrderDate
FROM Vendor JOIN VendorOrders USING (VendorId)
			JOIN VendorOrdersComputerParts USING (VendorOrdersId)
			JOIN ComputerParts 			   USING (ComputerPartsId)
WHERE type="memory";

/* Query that shows the vendor price of the Client's products ordered */
SELECT Company, Product, VendorPrice, OrderDate
FROM Client JOIN ClientOrders USING (ClientId)
			JOIN ClientOrdersComputerParts USING (ClientOrdersId)
			JOIN ComputerParts 			   USING (ComputerPartsId);

/* Query that shows the orders from the vendor; the names of the companies, and the description of their orders */
SELECT Company, Description
FROM Vendor JOIN VendorOrders USING (VendorId);





