
-- 消費税テーブル
--* RestoreFromTempTable
create table tax_table (
  tax_id integer not null
  , tax_persentage integer
  , constraint tax_table_PKC primary key (tax_id)
) ;

-- 個人テーブル
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id integer
  , time integer
  , constraint personal_table_PKC primary key (id)
) ;

-- 支払テーブル
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" character varying
  , "eat in" character varying
  , nebiki integer
  , constraint pay_table_PKC primary key (id)
) ;

-- レジテーブル
--* RestoreFromTempTable
create table casher_table (
  store_id integer not null
  , casher_code integer
  , staff_number integer
  , constraint casher_table_PKC primary key (store_id)
) ;

-- 商品テーブル
--* RestoreFromTempTable
create table goods_table (
  goods_id integer not null
  , goods_name character varying
  , value integer
  , tax_id integer not null
  , constraint goods_table_PKC primary key (goods_id)
) ;

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

comment on table tax_table is '消費税テーブル';
comment on column tax_table.tax_id is '消費税ID';
comment on column tax_table.tax_persentage is '税率';

comment on table personal_table is '個人テーブル';
comment on column personal_table.id is '個人ID';
comment on column personal_table.goods_id is '商品ID';
comment on column personal_table.time is '日付と時間';

comment on table pay_table is '支払テーブル';
comment on column pay_table.id is '個人ID';
comment on column pay_table."way to pay" is '支払方法';
comment on column pay_table."eat in" is 'イートイン';
comment on column pay_table.nebiki is '値引き';

comment on table casher_table is 'レジテーブル';
comment on column casher_table.store_id is '店舗ID';
comment on column casher_table.casher_code is 'レジ番';
comment on column casher_table.staff_number is '責任者ナンバー';

comment on table goods_table is '商品テーブル';
comment on column goods_table.goods_id is '商品ID';
comment on column goods_table.goods_name is '商品名';
comment on column goods_table.value is '金額';
comment on column goods_table.tax_id is '消費税ID';

comment on table branch_table is '店舗テーブル';
comment on column branch_table.store_id is '店舗ID';
comment on column branch_table.branch_name is '店舗名';
comment on column branch_table.address is '住所';
comment on column branch_table.tel is '電話番号';
comment on column branch_table.id is 'ID';
comment on column branch_table.store_name is '店名';


drop table branch_table;
