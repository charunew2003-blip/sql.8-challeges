create database sales;
use sales;

create table orders(
order_id int primary key,
customer_name varchar(100),
Order_date date,
amount decimal (10.2)
); 

insert into orders(order_id,customer_name,order_date,amount) values
(241,"prasantha kumar","2025-09-12",2500.10),
(150,"arun kumar","2025-08-15",1509.10),
(241,"selva raj","2025-05-18",2500.12);

create table orders_history(
order_id int,
customer_name varchar(100),
order_date date,
amount decimal (10.7),
deleted_time timestamp);


DELIMITER $$
CREATE TABLE AFTER_ORDER_DELETE 
after DELETE ON ORDERS
FOR EACH ROW
BEGIN
INSERT INTO(ORDER_ID,CUSTOMER_NAME,ORDER_DATE,AMOUNT,DELETED_TIME)
VALUES(OLD.ORDER_ID,OLD.CUSTOMER_NAME,OLD.ORDER_DATE,OLD.AMOUNT,OLD.DELETE_TIME)
END$$
DELIMITER ;

select * from Orders;
select * from Order_History;
DELETE FROM Orders WHERE order_id = 150;

Select user from mysql.user;

-- Create a user --
Create user 'junioranalysts' @'localhost' identified by '12345';

-- grant access to the db --
Grant select on sales.* to 'junioranalysts' @'localhost' ;

-- what all permissions given--
show grants for 'junioranalysts' @'localhost' ;

-- Revoke access --
revoke select on sales.* from 'junioranalysts' @'localhost' ;


CREATE TABLE Accounts (
    account_no INT PRIMARY KEY,
    holder_name VARCHAR(100),
    balance DECIMAL(10,2)
);

INSERT INTO Accounts VALUES 
(1001, 'charu', 20000.00),
(1002, 'jeeva', 15000.00);

start transaction;
update Accounts set balance = balance + 5000 where account_no = 1001;
savepoint balance_credit;
update Accounts set balance = balance - 3000 where account_no = 1002;
savepoint balance_debit;

select account_no, balance from Accounts;

rollback;
rollback to balance_credit;

commit;