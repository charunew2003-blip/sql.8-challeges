
--- DAY 1 CHALLEGES COMPLETED--


create database hospital;
use hospital;

--- write the sql command  (patient-id,patient_name,patient_age,patient_gender,patient_admissiondate)
create table  patients(
patient_id int primary key,
patient_name varchar(100),
age int,
gender enum ('m','f'),
admission_date date
);

-- alter add column table---
alter table patients add column doctor_assigned varchar(100);

-- rename the column--
alter table patients rename to  patient_info;


-- modify the table--
alter table patient_info modify  patient_name varchar(105);

-- truncate table--
truncate table patient_info;


-- drop the table--
drop table patient_info;

