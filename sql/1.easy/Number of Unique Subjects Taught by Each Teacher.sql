CREATE TABLE teacher (
    teacher_id int,
    subject_id int,
    dept_id int,
    PRIMARY KEY(subject_id, dept_id)
);

INSERT INTO Teacher (teacher_id, subject_id, dept_id)
VALUES
    (1, 2, 3),
    (1, 2, 4),
    (1, 3, 3),
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 1);

select T.teacher_id, count(distinct T.subject_id) as uniqe_sub
from teacher T
group by T.teacher_id;
