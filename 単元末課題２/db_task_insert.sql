-- ����Ńe�[�u��
--* RestoreFromTempTable
create table tax_table (
  tax_id integer not null
  , tax_persentage integer not null
  , constraint tax_table_PKC primary key (tax_id)
) ;

delete from tax_table;
insert into tax_table
values(1, 8),
       (2, 10);
       
select * from tax_table;

drop table personal_table;
-- �l�e�[�u��
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id integer not null
  , time varchar not null
  , date character varying not null
  , constraint personal_table_PKC primary key (id)
) ;

insert into personal_table
values(
       1,
       2,
       '19:00',
       '2022�N4��1��(��)'
       );
       
select * from personal_table;
     

drop table pay_table;
-- �x���e�[�u��
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" character varying
  , constraint pay_table_PKC primary key (id)
) ;

delete from pay_table;
insert into pay_table
values(1,
       'Paypay�x��'
       );
       
select * from pay_table;
       

-- ���W�e�[�u��
--* RestoreFromTempTable
create table casher_table (
  store_id integer not null
  , casher_code integer not null
  , staff_number integer not null
  , slip_number integer not null
  , constraint casher_table_PKC primary key (store_id)
) ;

insert into casher_table
values(
       1,
       1,
       1,
       1
       );

select * from casher_table;

drop table goods_table;


drop table goods_table;
-- ���i�e�[�u��
--* RestoreFromTempTable
create table goods_table (
  products_id integer not null
  , products_name character varying not null
  , cost varchar not null
  , tax_id integer
  , constraint goods_table_PKC primary key (products_id)
) ;

insert into goods_table
values(1, '����͂��V�R��', 100, 1),
      (2, '�c�i�}�����ɂ���', 120, 1),
      (3, '�t�@�u���[�Y', 400, 2),
      (4, '���W��', 3, 2);
       
select * from goods_table;


drop table branch_table;
-- �X�܃e�[�u��
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

delete from branch_table;

insert into branch_table
values(
       1,
       'LonelyMart',
       '���{���X',
       '�����s��������{��1-1-1',
       '03-111-2222',
       '103-0027'
       );
       
select * from branch_table;
