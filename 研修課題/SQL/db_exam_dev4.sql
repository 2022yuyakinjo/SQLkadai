--1-1
CREATE INDEX question1 ON major (major_name);

--1-2
CREATE INDEX question2 ON student (student_name);

--1-3
CREATE INDEX question3 ON student (grade, student_name);

--2
create view v_student as 
SELECT student_id, student_name, hometown, major_name FROM student s
join major c on c.major_id = s.major_id
where hometown not in ('“Œ‹ž')
order by major_name asc;

SELECT * from v_student


--3
CREATE MATERIALIZED VIEW mv_student AS
SELECT * FROM v_student;


--4
CREATE OR REPLACE FUNCTION question(price decimal) RETURNS integer
 LANGUAGE plpgsql
AS $function$
declare

begin
    return trunc(price * 1.1, 0);
end;$function$;
    select sales_id, order_date, c.customer_id, amount, question(amount)
    from sales c join customer s on c.customer_id = s.customer_id
    where sales_id < 6;

--5
create table users(
id serial primary key,
name varchar(50) );

ALTER SEQUENCE users_id_seq RESTART WITH 101
;
SELECT
     s.sequencename AS sequence_name
FROM pg_sequences AS s
LEFT OUTER JOIN pg_class AS c 
ON s.sequencename = c.relname
WHERE s.schemaname=current_schema()
ORDER BY s.sequencename;

insert into users
(name) values('ŽR“c');

select * from users;
