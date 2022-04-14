--1
create table sales_old (
sales_id int primary key,
order_date date,
customer_id int not null references customer(customer_id),
amount decimal
);

--2
insert into sales_old
values
(6, '2018/09/02', 2, 20000),
(7, '2018/09/02', 1, 5000),
(8, '2018/09/02', 3, 6000),
(9, '2018/09/05', 1, 3000);

--3
insert into sales
select * from sales_old


--4
drop table sales_old

--5
SELECT sales_id, order_date, 
  (CASE WHEN '2018/10/01' > order_date THEN 'ÅZ'  
        ELSE null end) as is_old
FROM sales
order by order_date asc;

--6
SELECT customer_id ||':'|| customer_name AS name 
FROM customer 
order by customer_id asc;

--7
select * from sales
where customer_id = 1
order by order_date desc
 limit 2;
 
 --8
 select 
