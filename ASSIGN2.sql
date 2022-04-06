CREATE TABLE Cust (
    Name varchar(40),
    Orders int,
    Product varchar(255),
    Category varchar(255),
    City varchar(255),
	Phonenumber varchar(255)
);


SELECT * FROM Employee
SELECT * FROM Cust

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Bruce', 250, 'Fish', 'SeaFood', 'Germany', '030-0074321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Tom', 230, 'Meat', 'NonVeg', 'London', '040-0374321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Ethan', 10, 'Beef', 'NonVeg', 'Beijing', '011-0374321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Isaac', 2130, 'IOctopus', 'SeaFood', 'Mumbai', '9880374321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Wade', 30, 'Prawn', 'SeaFood', 'Paris', '03-0374321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Logan', 400, 'Mushroom', 'Veg', 'Chicago', '041-0374321');

INSERT INTO Cust(Name, Orders, Product, Category, City, Phonenumber)
VALUES ('Melvin', 130, 'Chai', 'Veg', 'Chennai', '7010374321');



CREATE TABLE Employee 
(
    Name varchar(40),
    ID int,
    deptname varchar(255),
    work varchar(255),
    rating int 
);


INSERT INTO Employee(Name, ID, deptname, work, rating)
VALUES ('Natasha', 2, 'Support Team', 'SL Manager', 7);

INSERT INTO Employee(Name, ID, deptname, work, rating)
VALUES ('Emily', 1, 'Support Team', 'Voice Exec.', 4);

INSERT INTO Employee(Name, ID, deptname, work, rating)
VALUES ('Stephen', 3, 'System Team', 'Associate', 9);

INSERT INTO Employee(Name, ID, deptname, work, rating)
VALUES ('Wong', 5, 'Accounts Team', 'Manager', 7);

INSERT INTO Employee(Name, ID, deptname, work, rating)
VALUES ('Steve', 4, 'Transport', 'Controller', 10);



SELECT Orders FROM Cust
WHERE Phonenumber= '030-0074321'

SELECT Product FROM Cust
WHERE Category= 'seafood'

SELECT Orders FROM Cust
WHERE NOT City='London';

SELECT Orders FROM Cust
WHERE Product='Chai';


SELECT Name, deptname, rating
FROM Employee
WHERE Name = ANY (SELECT Name FROM Employee WHERE rating >4);









Customer - Name, Orders ,Products, category, city, phonenumber

Employee – name, id ,  departname, work, rating