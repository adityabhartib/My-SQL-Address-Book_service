create database Address_Book_service;
use Address_Book_service;
show tables;
create table contacts (
id int auto_increment,
first_name varchar(300),
last_name varchar(300),
address varchar(200),
city varchar(300),
state varchar(200),
zip varchar(200),
phone_Number varchar(100),
email_Id varchar(600),
Primary key(id)
);

desc contactscontacts;

insert into contacts (first_name,last_name,address,city,state,zip,phone_Number,email_Id) values("Amit","Raj","Vaishali","Patna","Bihar","800006","9812040784","amitraj@gmail.com");
insert into contacts (first_name,last_name,address,city,state,zip,phone_Number,email_Id) values("Sumit","Raj","Vaishali","Patna","Bihar","800006","9812040784","amitraj@gmail.com");
insert into contacts (first_name,last_name,address,city,state,zip,phone_Number,email_Id) values("Aditya","Bharti","Vaishali","Patna","Bihar","800006","9812040784","adityabhrti@gmail.com");
insert into contacts (first_name,last_name,address,city,state,zip,phone_Number,email_Id) values("Neha","Singh","Vaishali","Patna","Bihar","800006","9812040784","Nehasingh@gmail.com");

 
select * from contacts;

update contacts 
set first_name ='Ankesh',last_name='kumar',city='Gaya'
where id =1;

select * from contacts;

delete from contacts 
where first_name='Aditya';

select * from contacts;

select * from contacts where city like 'g__%';

select * from contacts where state like 'B__%';

select count(*) from contacts where first_name like 'a__%';


select * from contacts where first_name like 'a__%';


create table contact_type(
contact_id int auto_increment,
contact_type varchar(200),
primary key(contact_id),
foreign key (contact_id) references contacts(id));

select * from contact_type;

select * from contacts;

insert into contact_type(contact_type,id) values('firend',1);

select c.id,c.first_name,c.last_name,c.address,c.city,c.state,c.phoneNumber,c.emailId
from contact as c inner join contact_type as ct
on c.id=ct.contact_id;

select * from contact_type;





