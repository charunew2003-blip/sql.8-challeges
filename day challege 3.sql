-- create database--
create database university;
use university;

create table Students(
student_id int primary key,
student_name varchar(100),
department_name varchar(100),
email_id varchar(100),
gender varchar (100),
course_name (55),
price deciaml (10,2)
);

insert into students values
(108,"mohanapriya","computerscience","mohnapriya@123","f", "data_analysis",3.4),
 (109,"Surya","computerapplications", null ,"m","fullstock",4.7),
 (110,"ajay", "computerapplications", null , "m", "fullstock",10.2),
(111, "krishna","computerscience" , "krishna@123", "m", "data_nalysis", 10.7);

-- where &cluases-- 
select student_name from students where email_id is null;
select student_name from students where email_id is not null;

---- distinct--
select distinct department_name from departments ;

-- in,between, not between--
select student_name from students  where course_name in("data_analysis","fullstock");

select student_name from students where price between "3" and "7";

select student_name from students where price not between "3" and "7";

