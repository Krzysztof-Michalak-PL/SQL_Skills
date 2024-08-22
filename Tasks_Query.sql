
-- Task 1 Display department name and total number of employees in each department.

create view TASK_1 as

select Department_Name, COUNT(Surname) as "Qty. of Employee"
from Departments as D
left outer join Employee as E on D.id =  E.Department_Id
group by Department_Name
Order by "Qty. of Employee" desc;  -- can not be used for create views


-- Task 2 Display employee names and the department they belong to.

create view TASK_2 as

select E.Name,E.Surname,D.Department_Name
from Departments as D
left outer join Employee as E on D.Id =  E.Department_Id;


-- Task 3 Display the department name and average salary of employees in that department.

create view TASK_3 as

select Department_Name, AVG(Salary) as "Avg Salary in each Department"
from Departments as D
left outer join Employee as E on D.Id =  E.Department_Id
group by Department_Id,Department_Name;


-- Task 4 Display the name of the department and the name of the employee who earns the most in that department.

create view TASK_4 as

with SUB_Query as (
select	Department_Name, 
		max(Salary) as "Highest salary"
from Departments as D
left join Employee as E on D.id =  E.Department_Id
group by Department_Name)


Select Department_Name,Surname, [Highest salary]
from SUB_Query as SQ
left join Employee as E on SQ.[Highest salary] = E.Salary;
order by [Highest salary] desc;     -- can not be used for create views



-- Task 5 Display the five most expensive products by name and price.

create view TASK_5 as

select distinct top 5(Price),Name,Variant
from Product
order by Price desc;  


-- Task 6 Display the product name, category, and price with the price increased by 15%.

create view TASK_6 as

select distinct Name, variant,Category,Price, cast(Price as float)*0.15+Price as "Price including +15% increase"
from Products
--order by price desc;    -- can not be used for create views


-- Task 7 Display the product name and its price if the price is higher than the average price of all products.

create view TASK_7 as

select Name,variant, Price
from Products
where Price > ( select avg(Price) 
from Products)
group by Name,variant, Price;
--order by Price desc;    -- can not be used for create views



create view "AVG Price of all Products" as

select avg(Price) as "AVG Price of all Products"
from Products;