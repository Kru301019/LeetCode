-- Create the Courses table
CREATE TABLE Courses (
    student VARCHAR(255),
    class VARCHAR(255),
    PRIMARY KEY (student, class)
);

-- Insert the example records
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

select c.class
from Courses c
group by c.class
having count(c.class) >= 5;