-- Create the Enrollments table
CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    PRIMARY KEY (student_id, course_id)
);

-- Populate the Enrollments table
INSERT INTO Enrollments (student_id, course_id, grade) VALUES 
(2, 2, 95), (2, 3, 95), (1, 1, 90), (1, 2, 99), 
(3, 1, 80), (3, 2, 75), (3, 3, 82);

SELECT   subQuery.student_id,
         subQuery.course_id,
         subQuery.grade
FROM     (SELECT student_id,
                 course_id,
                 grade,
                 Row_number() OVER(PARTITION BY student_id ORDER BY grade DESC) AS ranking
          FROM   Enrollments) AS subQuery
WHERE    ranking = 1
ORDER BY subQuery.student_id;