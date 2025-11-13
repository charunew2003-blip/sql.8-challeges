create database e_commerce;
use e_commerce;

create table products(
product_id int primary key,
product_name varchar(100),
price  decimal (10.2)
);


insert into products (product_id,product_name,price) values
(123, "mobile_phone", 25000),
(321,"laptop", 30000),
(421," headphones",5000),
(721,"watch",2500),
(521,"tablet",2500
);

-- order by--
select * from  products order by price desc limit 3;

create table sales (
sales_id int primary key,
product_id int primary key,
quantity int,
Price decimal (10.2)
);

insert into sales (sales_id,product_id,quantity,price) values
(321,1,2,50000),
(127, 2,3,45000),
(732,3,4,25000),
(321,4,3,20000),
(261,5,4,15000
);

-- aggreacate function--

 select count(*)as total_amount,
 sum(price)as total_sum_amount,
 avg(price) as total_avg_amount,
 min(price) as total_min_amount,
 mix(price) as total_mix_amount from sales;
 
 create table Employees(
 employee_id int primary key,
 employee_name varchar(100),
 department varchar(100),
 salary decimal (10.7)
 );
 
 insert into Employees (employee_id,employee_name,department,salary) values
 (1,"prasanth","hr",45000),
 (2,"arun","PA",50000),
 (3,"rahul","finance",50000),
 (4,"arjun","IT",50000),
 (5,"krishna","IT",25000),
 (6,"vicky","IT",30000),
 (7,"senthil","banking",45000),
 (8,"vijay","hr",24000),
 (9,"charu","IT",25000),
 (10,"harini","hr",30000),
 (11,"mona","hr",25000);
 
 select department ,count(*) as total_employees from Employees group by department having count(*)>10;
 