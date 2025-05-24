-- Create Prices table
CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

-- Create UnitsSold table
CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);

-- Insert data into Prices table
INSERT INTO
    Prices (product_id, start_date, end_date, price)
VALUES
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);

-- Insert data into UnitsSold table
INSERT INTO
    UnitsSold (product_id, purchase_date, units)
VALUES
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

SELECT
    P.product_id,
    '£ ' || ROUND(
        sum(P.price * us.units) / sum(US.units) :: numeric,
        2
    ) AS averagePrice
FROM
    Prices P
    JOIN UnitsSold US ON (
        us.purchase_date BETWEEN P.start_date
        AND P.end_date
    )
    AND us.product_id = P.product_id
GROUP BY
    P.product_id
ORDER BY
    P.product_id