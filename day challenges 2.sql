create database onlinestore;
use onlinestore;

-- create primary key in table --

create table Books(
Book_id int  primary key,
Title varchar(100),
author varchar (100),
ISBN varchar (50),
price decimal (10.2)
);

--- create foreign key  in table --
create table orders(
order_id int primary key,
Book_id int ,
quantity int (50),
orderdate date ,
price decimal (10.2),
foreign key (Book_id) references students (Book_id)
);

-- unique constraint --
alter table Book add column ISBN varchar(50) UNIQUE;

-- DELETE VS TRUNCATE --
delete  from orders  where Book_id<(100);

-- truncate--
truncate table orders;



