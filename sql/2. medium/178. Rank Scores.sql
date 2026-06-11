-- Create the Scores table
CREATE TABLE Scores (
    id INT PRIMARY KEY,
    score DECIMAL(3, 2)
);

-- Populate the Scores table
INSERT INTO Scores (id, score) VALUES 
(1, 3.50),
(2, 3.65),
(3, 4.00),
(4, 3.85),
(5, 4.00),
(6, 3.65);

select	
	  score,
	  DENSE_RANK() over(order by score desc) as [rank]
from Scores;