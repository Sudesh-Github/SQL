CREATE TABLE Company
(
  ID int,
  CompanyName varchar(255),
  Manager varchar(255),
  Country varchar(255),
  Products varchar(255),
  UnitPrice int,
  UnitInStock decimal(12,2),
  UnitInOrder decimal(12,2),
  Price decimal(12,2),
  OutOfStock int,
  Manufac_DateofOrders date
)

CREATE TABLE Shipping
(
  ShippingCompanyID int,
  ShippingCompanyName varchar(255),
  ShipName varchar(255),
  Categories varchar(255),
  Suppliers nvarchar(255),
  Orders int,
  ShippingDate date,
  OrderDate date,
)

CREATE TABLE CustomerF
(
  CustID int,
  CustomerName varchar(255),
  Address nvarchar(255),
  FaxNumber int,
  Orders int,
  Country varchar(255),

)

CREATE TABLE EmployeeC
  (
  EmployeeID int,
  EmployeeName varchar(255),
  EmployeeJoiningDate date,
  Manager varchar(255),
  Rating int
  )


  UPDATE CustomerF
  SET CustomerName = 'Susan Downey'
  WHERE CustID = 6; 

   INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (7, 'Jessie Pinkman', '77, Barter St', 030-0074321, 990, 'Iceland');

  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (1, 'Tom B. Erichsen', '21 Blecker St.', 345000, 340, 'Norway');
  
  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (2, 'Ethan Hunt', '44 Yonk St.', 225040, 1140, 'Germany');

  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (3, 'Jason Bourne', '250th Malibu St.', 567888, 6770, 'France');

  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (4, 'Johnny Depp', '6 Teresa St.', 567430, 90, 'Italy');

  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (5, 'Florence Pugh', '5 Kate St.', 908900, 6640, 'Chile');

  INSERT INTO CustomerF (CustID, CustomerName, Address, FaxNumber, Orders, Country)
  VALUES (6, 'Diana Keaton', '98, Nuncee St.',NULL, 450, 'Iran');



  INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
  VALUES (23, 'Eric Lesner', '2014-08-09','Charles', 7);

   INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
   VALUES (59, 'John David', '2011-12-19','Charles', 10);


 INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
  VALUES (213, 'Boheman', '2017-06-11','Henry', 2);

   INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
  VALUES (90, 'Kingsley', '2016-05-22','Nicolas', 4);

   INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
  VALUES (38, 'Hugh','2015-03-18', 'Clark', 7);

   INSERT INTO EmployeeC (EmployeeID, EmployeeName, EmployeeJoiningDate, Manager, Rating)
  VALUES (23, 'Eric Lesner', '2014-08-09','Charles', 7);




  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (1,'TATAA','Chris', 'Germany','Soaps',45.00,22,31,5609.22,2,'2019-09-11');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (6,'RDM','Daniel', 'Australia','Perfumes',98.10, 2 , 111, 4092,19,'2021-12-11');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (3,'Prisms','Sai', 'Bolivia','Silk',987.90,101,33,78900.80,100,'2013-12-31');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (4,'Rayman','Joy', 'France','Cloth Products', 787.90,334,38,56511,0,'2022-04-01');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (5,'Yokas','Danny', 'Italy','Eatables', 33.87,10, 99,1919.00,99,'2018-09-05');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (7,'GTAHSM','Chris', 'Russia','Chocolates', 17.20,87, 60,345.00,9,'2019-10-03');

  INSERT INTO Company (ID, CompanyName, Manager,Country,Products, UnitPrice, UnitInStock,UnitInOrder, 
  Price, OutOfStock, Manufac_DateofOrders) 
  VALUES (8,'DennisLand','Daniel', 'Mongolia','Silk', 10,82, 56,20.00,1,'2020-01-24');




  INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (53,'Lacorned_abondance','WhiePorteguese', 'Cloths','Exotic Liquids', 3387,'2018-11-30','2018-11-24')

  INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (38,'Lacorned_abondance','BlackMamba', 'BeautyItems','Prosthetic Seq', 908,'2019-04-10','2019-04-01')

  INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (29,'Gonzalez Goods','PersianKing', 'Meat','Rich Meats', 87,'2020-07-09','2020-07-07')

  INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (44,'Bryan Kings','Amazonian', 'Equipments','PS172', 90001,'2020-02-05','2020-01-24')

  INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (6,'Crystal KIngdom','Larsenia', 'SoftDrinks','Exotic Liquids', 6766,'2018-12-30','2018-12-24')


  SELECT *  FROM CustomerF
  SELECT *  FROM EmployeeC
  SELECT *  FROM Company
  SELECT *  FROM Shipping


  SELECT * FROM CustomerF
  WHERE Country = 'Germany'

SELECT * FROM CustomerF 
WHERE FaxNumber like '[+]%' or FaxNumber like '%-%';

SELECT * FROM  CustomerF
WHERE CustomerName LIKE '_u%';

SELECT * FROM  Company
WHERE UnitPrice BETWEEN 10 AND 20;

SELECT * FROM  Shipping
WHERE ShippingDate LIKE '%-%'
ORDER BY OrderDate

SELECT Orders FROM Shipping
WHERE ShipName = 'Lacorned_abondance' AND
OrderDate BETWEEN '2018-11-24' AND '2019-04-01' 
ORDER BY OrderDate;

  SELECT AVG(Orders) Average
  FROM CustomerF

  SELECT EmployeeName, Manager
  FROM EmployeeC

  SELECT ShippingCompanyName, ShipName
  FROM Shipping
  WHERE Operational = 'YES'

 
  SELECT SUM(UnitPrice) as TOTAL from Company
  LEFT OUTER JOIN Shipping
  ON Company.OrderID= Shipping.OrderID
  WHERE UnitPrice > 50 and Suppliers= 'ExoticLiquids'



  



















Company name,  employee , emp join date, product , product rate, out of stock, unitinstock , unitinorder,
suppliers, order, orderID, customers, date of orders made, max.orders, custid, manager name, bill, product name,
category name, price after discount, ship name, unitprice, fax number, employee name, country



