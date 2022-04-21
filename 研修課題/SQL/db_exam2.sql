-- 1
select * from student
where grade = 1
and hometown = '“Œ‹ž';

--2
select * from student
where grade = 1
or student_name Like '%–{'
order by student_id desc;

--3 
select major_id, max(grade) from student
group by major_id
order by major_id asc;

--4 
select hometown, count(*) from student
group by hometown
having count(*)>= 2
order by count asc;

--5
select student_name, major_name
from student s join major c on s.major_id = c.major_id
order by major_name, student_name asc;

select * from student
select * from major

--6 
select student_id, student_name, hometown, major_name
from student s join major c on s.major_id = c.major_id
where hometown not in ('“Œ‹ž');

--7 ???
select student_id, student_name, grade
from student
where major_id in (select major_id from major
                    where major_name = '‰p•¶Šw');

--8
select student_id, student_name, major_id
from student
where major_id in (select major_id from student
                  group by major_id 
                  having count(*) >= 3)
order by major_id asc;



