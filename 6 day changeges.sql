create database functiondb;
use functiondb;

create table employees(
employee_id int primary key,
employee_firstname varchar (100),
employee_lastname varchar (55),
employee_hiredate date);
 
 create table students(
 student_id int primary key,
 student_firstname varchar (100),
 student_lastname varchar(100)
 );
 
 insert into employees(employee_id,employee_firstname,employee_lastname,employeehiredate)values
 (1,"charu","dharshini","2025-16-09"),
 (2,"prasantha","kumar","2025-19-05"),
 (3,"ragul","prasantha","2025-15-02"),
 (4,"senthil","kumar","2025-30-01");
 
 insert into students(student_id,studentfirst,studentlastname) values
 (1,"charu","dharshini"),
 (2,"prasantha","kumar"),
 (3,"ragul","prasantha"),
 (4,"senthil","kumar");
 
 select employee_id ,
 upper(employee_firstname) as upper_name,
 lower(employee_lastname) as lower_name,
 substring(firstname,1,2) as substringname,
 concat(employee_firstname," " ,employee_lastname)as full_name from Employees;
 
 -- date functions --
 select emplyee_id,hiredate
 year(now()-year(employee_hiredate) AS hiredateyear,
 DATEDIFF(now(),year(employee_hiredate)/365 AS hiredatedatedif 
 from Employees;
 
 -- user defined-- 
 DELIMITER $$
 create function getfullname(firstname varchar(100),lastname varchar (100)),
 returns varchar(25)
 DETERMINISTIC
 Begin
 RETURN CONCAT(firstname," ",lastname);
 end$$
 DELIMITER;
 
 
-- test in function--
 create function student_id, getfullname(firstname,lastname) as fullname from students;
 
 
 
 