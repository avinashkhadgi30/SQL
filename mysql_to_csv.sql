# How to extract data from mysql to csv.

# create table employee:-

create table employee(
id int not null primary key ,
name varchar(50) not null,
address varchar(50) not null,
mobile_no varchar(50) not null,
designation varchar(50) not null,
blood_group varchar(50) not null);

# without column/Field name:-

SELECT * FROM employee INTO OUTFILE '/var/lib/mysql-files/employee.csv';

# with column/Field name:-
(SELECT 'id','name','address','mobile_no','designation','blood_group') UNION 
 SELECT * from employee INTO OUTFILE '/var/lib/mysql-files/employee.CSV';
 
#  ~~~~~~~~~~~~~~~~ Another way ~~~~~~~~~~~~~~~~~~~~~~~~~
(SELECT 'id','name','address','mobile_no','designation','blood_group') UNION 
(SELECT id,name,address,mobile_no,designation,blood_group from employee INTO OUTFILE '/var/lib/mysql-file/employee.CSV');

