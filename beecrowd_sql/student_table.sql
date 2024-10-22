create table student_info(
rool int primary key,
name varchar (50),
address varchar(50),
phone varchar(50),
age int);

ALTER TABLE student_info 
CHANGE rool roll int;

insert into student_info(rool

select * from student_info

drop table if EXISTS student_info