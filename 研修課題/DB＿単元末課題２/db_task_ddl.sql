drop table tax_table;

-- ΑοΕe[u
--* RestoreFromTempTable
create table tax_table (
  tax_id integer not null
  , tax_persentage integer not null
  , constraint tax_table_PKC primary key (tax_id)
) ;

drop table personal_table;

-- Βle[u
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id integer not null
  , time integer not null
  , date character varying not null
  , constraint personal_table_PKC primary key (id)
) ;

drop table pay_table;
-- x₯e[u
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" character varying
  , "eat in" character varying
  , constraint pay_table_PKC primary key (id)
) ;

drop table casher_table;
-- We[u
--* RestoreFromTempTable
create table casher_table (
  store_id integer not null
  , casher_code integer not null
  , staff_number integer not null
  , slip_number integer not null
  , constraint casher_table_PKC primary key (store_id)
) ;

drop table goods_table;
-- €ie[u
--* RestoreFromTempTable
create table goods_table (
  products_id integer not null
  , products_name character varying not null
  , values integer not null
  , tax_id integer
  , constraint goods_table_PKC primary key (products_id)
) ;

drop table branch_table;
-- Xάe[u
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

comment on table tax_table is 'ΑοΕe[u';
comment on column tax_table.tax_id is 'ΑοΕID';
comment on column tax_table.tax_persentage is 'Ε¦';

comment on table personal_table is 'Βle[u';
comment on column personal_table.id is 'ΒlID';
comment on column personal_table.goods_id is '€iID';
comment on column personal_table.time is 'Τ';
comment on column personal_table.date is 'ϊt';

comment on table pay_table is 'x₯e[u';
comment on column pay_table.id is 'ΒlID';
comment on column pay_table."way to pay" is 'x₯ϋ@';
comment on column pay_table."eat in" is 'C[gC';

comment on table casher_table is 'We[u';
comment on column casher_table.store_id is 'XάID';
comment on column casher_table.casher_code is 'WΤ';
comment on column casher_table.staff_number is 'ΣC?io[';
comment on column casher_table.slip_number is '`[Τ';

comment on table goods_table is '€ie[u';
comment on column goods_table.products_id is '€iID';
comment on column goods_table.products_name is '€iΌ';
comment on column goods_table.values is 'ΰz';
comment on column goods_table.tax_id is 'ΑοΕID';

comment on table branch_table is 'Xάe[u';
comment on column branch_table.store_id is 'XάID';
comment on column branch_table.store_name is 'XΌ';
comment on column branch_table.branch_name is 'XάΌ';
comment on column branch_table.address is 'Z';
comment on column branch_table.tel is 'dbΤ';
comment on column branch_table."postal code" is 'XΦΤ';

