-- 会社
create table company(
    id int primary key
    , name varchar(50)
    , short_name varchar(20)
);

-- 研修生
create table student (
    id int primary key
    , name varchar(30)
    , kana varchar(30)
    , gender int -- 性別 1：男性、2：女性ß
    , company_id int
    , pg_score int -- PGのスコア
    , db_score int -- DBのスコア
);

-- companyデータ登録
insert into company(id, name, short_name)
values 
(1, '株式会社ABC', 'ABC')
, (2, 'EFG株式会社', 'EFG')
, (3, '株式会社HIJ', 'HIJ')
, (4, '株式会社KLM', 'KLM');

-- studentデータ登録


insert into student values(1,'黒木 れいな','クロキ レイナ',2,1,round(random() * 100), round(random() * 100));
insert into student values(2,'小島 戴三','コジマ タイゾウ',1,1,round(random() * 100), round(random() * 100));
insert into student values(3,'齋藤 奈緒美','サイトウ ナオミ',2,1,round(random() * 100), round(random() * 100));
insert into student values(4,'土屋 勝行','ツチヤ カツユキ',1,1,round(random() * 100), round(random() * 100));
insert into student values(5,'村山 直幸','ムラヤマ ナオユキ',1,1,round(random() * 100), round(random() * 100));
insert into student values(6,'松永 栄理子','マツナガ エリコ',2,1,round(random() * 100), round(random() * 100));
insert into student values(7,'田辺 春実','タナベ ハルミ',2,1,round(random() * 100), round(random() * 100));
insert into student values(8,'手塚 英造','テヅカ エイゾウ',1,1,round(random() * 100), round(random() * 100));
insert into student values(9,'柳沢 耕介','ヤナギサワ コウスケ',1,1,round(random() * 100), round(random() * 100));
insert into student values(10,'西田 鎮雄','ニシタ シズオ',1,1,round(random() * 100), round(random() * 100));
insert into student values(11,'渡辺 今朝雄','ワタナベ ケサオ',1,2,round(random() * 100), round(random() * 100));
insert into student values(12,'瀬戸 紀子','セト トシコ',2,2,round(random() * 100), round(random() * 100));
insert into student values(13,'杉田 澄夫','スギタ スミオ',1,2,round(random() * 100), round(random() * 100));
insert into student values(14,'山本 清名','ヤマモト セイナ',2,2,round(random() * 100), round(random() * 100));
insert into student values(15,'原 淳子','ハラ ジュンコ',2,2,round(random() * 100), round(random() * 100));
insert into student values(16,'山内 直広','ヤマウチ ナオヒロ',1,3,round(random() * 100), round(random() * 100));
insert into student values(17,'宮内 敬正','ミヤウチ ヨシマサ',1,3,round(random() * 100), round(random() * 100));
insert into student values(18,'林田 真希','ハヤシダ マキ',2,3,round(random() * 100), round(random() * 100));
insert into student values(19,'川原 菊子','カワハラ キクコ',2,5,round(random() * 100), round(random() * 100));
insert into student values(20,'大石 さやか','オオイシ サヤカ',2,5,round(random() * 100), round(random() * 100));

SELECT * FROM company;
SELECT * FROM student;

-- FROM句のないSQL
SELECT 'aaa', 10;

-- 四則演算
SELECT 10 + 20, 100 - 50, 10 * 10, 10 / 2;

-- エイリアス
SELECT 
name 企業名
, short_name AS 略称
FROM company;

-- PostgreSQLの場合
select name, pg_score, db_score
, (pg_score + db_score) 合計
, trunc((pg_score + db_score) / 2, 0) 平均
from student;

-- 1行コメント
/*
  複数行コメント
*/

SELECT 
name
-- , short_name  -- この行は無視される
FROM company

-- CASE式(めっちゃ使う！)
SELECT name
, CASE 
     WHEN gender = 1 THEN '男性'
     WHEN gender = 2 THEN '女性'
     ELSE 'その他'
END 性別
FROM student;

-- ORDER BY（昇順）
SELECT name, pg_score
FROM student
ORDER BY pg_score;

-- ORDER BY（降順）
SELECT name, pg_score
FROM student
ORDER BY (pg_score + db_score) DESC;
-- DESC (降順) ASC（昇順）

-- ORDER BY（pg_scoreの降順、db_scoreの昇順）
SELECT name, pg_score, db_score
FROM student
ORDER BY pg_score DESC, db_score;

-- 集約関数
SELECT
sum(pg_score) 合計, avg(pg_score) 平均
, max(pg_score) 最高, min(pg_score) 最低
, count(*) 件数
FROM student;

-- 集約関数
SELECT
gender
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY gender;

-- 集約関数
SELECT
company_id
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY company_id
ORDER BY company_id;

-- 集約関数
SELECT
company_id
, gender
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY company_id, gender
ORDER BY company_id, gender;

-- 集約関数
SELECT
company_id
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY company_id
HAVING avg(pg_score) >= 70;

-- 結合
SELECT s.name s_name
, c.name c_name
FROM student s
-- student sのsはエイリアス
INNER JOIN company c
ON s.company_id = c.id;


