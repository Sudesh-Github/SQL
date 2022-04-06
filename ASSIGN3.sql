  ;
   
  SELECT SUM(UnitPrice) as TOTAL from Company
  LEFT OUTER JOIN Shipping
  ON Company.OrderID= Shipping.OrderID
  WHERE UnitPrice > 50 and Suppliers= 'ExoticLiquids'

  SELECT * from EmployeeC
  GROUP BY EmployeeJoiningDate
  HAVING  COUNT(*)=1 
  Order BY EmployeeJoiningDate ASC

  SELECT *  FROM CustomerF
  SELECT *  FROM EmployeeC
  SELECT *  FROM Company
  SELECT *  FROM Shipping

   INSERT INTO Shipping (ShippingCompanyID, ShippingCompanyName, SHipName,Categories,Suppliers,Orders, ShippingDate,OrderDate)
  VALUES (90,'FanDonia','Bournd', 'Meat','Gosh Liables', 455,'2021-11-30','2021-11-21')




  SELECT * FROM EmployeeC
  group by EmployeeJoiningDate
  HAVING MAX(EmployeeJoiningDate);


  SELECT MAX(UnitPrice) AS MOST_EXPENSE,
   MIN(UnitPrice) AS LEAST_EXPENCE
   FROM Company

   SELECT MAX(UnitPrice) AS MOST_EXPENSE,
   MIN(UnitPrice) AS LEAST_EXPENCE
   FROM Company
   GROUP BY Products, UnitPrice
   HAVING (UnitPrice)>1

   SELECT * from Company
   WHERE OutOfStock=0

   SELECT Products FROM Company
   where UnitInStock > UnitInOrder

   SELECT Categories,Suppliers
   FROM Shipping
   GROUP BY Categories,Suppliers
   HAVING count(Categories)>=1

   ALTER TABLE CustomerF
   ADD OrderID int

  UPDATE CustomerF SET OrderID= 346
   WHERE CustID= 1

   SELECT *  FROM CustomerF
  SELECT *  FROM EmployeeC
  SELECT *  FROM Company
  SELECT *  FROM Shipping


  SELECT *
  FROM CustomerF
  FULL OUTER JOIN Company
  ON Company.OrderID = CustomerF.OrderID
  ORDER BY Manufac_DateofOrders,CustomerName ASC

  
SELECT * FROM CustomerF
where Orders =
(SELECT MAX(Orders) AS MaxOrders FROM CustomerF)


select SUBSTRING(CompanyName,0,2) as MyFirstWord from Company;


