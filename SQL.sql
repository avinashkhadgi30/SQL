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
designation varchar(50) not null,
blood_group varchar(50) not null);

create table salary(
salary_id int not null primary key ,
s_name varchar(50) not null,
salary varchar(50) not null);


create table books_new(
id int not null primary key auto_increment,
title varchar (50)not null,
price varchar (50)not null,
language varchar(50) not null,
author varchar(50) not null);


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


#Rename column name:-
SQL | ALTER (RENAME)

ALTER TABLE Student RENAME COLUMN NAME TO FIRST_NAME;


# MySQL Change Column data Type:-

 ALTER TABLE employees Modify column emp_id varchar(10);  

# Task 1:-
# How to extract data from mysql directly to csv.
# without column/Field name:-

SELECT * FROM employee INTO OUTFILE '/var/lib/mysql-files/employee.csv';

# with column/Field name:-
(SELECT 'id','name','address','mobile_no','designation','blood_group') UNION 
 SELECT * from employee INTO OUTFILE '/var/lib/mysql-files/employeeN.CSV';
 
#  ~~~~~~~~~~~~~~~~ Another way ~~~~~~~~~~~~~~~~~~~~~~~~~
(SELECT 'title','price','language','author') UNION 
(SELECT title,price,language,author from BOOKS INTO OUTFILE '/var/lib/mysql-file/BOOKS_NEW.CSV');



# Task 2:-
# CSV file to Mysql table :-
load data infile '/var/lib/mysql-files/books.csv' into table books fields terminated by ',' lines terminated by '\n' 
(title,price,language,author);





create table new_zealand(
id int not null primary key auto_increment,
yearmonth varchar(50) not null,
directioncode varchar(50) not null,
NZarea varchar(50) not null,
Count varchar(50) not null,
geolevel varchar(50) not null,
period varchar(50) not null);



load data infile '/var/lib/mysql-files/new-zealand.csv' into table new_zealand fields terminated by ',' lines terminated by '\n' 
(yearmonth,directioncode,Nzarea,Count,geolevel,period);


