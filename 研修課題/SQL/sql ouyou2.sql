SELECT * FROM company;
SELECT * FROM student;

-- FROM��̂Ȃ�SQL
SELECT 'aaa', 10;

-- �l�����Z
SELECT 10 + 20, 100 - 50, 10 * 10, 10 / 2;

-- �G�C���A�X
SELECT 
name ��Ɩ�
, short_name AS ����
FROM company;

-- PostgreSQL�̏ꍇ
select name, pg_score, db_score
, (pg_score + db_score) ���v
, trunc((pg_score + db_score) / 2, 0) ����
from student;

-- 1�s�R�����g
/*
  �����s�R�����g
*/

SELECT 
name
-- , short_name  -- ���̍s�͖��������
FROM company

-- CASE��(�߂�����g���I)
SELECT name
, CASE 
     WHEN gender = 1 THEN '�j��'
     WHEN gender = 2 THEN '����'
     ELSE '���̑�'
END ����
FROM student;

-- ORDER BY�i�����j
SELECT name, pg_score
FROM student
ORDER BY pg_score;

-- ORDER BY�i�~���j
SELECT name, pg_score
FROM student
ORDER BY (pg_score + db_score) DESC;
-- DESC (�~��) ASC�i�����j

-- ORDER BY�ipg_score�̍~���Adb_score�̏����j
SELECT name, pg_score, db_score
FROM student
ORDER BY pg_score DESC, db_score;

-- �W��֐�
SELECT
sum(pg_score) ���v, avg(pg_score) ����
, max(pg_score) �ō�, min(pg_score) �Œ�
, count(*) ����
FROM student;

-- �W��֐�
SELECT
gender
, sum(pg_score) PG���v
, avg(pg_score) PG����
FROM student
GROUP BY gender;

