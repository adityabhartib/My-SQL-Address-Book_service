create database employee_payroll;
use employee_payroll;
show tables;
create table employee (
id int auto_increment,
name varchar(20),
gender varchar(10),
city varchar(30),
primary key(id)
);

desc employee;

insert into employee (name,gender,city) values("Nagraj","male","Bidar"),("Manoj","male","Hariyana"),("Prem","male","Kolapur");
insert into employee (name,gender,city) values("Aditya","male","Patna");
select * from employee;

Select * from employee
where id = 1;

Select * from employee
where not city ="Bidar"
order by id desc;

Select * from employee
where city is not null;

update employee set city = "Aurad"
where id = 1;

Select * from employee;

delete from employee
where id = 1;

Select * from employee
order by id asc limit 2;

Select min(id) from employee;

Select max(id) from employee;

Select count(*) from employee;

Select * from employee
where city like 'p___%';

Select sum(id)  from employee;

create table employee_salary
(
empid int auto_increment,
salary int,
emp_salary_id int,
primary key (empid),
foreign key (emp_salary_id) references employee(id)
);
drop table employee_salary;
Select * from employee_salary;
Select * from employee;
insert into employee_salary(salary,emp_salary_id) values(38000,2),(56000,3);
insert into employee_salary(salary,emp_salary_id) values(40000,4);

Select e.id,e.name,es.salary,e.city,e.gender from employee as e right join employee_salary as es
on e.id = es.emp_salary_id;


create table employee_department
(
department_id int auto_increment,
department_name varchar(30),
emp_department_id int,
primary key (department_id),
foreign key (emp_department_id) references employee_salary(empid)
);
Select * from employee_salary;
insert into employee_department(department_name,emp_department_id) values("SDE",1),("Testing",2),("Admin",3),("HR",4);

Select * from employee_department;
delete from employee_department where department_id >=5;
Select * from employee as e
inner join employee_salary as es
inner join employee_department as ed
on e.id = es.emp_salary_id and es.empid = ed.emp_department_id;

Select * from employee as e
left join employee_salary as es
on e.id = es.emp_salary_id;


Select * from employee;


Select * from employee as e
cross join employee_salary as es;
alter table employee add column join_date date after gender;

update employee set join_date='2022-11-21 22:30:56';

alter table employee modify column join_date datetime;

