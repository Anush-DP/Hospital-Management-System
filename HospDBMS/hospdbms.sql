#create new database
create database hospital_database;

#show databases
show databases;

#use the newly created DB
use hospital_database;

#create a table for storing patients info
create table patients_info 
(
name varchar(20) NOT null,
email varchar(30),
contact_no numeric(10),
street varchar(50),
locality varchar(20),
aadhar varchar(12) PRIMARY KEY,
state varchar(20),
country varchar(20),
password varchar(25)
);

#create table for storing doctor info
create table doc_info
(
dname varchar(20),
dspec varchar(20),
psswd varchar(20)
);

#create a table for storing appointments
create table apn_info 
(
pname varchar(20),
dname varchar(20),
spec varchar(20),
apdate date,
aptime time
);


# following lines are for testing the DB
insert into patients_info values('bb','blabla',1234567890,'a','a','1a','a','a','123456');
insert into doc_info values('Doc1','Heart Surgery','123');
insert into doc_info values('Doc2','Brain surgery','dr@sheldon');
insert into apn_info values('123','Doc2','Heart Surgery','2002/02/11','22:22:22');
select * from patients_info;
select * from doc_info;
select * from apn_info;