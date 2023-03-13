create database satish
drop database satish

use satsh


show databases



CREATE TABLE personInfo ( 
    id int NOT NULL AUTO_INCREMENT primary key ,   
    emp_name varchar(30) NOT NULL,  
    address varchar(233) NOT NULL, 
    city varchar(30) NOT NULL, 
    age int NOT NULL, 
    salary decimal(15,3) NOT NULL,  
    mobile varchar(10) NOT NULL);
    
    select*from personInfo


create database satish;
show databases;
show tables
drop table personinfo


alter table personinfo
add phone varchar(345);

select*from personInfo

show tables

use satsh

CREATE TABLE employeeInfo ( 
    id int NOT NULL,   
    emp_name varchar(30) NOT NULL,  
    address varchar(233) NOT NULL, 
    city varchar(30) NOT NULL, 
    age int NOT NULL, 
    salary decimal(15,3) NOT NULL,  
    mobile varchar(10) NOT NULL);
    
    select *from personinfo

    
insert into personinfo (emp_name,mobile,address,city,age,salary)
values('suraj','7348736070','kajahit market','azamgarh',26,15000)


 drop table personinfo(phone)
values('23456777')


select emp_name,mobile,city from personinfo 
where address='56 bissa'

select *from personinfo

//And OPERATOR
select emp_name from personinfo
where mobile=7348730502 and emp_name='satish singh'

//OR OPERATOR
select emp_name from personinfo
where mobile=12345678 or emp_name='satish singh'

//Not operator
select emp_name from personinfo
where  not emp_name='veeykhr'

delete from personinfo
where mobile='7348730502'

use satsh


select emp_name,mobile from personinfo
// like operator
select *from personinfo
where mobile like '__4%'


// Not like operator
select *from personinfo
where mobile not like '__4%'

select *from personinfo
where address in 'kanajhit'

select *from personinfo
use satsh

delete from personinfo
where id=2

select *from personinfo
order by salary,emp_name

// In operator

select *from personinfo
where address in ('kanjahit','sikraura')

// Order by

select *from personinfo
order by emp_name desc 

// Sql function

// COUNT() FUNCTION
select count(emp_name)
from personinfo

//SUM() FUNCTION

select sum(salary)
from personinfo

//AVG FUNCTION

select avg(salary)
from personinfo

//MIN() FUNCTION

select min(salary)
from personinfo

//MAX() FUNCTION

select emp_name, max(salary) As higher salary
from personinfo
   

use satsh

// SQL JOINS

create database persondb

use persondb

drop table customer

create table customer(
cust_id int primary key,
cust_name varchar(20),
city varchar(30))

select*from customer


insert into customer  
values(102,'satish','azamgarh')
insert into customer 
values(103,'ashish','jaunpur')
insert into customer 
values(104,'rishu','kanjahit')
insert into customer 
values(105,'rohit','kanjahit')
insert into customer 
values(106,'sagar','azamgarh')
insert into customer 
values(107,'antim','jaunpur')
insert into customer 
values(108,'suraj','kanjahit')

create table orders(
order_id int primary key,
cust_name varchar(20),
dates varchar(30))

insert into orders  
values(102,'satish','2019-07-04')
insert into orders 
values(103,'ashish','2023-5-8')
insert into  orders
values(104,'rishu','2021-7-4')
insert into orders
values(105,'rohit','2012-6-9')
insert into orders 
values(106,'sagar','2011-6-8')
insert into orders 
values(107,'antim','2011-6-8')
insert into orders 
values(108,'suraj','2021-4-6')

select *from orders


//   JOINS

select orders.order_id,customer.cust_name,orders.dates
 from orders
inner join customer on orders.order_id=customer.cust_id

// Group by statement

use satsh

select * from personinfo


select count(id),sum(salary),id
from personinfo
group by id


// Truncate table

truncate table personinfo

//  Sql constraint

create database constraintsexp

use constraintsexp

create table notnullexp(
emp_name varchar(30) not null,
age int
)


select *from notnullexp

create table notnullexp(
emp_name varchar(30) not null,
age int
)

drop table notnullexp

insert into notnullexp (emp_name,age)
values ('satish',20)

insert into notnullexp (age)
values (20)

// Default constraints

create table defaultexp(
emp_name varchar(30) not null,
age int,
mobile varchar(40) default 'mobile is not available') 


select *from defaultexp

insert into defaultexp(emp_name,age)
values('ashish',23)

