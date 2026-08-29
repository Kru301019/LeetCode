-- Create the Courses table
CREATE TABLE Courses (
    student VARCHAR(255),
    class VARCHAR(255),
    PRIMARY KEY (student, class)
);

-- Populate the Courses table with the example data
INSERT INTO Courses (student, class) VALUES 
    ('A', 'Math'),
    ('B', 'English'),
    ('C', 'Math'),
    ('D', 'Biology'),
    ('E', 'Math'),
    ('F', 'Computer'),
    ('G', 'Math'),
    ('H', 'Math'),
    ('I', 'Math');

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;