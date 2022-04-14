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
(1, '�p���w'), (2, '���p�Ȋw'), (3, '���H�w'), (4, '�o�ϊw'), (5, '���ە���');

insert into student values
(1,'�R�c', '1', '�{��','1'),
(2, '�c��', '1', '����','2'),
(3,'����', '1', '����', '3'),
(4,'���', '2', '������', '1'),
(5,'����', '2', '�k�C��', '2'),
(6,'�g�c', '2', '����','1'),
(7,'�ɓ�', '3', '������', '2'),
(8,'�R�{', '3', '�_�ސ�', '3'),
(9,'�X�{', '4', '����', '4'),
(10,'�g��', '4', '�_�ސ�', '5');

select * from student where grade=1;

select * from student where hometown='����';

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
(1,'�c��'), (2,'���'), (3,'�c��'), (4,'�c��');

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
from customer where customer_name != '�c��';

update sales
   set order_date = '2018/11/05', customer_id = 4
 where sales_id = 4;
 
delete from sales
where amount = null;

