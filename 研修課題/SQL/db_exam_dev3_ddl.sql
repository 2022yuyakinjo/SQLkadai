-- Project Name : noname
-- Date/Time    : 2022/04/18 19:13:20
-- Author       : axiz
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << ���ӁI�I >>
  BackupToTempTable, RestoreFromTempTable�^�����߂��t������Ă��܂��B
  ����ɂ��Adrop table, create table ����f�[�^���c��܂��B
  ���̋@�\�͈ꎞ�I�� $$TableName �̂悤�Ȉꎞ�e�[�u�����쐬���܂��B
  ���̋@�\�� A5:SQL Mk-2�ł̂ݗL���ł��邱�Ƃɒ��ӂ��Ă��������B
*/

-- author
--* RestoreFromTempTable
create table author (
  id integer not null
  , author_name character varying(10)
  , constraint author_PKC primary key (id)
) ;

-- books
--* RestoreFromTempTable
create table books (
  book_id integer not null
  , book_name character varying(10)
  , teika integer
  , publisher_date character varying(10)
  , publisher_id integer
  , author_id integer
  , constraint books_PKC primary key (book_id)
) ;

-- publisher
--* RestoreFromTempTable
create table publisher (
  id integer not null
  , publisher_name character varying(10)
  , constraint publisher_PKC primary key (id)
) ;

comment on table author is 'author';
comment on column author.id is 'id';
comment on column author.author_name is 'author_name';

comment on table books is 'books';
comment on column books.book_id is 'book_id';
comment on column books.book_name is 'book_name';
comment on column books.teika is 'teika';
comment on column books.publisher_date is 'publisher_date';
comment on column books.publisher_id is 'publisher_id';
comment on column books.author_id is 'author_id';

comment on table publisher is 'publisher';
comment on column publisher.id is 'id';
comment on column publisher.publisher_name is 'publisher_name';

