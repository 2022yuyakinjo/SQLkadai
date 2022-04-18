create table books (
 book_id int primary key,
 book_name varchar(10),
 teika int,
 publisher_date varchar(10),
 publisher_id int,
 author_id int
 );
 
insert into books
(book_id, book_name, teika, publisher_date, publisher_id, author_id)
 values
 (1001, '�l�R�̂Ђ݂�', 600, '2018/1/1', 101, 101),
 (1002, '���ɂ�������l', 600, '2020/4/1', 101, 101),
 (1003, '���̉�', 1100, '2015/5/2', 102, 102),
 (1004, '����', 750, '2012/3/4', 102, 103),
 (1005, '������', 3850, '2019/2/18', 102, 104),
 (1006, '���t', 800, '2005/12/12', 101, 104),
 (1007, '�����Ȃ����͂Ȃ�', 1800, '1992/7/7', 101, 105),
 (1008, '�����Ȃ��������', 2530, '2001/9/4', 102, 105);
 
 create table publisher(
 id int primary key,
 publisher_name varchar(10)
 );
 
 insert into publisher
 (id, publisher_name)
 values
 (101, '�e�N�m�o��'),
 (102, 'AxiZ����');
 
 
 create table author(
 id int primary key,
 author_name varchar(10)
 );
 
 insert into author(
 id, author_name)
 values
 (101, '���� ��'),
 (102, '�R�c ���Y'),
 (103, '��� ���Y'),
 (104, '��v�� �q��'),
 (105, '��c �O�Y');
