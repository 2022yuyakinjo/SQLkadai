create database db_exam;

create table major(
major_id int primary key
,major_name varchar(50));

create table student(
student_id int primary key
,student_name varchar(50)
,grade int
,hometown varchar(50)
,major_id int not null references major(major_id) );

insert into major values
(1, '英文学'), (2, '応用科学'), (3, '情報工学'), (4, '経済学'), (5, '国際文化');

insert into student values
(1,'山田', '1', '宮城','1'),
(2,'田中', '1', '東京','2'),
(3,'佐藤', '1', '東京', '3'),
(4,'鈴木', '2', '鹿児島', '1'),
(5,'高橋', '2', '北海道', '2'
(6,'吉田', '2', '東京','1'),
(7,'伊藤', '3', '鹿児島', '2'),
(8,'山本', '3', '神奈川', '3'),
(9,'森本', '4', '沖縄', '4'),
(10,'吉岡', '4', '神奈川', '5');

select * from student where grade=1;

select * from student where hometown='東京';

select major_name from major;

update student set grade =3 where student_id = 10;

delete from student where student_id = 10;



create database axiz_exam_dev;

create table customer(
customer_id int primary key
,customer_name varchar(50));

create table sales(
sales_id int primary key
,order_date date
,customer_id int not null references customer(customer_id)
,amount decimal);

insert into customer values
(1,田中'), (2,'鈴木'), (3,'田中'), (4,'田島');

insert into sales values
(1,'2018/11/01', '1', '3000'),
(2,'2018/10/01', '3', '5000'),
(3,'2018/10/01', '4', '6000'),
(4,'2018/11/02', '2', '2000'),
(5,'2018/11/15', '2', NULL);

select * from sales where amount < 5000;

select * from sales where amount >= 5000;

select sales_id, order_date, customer_id, 
amount * 1.1 from sales;

select sales_id, order_date, customer_id, amount
from sales where amount > 0;

select customer_id, customer_name
from customer where customer_name != '田中';

update sales
   set order_date = '2018/11/05', customer_id = 4
 where sales_id = 4;
 
delete from sales
where amount = null;