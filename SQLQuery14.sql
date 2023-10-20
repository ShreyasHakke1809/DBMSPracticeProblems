-----------Create database---------------
create database CustomersDetails;

-----------Use databse-------------
use CustomersDetails;

-----------Create Table and add column------------
create table CustomersTable
(
 CustomerId int identity (1,1) primary key,
 CustomerName varchar (250),
 Phone bigint,
 Address varchar(250)
);

----------Add data ----------------
INSERT INTO CustomersTable VALUES ('Atharv',8850125584,'Kavalapur'),('Nitin',7458963214,'Sangli'),('Parth',8745693214,'Vita'),('Pratik',9012457896,'Sangli'),('Soham',9673252541,'Miraj');

----------Add new Columns in table------------
alter table CustomersTable add Country varchar(250), Salary float, Pincode float

----------Add the data at new column----------
update CustomersTable set Country ='India', Salary=20000, Pincode = 441441 where CustomerId = 1;
update CustomersTable set Country ='Austria' , Salary = 30000, Pincode = 400400 where CustomerId = 2;
update CustomersTable set Country ='Germany',Salary= 25000, Pincode = 522002 where CustomerId = 3;
update CustomersTable set Country ='Nepal',Salary= 22000, Pincode = 110110 where CustomerId = 4;
update CustomersTable set Country ='Srilanka',Salary= 35000, Pincode = 500500 where CustomerId = 5;

------------update data by name-------------
update CustomersTable set Phone = 9673215173 where CustomerName = 'Atharv';
update CustomersTable set Address = 'Tasgaon' where CustomerName = 'Parth';

----------count customers in each city----------------
select count(Country) as NumberOfCustomers,Country from CustomersTable group by Country;

----------- ---------------------------------------
select sum(Salary) as TotalSalary from CustomersTable;
select min(Salary) as MinSalary from CustomersTable;
select max(Salary) as MaxSalary from CustomersTable;
select AVG(Salary) as AverageSalary from CustomersTable;

----------Create another table--------
create table OrderTable
(
 OrderId int identity (1,1) primary key,
 ProductName varchar(250),
 Quantity int,
 Rating int
);

--------fetch data from both tables--------
select CustomersTable.CustomerName, OrderTable.ProductName , OrderTable.Quantity
from CustomersTable
inner join OrderTable on CustomersTable.CustomerId = OrderTable.OrderId;