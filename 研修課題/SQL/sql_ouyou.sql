-- ���
create table company(
    id int primary key
    , name varchar(50)
    , short_name varchar(20)
);

-- ���C��
create table student (
    id int primary key
    , name varchar(30)
    , kana varchar(30)
    , gender int -- ���� 1�F�j���A2�F����s
    , company_id int
    , pg_score int -- PG�̃X�R�A
    , db_score int -- DB�̃X�R�A
);

-- company�f�[�^�o�^
insert into company(id, name, short_name)
values 
(1, '�������ABC', 'ABC')
, (2, 'EFG�������', 'EFG')
, (3, '�������HIJ', 'HIJ')
, (4, '�������KLM', 'KLM');

-- student�f�[�^�o�^
create table student

insert into student values(1,'���� �ꂢ��','�N���L ���C�i',2,1,round(random() * 100), round(random() * 100));
insert into student values(2,'���� �ՎO','�R�W�} �^�C�]�E',1,1,round(random() * 100), round(random() * 100));
insert into student values(3,'�V�� �ޏ���','�T�C�g�E �i�I�~',2,1,round(random() * 100), round(random() * 100));
insert into student values(4,'�y�� ���s','�c�`�� �J�c���L',1,1,round(random() * 100), round(random() * 100));
insert into student values(5,'���R ���K','�������} �i�I���L',1,1,round(random() * 100), round(random() * 100));
insert into student values(6,'���i �h���q','�}�c�i�K �G���R',2,1,round(random() * 100), round(random() * 100));
insert into student values(7,'�c�� �t��','�^�i�x �n���~',2,1,round(random() * 100), round(random() * 100));
insert into student values(8,'��� �p��','�e�d�J �G�C�]�E',1,1,round(random() * 100), round(random() * 100));
insert into student values(9,'���� �k��','���i�M�T�� �R�E�X�P',1,1,round(random() * 100), round(random() * 100));
insert into student values(10,'���c ���Y','�j�V�^ �V�Y�I',1,1,round(random() * 100), round(random() * 100));
insert into student values(11,'�n�� �����Y','���^�i�x �P�T�I',1,2,round(random() * 100), round(random() * 100));
insert into student values(12,'���� �I�q','�Z�g �g�V�R',2,2,round(random() * 100), round(random() * 100));
insert into student values(13,'���c ���v','�X�M�^ �X�~�I',1,2,round(random() * 100), round(random() * 100));
insert into student values(14,'�R�{ ����','���}���g �Z�C�i',2,2,round(random() * 100), round(random() * 100));
insert into student values(15,'�� �~�q','�n�� �W�����R',2,2,round(random() * 100), round(random() * 100));
insert into student values(16,'�R�� ���L','���}�E�` �i�I�q��',1,3,round(random() * 100), round(random() * 100));
insert into student values(17,'�{�� �h��','�~���E�` ���V�}�T',1,3,round(random() * 100), round(random() * 100));
insert into student values(18,'�ѓc �^��','�n���V�_ �}�L',2,3,round(random() * 100), round(random() * 100));
insert into student values(19,'�쌴 �e�q','�J���n�� �L�N�R',2,5,round(random() * 100), round(random() * 100));
insert into student values(20,'��� ���₩','�I�I�C�V �T���J',2,5,round(random() * 100), round(random() * 100));

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

-- �W��֐�
SELECT
company_id
, sum(pg_score) PG���v
, avg(pg_score) PG����
FROM student
GROUP BY company_id
ORDER BY company_id;

-- �W��֐�
SELECT
company_id
, gender
, sum(pg_score) PG���v
, avg(pg_score) PG����
FROM student
GROUP BY company_id, gender
ORDER BY company_id, gender;

-- �W��֐�
SELECT
company_id
, sum(pg_score) PG���v
, avg(pg_score) PG����
FROM student
GROUP BY company_id
HAVING avg(pg_score) >= 70;

-- ����
SELECT s.name s_name
, c.name c_name
FROM student s
INNER JOIN company c
ON s.company_id = c.id;

