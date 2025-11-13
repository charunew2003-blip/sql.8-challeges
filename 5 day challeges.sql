create database collegedb;
use collegedb;

-- create table --
create table students(
student_id int primary key,
student_name varchar(100)
);

create table courses(
course_id int primary key,
course_name varchar(100)
);

create table Entrollments(
entrollment_id int primary key,
student_id int,
course_id int);

insert into students(student_id,student_name)values
(1, "anush kumar"),
(2,"arun kumar"),
(3,"priya dharshini"),
(4,"charu dharshini");

insert into courses(course_id,course_name) values
(1,"full_stock_development"),
(2,"data_analyst"),
(3,"mL"),
(4,"data_science");

insert into Entrollments(entrollment_id,students_id,course_id) values
(201,1,1),
(301,2,2),
(401,3,3),
(501,4,4);

-- inner join--
select s.student_id,c.course_name from students as s
inner join courses c on e.course_id = c.course_id
inner join Entrollments e on e.student_id= s.student_id;

-- Right join and left join --
select s.student_id,c.course_name from Entrollments as e 
right join courses s on e.course_id= c.course_id
left join students s on e.student_id =s.student_id;


-- union and union all --
select empname from currentemployees union 
select empname from pastemployees;

select empname from currentemployees union all
select empname from pastemployees;