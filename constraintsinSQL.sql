#--CONSTRAINTS-->
create database regex1;
use regex1;

create table employee01(id int);
insert into employee01 values(10),(20),(null),(30);

select count(id) from employee01;

select id,id+5 from employee01;

create table employee02(id int not null);
insert into employee02 values(10),(20);
-- insert into employee02 values(null);--error
insert into employee02 values(30);
select id ,id+5 from employee02;

drop table employee02;
create table employee02(id int,salary int default 0);
insert into employee02 values(10,99),(20,100);
insert into employee02(id,salary) values(10);
select * from employee02;

drop table employee02;
create table employee02(id int,salary int unique);
insert into employee02 values(10,99),(20,100);
insert into employee02(id,salary) values(20,1002);
insert into employee02(id,salary) values(22,null);
select * from employee02;

-- primary key-->it can never be null and all values are unique in this
drop table employee02;
create table employee02(id int primary key ,salary int unique);
insert into employee02 values(10,99),(20,100);
insert into employee02(id,salary) values(null,1002);
insert into employee02(id,salary) values(10,null);
select * from employee02;

drop table employee02;
create table employee02(id int primary key ,fname varchar(20),
salary int,
constraint regex_emp_salary_uk unique(salary));
insert into employee02 values(10,'a',99),(20,'b',99);

create table student(
student_id int,
name varchar(20),
fees int not null,
college_name varchar(30) default 'regex',
contact_no int unique,
constraint pk_student primary key(student_id,name),
constraint regex_contact_no_uk unique(contact_no),
constraint regex_fees_nn not null(fees),
constraint regex_college_d default(college)
);




