CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);

CREATE TABLE subjects(
    subject_name varchar(255)
);

CREATE TABLE Examinations(
    student_id int,
    subject_name varchar(255)
);



ALTER TABLE subjects
ADD CONSTRAINT pk_subject_name PRIMARY KEY (subject_name);

INSERT INTO Examinations (student_id, subject_name)
VALUES 
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

INSERT INTO Subjects (subject_name)
VALUES 
('Math'),
('Physics'),
('Programming');

INSERT INTO Students (student_id, student_name)
VALUES 
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

leetcode=# select s.student_id,s.student_name,sub.subject_name
from Students s
cross join subjects sub;
 student_id | student_name | subject_name 
------------+--------------+--------------
          1 | Alice        | Math
          2 | Bob          | Math
         13 | John         | Math
          6 | Alex         | Math
          1 | Alice        | Physics
          2 | Bob          | Physics
         13 | John         | Physics
          6 | Alex         | Physics
          1 | Alice        | Programming
          2 | Bob          | Programming
         13 | John         | Programming
          6 | Alex         | Programming
(12 rows)


select s.student_id,s.student_name, sub.subject_name, COALESCE(count(e.subject_name),0) as attended
from Students s
cross join subjects sub
left join Examinations e on e.student_id = s.student_id and sub.subject_name = e.subject_name
GROUP BY s.student_id, e.subject_name,sub.subject_name
order BY s.student_id asc;

with cross_table as (
    select s.student_id,s.student_name, sub.subject_name
    from Students as s
    cross join subjects as sub 
)
select CT.student_id,CT.student_name, CT.subject_name, count(E.subject_name)
from Examinations as E 
right Join cross_table as CT on E.student_id = CT.student_id and E.subject_name = CT.subject_name
GROUP by CT.student_id, CT.student_name, CT.subject_name
order by CT.student_id,CT.student_name;