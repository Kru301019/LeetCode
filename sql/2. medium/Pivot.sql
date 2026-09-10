select year(Order_Date) as years,
	   Sum(case when Category = 'Office Supplies' then Sales end) as Office_Supplies,
	   Sum(case when Category = 'Furniture' then Sales end) as Furniture,
	   Sum(case when Category = 'Technology' then Sales end) as Technology
from master.dbo.SampleSuperstore_1
group by year(Order_Date)
order by year(Order_Date)