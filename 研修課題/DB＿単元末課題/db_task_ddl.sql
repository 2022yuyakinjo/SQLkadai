
-- ����Ńe�[�u��
--* RestoreFromTempTable
create table tax_table (
  tax_id integer not null
  , tax_persentage integer
  , constraint tax_table_PKC primary key (tax_id)
) ;

-- �l�e�[�u��
--* RestoreFromTempTable
create table personal_table (
  id integer not null
  , goods_id integer
  , time integer
  , constraint personal_table_PKC primary key (id)
) ;

-- �x���e�[�u��
--* RestoreFromTempTable
create table pay_table (
  id integer not null
  , "way to pay" character varying
  , "eat in" character varying
  , nebiki integer
  , constraint pay_table_PKC primary key (id)
) ;

-- ���W�e�[�u��
--* RestoreFromTempTable
create table casher_table (
  store_id integer not null
  , casher_code integer
  , staff_number integer
  , constraint casher_table_PKC primary key (store_id)
) ;

-- ���i�e�[�u��
--* RestoreFromTempTable
create table goods_table (
  goods_id integer not null
  , goods_name character varying
  , value integer
  , tax_id integer not null
  , constraint goods_table_PKC primary key (goods_id)
) ;

-- �X�܃e�[�u��
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

comment on table tax_table is '����Ńe�[�u��';
comment on column tax_table.tax_id is '�����ID';
comment on column tax_table.tax_persentage is '�ŗ�';

comment on table personal_table is '�l�e�[�u��';
comment on column personal_table.id is '�lID';
comment on column personal_table.goods_id is '���iID';
comment on column personal_table.time is '���t�Ǝ���';

comment on table pay_table is '�x���e�[�u��';
comment on column pay_table.id is '�lID';
comment on column pay_table."way to pay" is '�x�����@';
comment on column pay_table."eat in" is '�C�[�g�C��';
comment on column pay_table.nebiki is '�l����';

comment on table casher_table is '���W�e�[�u��';
comment on column casher_table.store_id is '�X��ID';
comment on column casher_table.casher_code is '���W��';
comment on column casher_table.staff_number is '�ӔC�҃i���o�[';

comment on table goods_table is '���i�e�[�u��';
comment on column goods_table.goods_id is '���iID';
comment on column goods_table.goods_name is '���i��';
comment on column goods_table.value is '���z';
comment on column goods_table.tax_id is '�����ID';

comment on table branch_table is '�X�܃e�[�u��';
comment on column branch_table.store_id is '�X��ID';
comment on column branch_table.branch_name is '�X�ܖ�';
comment on column branch_table.address is '�Z��';
comment on column branch_table.tel is '�d�b�ԍ�';
comment on column branch_table.id is 'ID';
comment on column branch_table.store_name is '�X��';


drop table branch_table;
