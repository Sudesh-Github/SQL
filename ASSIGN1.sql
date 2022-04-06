--CREATE DATABASE Business;


CREATE TABLE CustomerC
(
  ID int NOT NULL,
  FirstNAME nvarchar(40) NOT NULL,
  LastName nvarchar(40),
  City nvarchar(40),
  Country nvarchar(40),
  Phone nvarchar (40)

  PRIMARY KEY (ID)
);

SELECT * FROM CustomerC;
SELECT * FROM OrderO;
SELECT * FROM Product;
SELECT * FROM OrderItem;





CREATE TABLE OrderO
(
  ID int NOT NULL,
  OrderDate datetime NOT NULL,
  OrderNumber nvarchar(10),
  CustomerID int ,
  TotalAmount decimal (12,2)
  PRIMARY KEY (ID)
  FOREIGN KEy (CustomerID) REFERENCES CustomerC(ID)
);


CREATE TABLE Product
(
  ID int NOT NULL,
  ProductNAME nvarchar(50) NOT NULL,
  UnitPrice decimal(12,2),
  Package nvarchar(30),
  IsDiscontinued bit

  PRIMARY KEY (ID)
);


CREATE TABLE OrderItem
(
  ID int NOT NULL,
  OrderID int,
  ProductID int,
  UnitPrice decimal(12,2),
  Quantity int

  PRIMARY KEY (ID),
  FOREIGN KEY (OrderID) REFERENCES Product(ID),
  FOREIGN KEY (ProductID) REFERENCES Product(ID)

);


INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('1', 'Tom ', 'Skagen', 'Berlin', 'Germany', '989898');

INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('2', 'Bruce ', 'Wayne', 'Gotham,', 'United States', '889998');

INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('3', 'Tony ', 'Stark', 'LosAngeles', 'UnitedStates', '123448');

INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('4', 'Maitin ', 'Scott', 'Mumbai', 'India', '112288');

INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('5', 'Rick', 'Dalton', 'Buenos Aires', 'Argentina', '444898');

INSERT INTO CustomerC(ID, FirstNAME, LastName, City, Country, Phone)
VALUES ('6', 'Cliff', 'Booth', 'London', 'UK', '030-0074321');


SELECT * FROM CustomerC






INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (2,2021-11-11, 22, 3, 234);

INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (1,2021-01-10 , 24, 5, 2134.55);

INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (3,2021-09-04, 12, 4, 432.88);

INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (4,2021-05-19, 20, 1, 550.55);

INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (6,2022-09-13, 32, 2, 200);

INSERT INTO OrderO(ID,OrderDate, OrderNumber, CustomerID, TotalAmount)
VALUES (9,2020-10-13, 42, 3, 159);

UPDATE OrderO
SET OrderDate = '2015-05-06'
WHERE ID=9;


ALTER TABLE OrderO
ALTER COLUMN OrderDate date;


INSERT INTO Product(ID,ProductNAME, UnitPrice, Package, IsDiscontinued)
VALUES (1,'AXE Products',230.4, 'AMAZON', 1);

INSERT INTO Product(ID,ProductNAME, UnitPrice, Package, IsDiscontinued)
VALUES (3,'Maggi Products',3509.33, 'BLUEDART', 0);

INSERT INTO Product(ID,ProductNAME, UnitPrice, Package, IsDiscontinued)
VALUES (4,'RAYMOND Shirts',1530.4, 'AMAZON', 1);

INSERT INTO Product(ID,ProductNAME, UnitPrice, Package, IsDiscontinued)
VALUES (2,'NIKE Shoes',304, 'FLIPKART', 0);

INSERT INTO Product(ID,ProductNAME, UnitPrice, Package, IsDiscontinued)
VALUES (5,'HAMAM Products',2378, 'AMAZON', 1);


INSERT INTO OrderItem(ID,OrderID, ProductID, UnitPrice, Quantity)
VALUES (5, 3,2, 200.44, 12);

INSERT INTO OrderItem(ID,OrderID, ProductID, UnitPrice, Quantity)
VALUES (1, 1,3, 445.44, 112);

INSERT INTO OrderItem(ID,OrderID, ProductID, UnitPrice, Quantity)
VALUES (2, 5,1, 2004, 332);

INSERT INTO OrderItem(ID,OrderID, ProductID, UnitPrice, Quantity)
VALUES (4, 2,5, 24, 2);

INSERT INTO OrderItem(ID,OrderID, ProductID, UnitPrice, Quantity)
VALUES (3, 4,4, 5577, 2212);



SELECT * FROM CustomerC
WHERE Country LIKE 'A%';

SELECT FirstNAME FROM CustomerC
WHERE FirstNAME LIKE '__i%';

CREATE INDEX indexcustomername
ON CustomerC (LastName, FirstNAME);

CREATE INDEX indexordercustomerid
ON OrderO (CustomerID);

CREATE INDEX indexorderorderdate
ON OrderO (OrderDate);

CREATE INDEX indexproductsupplierID
ON Product (ID);

CREATE INDEX indexproductName
ON Product (ProductName);

CREATE INDEX indexorderitemorderID
ON OrderItem (OrderID);

CREATE INDEX indexorderitemproductID
ON OrderItem (ProductID);


select indexcustomername from CustomerC


EXEC sp_helpindex 'CustomerC'
GO