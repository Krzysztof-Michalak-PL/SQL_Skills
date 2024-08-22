
--Table 1: Employee

create table Employee
(id int not null identity(1,1) constraint klucz_id primary key(id),unique (id),
Name varchar(50),
Surname varchar(50),
Department_Id int,
Salary decimal (10,2),
Hire_Date date,
Supervisor_Id int,
);

insert into Employee (Name,Surname,Department_Id,Salary, Hire_Date,Supervisor_Id)values
('John','Smith',01,3900.00,'2004-01-04',001),
('Adam','Bold',01,3650.00,'2011-02-14',001),
('Henry','Green',01,3500.00,'2008-11-24',001),
('John','White',01,3600.00,'2009-05-15',001),
('Johan','Show',01,3900.00,'2012-09-13',001),
('Lisa','Task',02,5600.00,'2011-12-24',002),
('George','Smith',02,4800.00,'2019-11-01',002),
('Bob','Richardson',02,5100.00,'2014-02-09',002),
('Monika','Gee',02,4900.00,'2016-02-19',002),
('Donald','Wilson',03,6100.00,'2017-12-13',003),
('Margaret','Maguire',03,6600.00,'2001-05-05',003),
('John','Smith',03,6900.00,'2014-11-14',003);


-- Table 2: Departments

create table Departments
(id int not null identity(1,1),unique (id),
Department_Name varchar(50)
);

insert into Departments (Department_Name)values
('PRODUCTION'),
('SALES'),
('ACCOUNTANCY');


-- Table 3: Products

create table Products
(id int not null identity(1,1),unique (id),
Name varchar(100),
Variant varchar(100),
Category varchar(50),
Price decimal(10,2),
Production_Date date,
);

insert into Products (Name, Variant, Category, Price, Production_Date) values
('PC_Station','Standard','IT', 5000.00,'2024-01-04'),
('PC_Station','Standard','IT', 5000.00,'2024-01-06'),
('PC_Station','Premium','IT', 6500.00,'2024-02-06'),
('Mouse','Standard','IT',40.00,'2024-01-07'),
('Mouse','Standard','IT',40.00,'2024-01-17'),
('Monitor','Standard','IT',95.00,'2024-01-20'),
('Power_Supply','Standard','Electronics',35.00,'2024-01-14'),
('Power_Supply','Standard','Electronics',35.00,'2024-02-14'),
('Office_Chair','Standard','Furniture',150.00,'2024-01-17'),
('Office_Chair','Standard','Furniture',150.00,'2024-02-17'),
('Office_Desk','Standard','Furniture',260.00,'2024-02-07'),
('Office_Desk','Standard','Furniture',260.00,'2024-02-07'),
('Rack','Standard','Furniture',105.00,'2024-02-08'),
('Application','Standard','Software',600.00,'2024-03-10');


-- Table 4: Orders

create table Orders
(id int not null identity(1,1),unique (id),
Customer_Id int,
Product_Id int,
Quantity int,
Order_Date date,
);

insert into Orders (Customer_Id, Product_Id, Quantity, Order_Date) values
(1,6,5,'2023-05-10'),
(2,13,2,'2024-02-09'),
(2,22,1,'2024-02-01'),
(2,23,2,'2024-04-16'),
(3,24,3,'2024-08-11'),
(4,26,1,'2024-01-10'),
(5,26,5,'2024-05-10'),
(5,28,3,'2024-12-10'),
(5,29,1,'2024-07-14'),
(5,29,5,'2024-08-22'),
(6,30,7,'2024-03-26'),
(7,30,2,'2024-07-22'),
(7,11,9,'2023-11-04');


-- Table 5: Customers

create table Customers
(Id int not null identity(1,1),unique (id),
Name VARCHAR(50),
City VARCHAR(50),
email VARCHAR(100),
Phone_Number VARCHAR(20),
);

insert into Customers (Name, City, email, Phone_Number) values
('FOX','BERLIN','FOXBERLIN@gmail.com','584-258-147'),
('SAS','CHICAGO','SASCHICAGO@gmail.com','147-258-369'),
('B2FREE','ROME','B2FREEROME@gmail.com','789-455-123'),
('LTT Company','MADRID','LTT CompanyMADRID@gmail.com','123-456-789'),
('BEE2','NEW YORK','BEE2NEW YORK@gmail.com','852-159-951'),
('OFFREC','PARIS','OFFRECPARIS@gmail.com','789-258-123'),
('X-TOUR','PORTO','X-TOURPORTO@gmail.com','357-753-159');
