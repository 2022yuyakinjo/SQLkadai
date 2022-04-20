drop table tax_table;

-- 消費税テーブル
--* RestoreFromTempTable
create table tax_table (
  tax_id integer not null
  , tax_persentage integer not null
  , constraint tax_table_PKC primary key (tax_id)
) ;

drop table personal_table;

-- 個人テーブル
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id integer not null
  , time integer not null
  , date character varying not null
  , constraint personal_table_PKC primary key (id)
) ;

drop table pay_table;
-- 支払テーブル
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" character varying
  , "eat in" character varying
  , constraint pay_table_PKC primary key (id)
) ;

drop table casher_table;
-- レジテーブル
--* RestoreFromTempTable
create table casher_table (
  store_id integer not null
  , casher_code integer not null
  , staff_number integer not null
  , slip_number integer not null
  , constraint casher_table_PKC primary key (store_id)
) ;

drop table goods_table;
-- 商品テーブル
--* RestoreFromTempTable
create table goods_table (
  products_id integer not null
  , products_name character varying not null
  , values integer not null
  , tax_id integer
  , constraint goods_table_PKC primary key (products_id)
) ;

drop table branch_table;
-- 店舗テーブル
--* RestoreFromTempTable
create table branch_table (
  store_id integer not null
  , store_name character varying not null
  , branch_name character varying not null
  , address character varying not null
  , tel character varying not null
  , "postal code" character varying not null
  , constraint branch_table_PKC primary key (store_id)
) ;

comment on table tax_table is '消費税テーブル';
comment on column tax_table.tax_id is '消費税ID';
comment on column tax_table.tax_persentage is '税率';

comment on table personal_table is '個人テーブル';
comment on column personal_table.id is '個人ID';
comment on column personal_table.goods_id is '商品ID';
comment on column personal_table.time is '時間';
comment on column personal_table.date is '日付';

comment on table pay_table is '支払テーブル';
comment on column pay_table.id is '個人ID';
comment on column pay_table."way to pay" is '支払方法';
comment on column pay_table."eat in" is 'イートイン';

comment on table casher_table is 'レジテーブル';
comment on column casher_table.store_id is '店舗ID';
comment on column casher_table.casher_code is 'レジ番';
comment on column casher_table.staff_number is '責任者ナンバー';
comment on column casher_table.slip_number is '伝票番号';

comment on table goods_table is '商品テーブル';
comment on column goods_table.products_id is '商品ID';
comment on column goods_table.products_name is '商品名';
comment on column goods_table.values is '金額';
comment on column goods_table.tax_id is '消費税ID';

comment on table branch_table is '店舗テーブル';
comment on column branch_table.store_id is '店舗ID';
comment on column branch_table.store_name is '店名';
comment on column branch_table.branch_name is '店舗名';
comment on column branch_table.address is '住所';
comment on column branch_table.tel is '電話番号';
comment on column branch_table."postal code" is '郵便番号';

