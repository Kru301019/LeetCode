-- 1. Create the Candidate table
CREATE TABLE Candidate (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- 2. Create the Vote table
CREATE TABLE Vote (
    -- Use IDENTITY(1,1) for auto-increment in SQL Server
    id INT PRIMARY KEY IDENTITY(1,1),
    candidateId INT,
    FOREIGN KEY (candidateId) REFERENCES Candidate(id)
);

-- 3. Populate Candidate table
INSERT INTO Candidate (id, name) VALUES 
(1, 'A'), (2, 'B'), (3, 'C'), (4, 'D'), (5, 'E');

-- 4. Populate Vote table
INSERT INTO Vote (candidateId) VALUES 
(2), (4), (3), (2), (5);

select c.name
from Candidate c
where c.id in (

select top 1 v.candidateId
from Vote v
group by v.candidateId
order by COUNT(v.candidateId) desc );