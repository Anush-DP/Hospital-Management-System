use hospital_database;
select * from patients_info;
create table apn_info (
pname varchar(20),
dname varchar(20),
spec varchar(20),
apdate date,
aptime time);
drop table apn_info;
select * from doc_info;
select * from apn_info;
insert into apn_info values('123','Doc2','Heart Surgery','2002/02/11','22:22:22');
SELECT * FROM patients_info where name='ajax'
update patients_info set name='A' where name='Ajax'
create database hospital_database;

use hospital_database;

show databases;

create table patients_info (
name varchar(20) NOT null,
email varchar(30),
contact_no int(10),
street varchar(50),
locality varchar(20),
aadhar varchar(12) PRIMARY KEY,
state varchar(20),
country varchar(20)
);
alter table patients_info add column password varchar(25);
drop table doc_pwds;
delete from patients_info where name='hackerman123';
insert into patients_info values('bb','blabla',1234567890,'a','a','1a','a','a','123456');
select * from patients_info;
SELECT password FROM patients_info where name='A';
create table doc_info
(
dname varchar(20),
dspec varchar(20),
psswd varchar(20)
);
insert into doc_info values('Doc1','Heart Surgery','123');
insert into doc_info values('Doc2','Brain surgery','dr@sheldon');
