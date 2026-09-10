CREATE TABLE SampleSuperstore_2 (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,4),
    profit DECIMAL(10,2)
);

CREATE TABLE SampleSuperstore_1 (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(12,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(12,2)
);

BULK INSERT dbo.SampleSuperstore_1
FROM 'C:\Users\krujo\Desktop\Datasets\Superstore\Sample - Superstore.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

BULK INSERT dbo. SampleSuperstore_2
FROM 'C:\Users\krujo\Desktop\Datasets\Superstore\SampleSuperstore.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

WITH yearly_sales
     AS ( SELECT   Month(Order_Date) AS months,
				   Category,
                   Sum(CASE
                         WHEN Year(Order_Date) = 2016
                         THEN Sales
                       END)          AS sales_2016,
                   Sum(CASE
                         WHEN Year(Order_Date) = 2017
                         THEN Sales
                       END)          AS sales_2017
          FROM     SampleSuperstore_1
          WHERE    Year(Order_Date) IN (2016, 2017)
          GROUP BY Month(Order_Date),
                   Category) 
  SELECT   *,
           ((sales_2016 - sales_2017) / (sales_2016)) * 100 yearly_sales,
		   DENSE_RANK() over(partition by category order by sales_2016 desc) sales_rank
  FROM     yearly_sales
  ORDER BY Category;

