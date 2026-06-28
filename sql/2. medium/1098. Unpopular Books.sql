-- Create the Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    name VARCHAR(255),
    available_from DATE
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    dispatch_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Populate the Books table
INSERT INTO Books VALUES 
(1, 'Kalila And Demna', '2010-01-01'),
(2, '28 Letters', '2012-05-12'),
(3, 'The Hobbit', '2019-06-10'),
(4, '13 Reasons Why', '2019-06-01'),
(5, 'The Hunger Games', '2008-09-21');

-- Populate the Orders table
INSERT INTO Orders VALUES 
(1, 1, 2, '2018-07-26'),
(2, 1, 1, '2018-11-05'),
(3, 3, 8, '2019-06-11'),
(4, 4, 6, '2019-06-05'),
(5, 4, 5, '2019-06-20'),
(6, 5, 9, '2009-02-02'),
(7, 5, 8, '2010-04-13');





SELECT book_id, Books.name
FROM   Books
WHERE  available_from <= '2019-05-23'
       AND book_id NOT IN (SELECT   book_id
                           FROM     Orders o
                           WHERE    dispatch_date BETWEEN '2018-06-23' AND '2019-06-23'
                           GROUP BY book_id
                           HAVING   Sum(quantity) >= 10)
