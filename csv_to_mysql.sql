# CSV file to Mysql table :-
#create table India:-

create table India(
id int not null primary key auto_increment,
yearmonth varchar(50) not null,
directioncode varchar(50) not null,
INarea varchar(50) not null,
Count varchar(50) not null,
geolevel varchar(50) not null,
period varchar(50) not null);



load data infile '/var/lib/mysql-files/India.csv' into table India fields terminated by ',' lines terminated by '\n' 
(yearmonth,directioncode,INarea,Count,geolevel,period);

