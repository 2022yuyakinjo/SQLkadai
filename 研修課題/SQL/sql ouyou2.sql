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

