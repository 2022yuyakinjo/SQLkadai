-- 店舗テーブル
--* RestoreFromTempTable
create table branch_table (
  store_id integer not null
  , branch_name varchar(20)
  , address varchar(20)
  , tel varchar(20)
  , id integer
  , store_name varchar(20)
  , constraint branch_table_PKC primary key (store_id)
) ;

drop table    ;

insert into branch_table
values(
    1, 
    '日本橋店', 
    '東京都中央区日本橋1-1-1', 
    '03-111-2222', 
    '2',
    'Lonely'
);

delete from branch_table;

select * from branch_table;







-- 商品テーブル
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id varchar
  , time varchar
  , constraint personal_table_PKC primary key (id)
) ;

insert into personal_table
values(
    1,
    '1-1',
    '2022�N4��1���i���j19:00'
);


select * from personal_table;


-- 支払テーブル
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" varchar
  , "eat in" varchar
  , nebiki integer
  , constraint pay_table_PKC primary key (id)
) ;


