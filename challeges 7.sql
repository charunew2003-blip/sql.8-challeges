create database humanresoursedb;
use humanresoursedb;

create table Employee(
emp_id int primary key,
emp_name varchar(100),
empl_email varchar (100),
hiredate date,
job_role varchar (100),
salary decimal (10.2)
);

insert into Employee(emp_id,emp_name,empl_email,hiredate,job_role,salary) values
(1,"kavin rishop","kavin@gmail.com","2025-09-08","manager",25000),
(2,"ajay kumar","ajay@gmail.com","2025-07-05","supervisor",30000),
(3,"senthil kumar","senthil@gmail.com","2025-10-16","joinerworker",22000),
(4,"anush kumar","anush@gmail.com", "2025-12-17","deliveryboy",20000);

--- stored procedure --
DELIMITER //
CREATE PROCEDURE GETEMPLOYEEIDBY(IN  EMPL_ID INT)
BEGIN
-- SQL STATEMENTS & LOGIC--
SELECT * FROM EMPLOYEE WHERE EMPL_ID=EMPL_ID;
END //
DELIMITER ;

CALL GETEMPLOYEEIDBY(3);

alter table employee  add column department varchar(50);

select * from employees;

update employee set department='maintain' where emp_id=1;
update employee set department='checking' where emp_id=2;
update employee set department='maintain' where emp_id=3;
update employee set department='administration' where emp_id=4;


-- simple view--
create view employeedepartmentview as select emp_name as "Employeename" , department from employee;

select * from employeedepartmentview;

create table Employee1(
employee_id int,
employee_name varchar(100)
);

insert into Employee1( employee_id,employee_name) values
(101,"charudharshini"),
(102,"ravishankara"),
(103,"senthilkumar");

create table Department(
department_id int primary key,
department_name varchar(100),
employee_id int,
foreign key(employee_id)references Employee1(employee_id)
);

insert into Department(department_id,department_name,employee_id) values
(101,"sales",23),
(102,"finance",24);

create table salary (
salary_id int primary key,
salary decimal (10.2),
employee_id int,
foreign key (employee_id)references Employee1(employee_id)
);

insert into salary (salary_id,salary,employee_id) values
(501,15000,1),
(601,25000,2);

-- compleview---
select employee_name ,department_name ,salary from Employee1 e join department d on e.employee_id=d.employee_id
join salary s on e.employee_id = s.employee-id;


create view Empolyeedetails as select employee_name,department_name,salary from Employee1 e join department e.employee_id = d.employee_id 
join salary s e.employee_id = s.employee_id;

select * from Employeedetails;
