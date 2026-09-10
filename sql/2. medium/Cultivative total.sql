WITH MonthlySales AS (
    SELECT 
        MONTH(Order_Date) AS Order_Month,
        SUM(Sales) AS Total_Sales
    FROM master.dbo.SampleSuperstore_1
    GROUP BY MONTH(Order_Date)
)
SELECT 
    Order_Month,
    Total_Sales,
    SUM(Total_Sales) OVER (
		partition by (Order_Month - 1) / 3
        ORDER BY Order_Month 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS Rolling_3_Month_Total
FROM MonthlySales;

WITH MonthlySales AS (
    SELECT 
        MONTH(Order_Date) AS Order_Month,
        SUM(Sales) AS Total_Sales
    FROM master.dbo.SampleSuperstore_1
    GROUP BY MONTH(Order_Date)
)
SELECT 
    Order_Month,
    Total_Sales,
    SUM(Total_Sales) OVER (
		partition by (Order_Month - 1) / 3
        ORDER BY Order_Month 
        ROWS BETWEEN  CURRENT ROW and 2 following
    ) AS Rolling_3_Month_Total
FROM MonthlySales;

