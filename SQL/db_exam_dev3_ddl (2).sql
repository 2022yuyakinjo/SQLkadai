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
 (1001, 'ネコのひみつ', 600, '2018/1/1', 101, 101),
 (1002, '犬にたかられる人', 600, '2020/4/1', 101, 101),
 (1003, '星の歌', 1100, '2015/5/2', 102, 102),
 (1004, '凹凸', 750, '2012/3/4', 102, 103),
 (1005, 'こころ', 3850, '2019/2/18', 102, 104),
 (1006, '教師', 800, '2005/12/12', 101, 104),
 (1007, '欠けない月はない', 1800, '1992/7/7', 101, 105),
 (1008, '明けない夜もある', 2530, '2001/9/4', 102, 105);
 
 create table publisher(
 id int primary key,
 publisher_name varchar(10)
 );
 
 insert into publisher
 (id, publisher_name)
 values
 (101, 'テクノ出版'),
 (102, 'AxiZ文庫');
 
 
 create table author(
 id int primary key,
 author_name varchar(10)
 );
 
 insert into author(
 id, author_name)
 values
 (101, '阿句 静'),
 (102, '山田 太郎'),
 (103, '鈴木 次郎'),
 (104, '手久野 子亜'),
 (105, '坂田 三郎');
