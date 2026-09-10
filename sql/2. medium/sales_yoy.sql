WITH cte
     AS ( SELECT   Year(Order_Date) AS years,
				   category,
                   Sum(Sales)       AS currunt_sales
          FROM     master.dbo.SampleSuperstore_1
          GROUP BY Year(Order_Date), category ), 
     cte_1
     AS ( SELECT years,
				 category,
                 Lag(currunt_sales,1) OVER(partition by category ORDER BY years) AS previous_sales,
                 currunt_sales
          FROM   cte) 
  SELECT   *,
           ((currunt_sales - previous_sales) / previous_sales) * 100 as yoy
  FROM     cte_1
  ORDER BY years 