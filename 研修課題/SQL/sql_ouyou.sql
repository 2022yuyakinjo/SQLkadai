-- ïÐ
create table company(
    id int primary key
    , name varchar(50)
    , short_name varchar(20)
);

-- ¤C¶
create table student (
    id int primary key
    , name varchar(30)
    , kana varchar(30)
    , gender int -- «Ê 1Fj«A2F«s
    , company_id int
    , pg_score int -- PGÌXRA
    , db_score int -- DBÌXRA
);

-- companyf[^o^
insert into company(id, name, short_name)
values 
(1, '®ïÐABC', 'ABC')
, (2, 'EFG®ïÐ', 'EFG')
, (3, '®ïÐHIJ', 'HIJ')
, (4, '®ïÐKLM', 'KLM');

-- studentf[^o^
create table student

insert into student values(1,'Ø ê¢È','NL Ci',2,1,round(random() * 100), round(random() * 100));
insert into student values(2,'¬ ÕO','RW} ^C]E',1,1,round(random() * 100), round(random() * 100));
insert into student values(3,'âV¡ Þü','TCgE iI~',2,1,round(random() * 100), round(random() * 100));
insert into student values(4,'y® s','c` JcL',1,1,round(random() * 100), round(random() * 100));
insert into student values(5,'ºR ¼K','} iIL',1,1,round(random() * 100), round(random() * 100));
insert into student values(6,'¼i hq','}ciK GR',2,1,round(random() * 100), round(random() * 100));
insert into student values(7,'cÓ tÀ','^ix n~',2,1,round(random() * 100), round(random() * 100));
insert into student values(8,'èË p¢','edJ GC]E',1,1,round(random() * 100), round(random() * 100));
insert into student values(9,'öò kî','iMT REXP',1,1,round(random() * 100), round(random() * 100));
insert into student values(10,'¼c ÁY','jV^ VYI',1,1,round(random() * 100), round(random() * 100));
insert into student values(11,'nÓ ¡©Y','^ix PTI',1,2,round(random() * 100), round(random() * 100));
insert into student values(12,'£Ë Iq','Zg gVR',2,2,round(random() * 100), round(random() * 100));
insert into student values(13,'c v','XM^ X~I',1,2,round(random() * 100), round(random() * 100));
insert into student values(14,'R{ ´¼','}g ZCi',2,2,round(random() * 100), round(random() * 100));
insert into student values(15,'´ ~q','n WR',2,2,round(random() * 100), round(random() * 100));
insert into student values(16,'Rà ¼L','}E` iIq',1,3,round(random() * 100), round(random() * 100));
insert into student values(17,'{à h³','~E` V}T',1,3,round(random() * 100), round(random() * 100));
insert into student values(18,'Ñc ^ó','nV_ }L',2,3,round(random() * 100), round(random() * 100));
insert into student values(19,'ì´ eq','Jn LNR',2,5,round(random() * 100), round(random() * 100));
insert into student values(20,'åÎ ³â©','IICV TJ',2,5,round(random() * 100), round(random() * 100));

SELECT * FROM company;
SELECT * FROM student;

-- FROMåÌÈ¢SQL
SELECT 'aaa', 10;

-- l¥Z
SELECT 10 + 20, 100 - 50, 10 * 10, 10 / 2;

-- GCAX
SELECT 
name éÆ¼
, short_name AS ªÌ
FROM company;

-- PostgreSQLÌê
select name, pg_score, db_score
, (pg_score + db_score) v
, trunc((pg_score + db_score) / 2, 0) ½Ï
from student;

-- 1sRg
/*
  ¡sRg
*/

SELECT 
name
-- , short_name  -- ±ÌsÍ³³êé
FROM company

-- CASE®(ßÁ¿ág¤I)
SELECT name
, CASE 
     WHEN gender = 1 THEN 'j«'
     WHEN gender = 2 THEN '«'
     ELSE '»Ì¼'
END «Ê
FROM student;

-- ORDER BYi¸j
SELECT name, pg_score
FROM student
ORDER BY pg_score;

-- ORDER BYi~j
SELECT name, pg_score
FROM student
ORDER BY (pg_score + db_score) DESC;
-- DESC (~) ASCi¸j

-- ORDER BYipg_scoreÌ~Adb_scoreÌ¸j
SELECT name, pg_score, db_score
FROM student
ORDER BY pg_score DESC, db_score;

-- WñÖ
SELECT
sum(pg_score) v, avg(pg_score) ½Ï
, max(pg_score) Å, min(pg_score) Åá
, count(*) 
FROM student;

-- WñÖ
SELECT
gender
, sum(pg_score) PGv
, avg(pg_score) PG½Ï
FROM student
GROUP BY gender;

-- WñÖ
SELECT
company_id
, sum(pg_score) PGv
, avg(pg_score) PG½Ï
FROM student
GROUP BY company_id
ORDER BY company_id;

-- WñÖ
SELECT
company_id
, gender
, sum(pg_score) PGv
, avg(pg_score) PG½Ï
FROM student
GROUP BY company_id, gender
ORDER BY company_id, gender;

-- WñÖ
SELECT
company_id
, sum(pg_score) PGv
, avg(pg_score) PG½Ï
FROM student
GROUP BY company_id
HAVING avg(pg_score) >= 70;

-- 
SELECT s.name s_name
, c.name c_name
FROM student s
INNER JOIN company c
ON s.company_id = c.id;

