# SQL

sudo mysql -u root
show databases;
#create dadabase
create database test;
use test;

# create table
create table books(
title varchar (50)not null,
price int not null,
language varchar(50) not null,
author varchar(50) not null);

create table employee(
id int not null primary key ,
name varchar(50) not null,
address varchar(50) not null,
mobile_no varchar(50) not null,
designation varchaar(50) not null,
blood_group varchar(50) not null);

create table salary(
salary_id int not null primary key ,
s_name varchar(50) not null,
salary varchar(50) not null);

#Insert example:-
insert into employee values (1,'Avinash','nagpur',9876543210,'Trainee_software_Engineer','B+');

#insert multiple rows in single quary:-
insert into employee (id,name,address,mobile_no,designation,blood_group) values (1,'Avinash','nagpur',9876543210,'Trainee_software_Engineer','B+');

#Update:-
update employee set name = 'khadgi', address = 'Pune' where id = 1;

#SELECT * Example:-
select * from employee;

#WHERE Clause Example:-
select * from employee where name = 'avinash';

#Order by:-
select name,address from employee order by address;

# AND example:-
select * from employee where name = 'avinash' and address = 'nagpur';

#OR example:-
select * from employee where name = 'avinash' or address = 'nagpur';

#NOT example:-
select * from employee where not address = 'nagpur';


#SQL LIKE Examples:-
#Finds any values that start with "a"
select * from employee where name like 'a%'; 



# joins:-

select id from employee inner join salary on employee.id=salary.salary_id;


#
SQL | ALTER (RENAME)

ALTER TABLE Student RENAME COLUMN NAME TO FIRST_NAME;


