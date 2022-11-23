create database employee_payrolldata;
use employee_payrolldata;
show tables;

create table employee_details(
EmployeeID int auto_increment,
EmployeeName varchar(20),
PhoneNumber varchar(20),
Address varchar(20),
Gender varchar(20),
City varchar(20),
Country varchar(20),
primary key(EmployeeID)
);

desc employee_details;

insert into employee_details (EmployeeName,PhoneNumber,Address,Gender,City,Country) values ('Akash','9834584785','Mumbai','Male','Pune','India');
insert into employee_details (EmployeeName,PhoneNumber,Address,Gender,City,Country) values ('Aman','9834584785','Mumbai','Male','Bhopal','India');
insert into employee_details (EmployeeName,PhoneNumber,Address,Gender,City,Country) values ('Neha','9834584785','Mumbai','Female','Patna','India');
insert into employee_details (EmployeeName,PhoneNumber,Address,Gender,City,Country) values ('Survhi','9834584785','Mumbai','Female','Delhi','India');
insert into employee_details (EmployeeName,PhoneNumber,Address,Gender,City,Country) values ('Avinash','9834584785','Mumbai','Male','Pune','India');

Select * from employee_details;

create table salary_details(
Salary_id int auto_increment,
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate date,
primary key (Salary_id),
foreign key (Salary_id) references employee_details(EmployeeID)
);
show tables;
Select * from salary_details;

Select * from employee_details;

insert into salary_details(BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate) values(38000,4000,2500,1200,30000,'2018-09-22');
insert into salary_details(BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate) values(390000,4000,2500,1300,32000,'2018-09-21');
insert into salary_details(BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate) values(400000,4000,2500,1400,34000,'2018-09-23');
insert into salary_details(BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate) values(410000,4000,2500,1500,36000,'2018-09-24');
insert into salary_details(BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate) values(420000,4000,2500,2600,38000,'2018-09-25');

Select e.EmployeeID,e.EmployeeName,e.PhoneNumber,e.Address,e.Gender,e.City,e.Country,es.BasicPay,es.Deductions,es.TaxablePay,es.Tax,es.NetPay,es.StartDate from employee_details as e right join salary_details as es
on e.EmployeeID = es.Salary_id;

create table employee_department(
department_id int auto_increment,
department_name varchar(30),
emp_department_id int,
primary key (department_id),
foreign key (emp_department_id) references Salary_details(salary_id)
);
Select * from salary_details;
insert into employee_department(department_name,emp_department_id) values("SDE",1),("Testing",2),("Admin",3),("HR",4),('Testing',5);
insert into employee_department(department_name,emp_department_id) values("SDE",7);

Select * from employee_department;

Select * from employee_details as e
inner join salary_details as es
inner join employee_department as ed
on e.EmployeeID = es.salary_id and es.salary_id = ed.emp_department_id;

update employee_details set EmployeeName ='Aditya' where EmployeeID =6;

select min(NetPay) from salary_details where NetPay>25000;

select max(NetPay) from salary_details where NetPay>35000;

select avg(NetPay) from salary_details where NetPay;

select sum(NetPay) from salary_details where NetPay;

select * from employee_details;
