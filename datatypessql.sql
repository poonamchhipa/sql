#datatype in sql=>
create database regex2;
use regex2;

#ddl statement(data defination language)
create table employee1(eid int);
insert into employee1 values(2147483647);
select * from employee1;

create table employee3(eid int(4) zerofill);
insert into employee3 values(7963156);
select * from employee3;

create table employee4(eid int unsigned);
insert into employee4 values(4294967295);
select * from employee4;

create table employee20(id tinyint);
insert into employee20 values(127);
select * from employee20;

-- select * from test_bool;
-- insert into test_bool VALUES (1),(0),(-128),(127);

create table emp1(salary float);
insert into emp1 values(15.3356354);
select * from emp1;

create table emp2(salary float(4,2));#here 4 is total value and 2 is values before decimal
insert into emp2 values(15);
select * from emp2;

#varchar->variable length character
#char->fix length character
#varchar vs char=>there is diffrence about size and meaning
create table ep2(name1 char(2));
insert into ep2 values("zz");
select name1,length(name1) from ep2;

#variable character
create table ep_var(name1 char(4));
insert into ep_var values("X      ");#it truncate all last wide spaces
select name1,length(name1) from ep_var;

#date & time=>
-- date
create table test(dob date);
-- YYYY-MM-DD hh:mm:ss
insert into test values("2022-05-12");
select * from test;


