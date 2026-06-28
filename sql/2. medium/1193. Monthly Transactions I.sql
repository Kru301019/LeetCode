-- Create the Transactions table
CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(50),
    state VARCHAR(20), -- SSMS uses VARCHAR for ENUM-like restrictions
    amount INT,
    trans_date DATE
);

-- Adding a constraint to simulate ENUM behavior in SQL Server
ALTER TABLE Transactions 
ADD CONSTRAINT CHK_State CHECK (state IN ('approved', 'declined'));

INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES 
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

SELECT 
    FORMAT(trans_date, 'yyyy-MM') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY FORMAT(trans_date, 'yyyy-MM'), country;

select 
	country, state, amount, trans_date,
	CASE WHEN state = 'approved' THEN amount ELSE 0 END
FROM Transactions