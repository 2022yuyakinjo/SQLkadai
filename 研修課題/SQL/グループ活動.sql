

-- 
--* RestoreFromTempTable
create table NEW_ENTITY5 (
  postal_code character varying not null
  , address character varying not null
  , constraint NEW_ENTITY5_PKC primary key (postal_code)
) ;

-- 
--* RestoreFromTempTable
create table NEW_ENTITY4 (
  position_id integer not null
  , position character varying not null
  , constraint NEW_ENTITY4_PKC primary key (position_id)
) ;

-- 
--* RestoreFromTempTable
create table NEW_ENTITY3 (
  department_id integer not null
  , department_name character varying not null
  , constraint NEW_ENTITY3_PKC primary key (department_id)
) ;

-- 
--* RestoreFromTempTable
create table NEW_ENTITY1 (
  branch_id integer not null
  , company_id integer not null
  , branch_name character varying not null
  , branch_tel character varying not null
  , fax character varying
  , "postal code" character varying not null
  , address_1 character varying not null
  , address_2 character varying
  , constraint NEW_ENTITY1_PKC primary key (branch_id,company_id)
) ;

-- 
--* RestoreFromTempTable
create table NEW_ENTITY2 (
  company_id integer not null
  , company_name character varying not null
  , company_logo character varying
  , url character varying
  , constraint NEW_ENTITY2_PKC primary key (company_id)
) ;

-- 個人テーブル
--* RestoreFromTempTable
create table individual (
  indivisual_id integer not null
  , name character varying not null
  , furigana character varying
  , company_id integer not null
  , "department=id" integer
  , "position=id" integer
  , email character varying not null
  , TEL character varying
  , constraint individual_PKC primary key (indivisual_id)
) ;

comment on column NEW_ENTITY5.postal_code is '郵便番号';
comment on column NEW_ENTITY5.address is '住所';

comment on column NEW_ENTITY4.position_id is '役職ID';
comment on column NEW_ENTITY4.position is '役職';

comment on column NEW_ENTITY3.department_id is '事業部ID';
comment on column NEW_ENTITY3.department_name is '事業部名';

comment on column NEW_ENTITY1.branch_id is '支社ID';
comment on column NEW_ENTITY1.company_id is '会社ID';
comment on column NEW_ENTITY1.branch_name is '支社名';
comment on column NEW_ENTITY1.branch_tel is '支社TEL';
comment on column NEW_ENTITY1.fax is 'FAX';
comment on column NEW_ENTITY1."postal code" is '郵便番号';
comment on column NEW_ENTITY1.address_1 is '番地';
comment on column NEW_ENTITY1.address_2 is 'それ以降';

comment on column NEW_ENTITY2.company_id is '会社ID';
comment on column NEW_ENTITY2.company_name is '会社名';
comment on column NEW_ENTITY2.company_logo is '会社ロゴ';
comment on column NEW_ENTITY2.url is 'URL';

comment on table individual is '個人テーブル';
comment on column individual.indivisual_id is '個人ID';
comment on column individual.name is '名前';
comment on column individual.furigana is 'ふりがな';
comment on column individual.company_id is '会社ID';
comment on column individual."department=id" is '事業部ID';
comment on column individual."position=id" is '役職ID';
comment on column individual.email is 'メルアド';
comment on column individual.TEL is 'TEL';

