select year(Order_Date) Category, Category, sum(Sales) as sales
from master.dbo.SampleSuperstore_1
group by GROUPING SETS
(	
	(year(Order_Date)),
	(Category),
	(year(Order_Date), Category),
	()
		);


select year(Order_Date) Category, Category, sum(Sales) as sales
from master.dbo.SampleSuperstore_1
group by ROLLUP(year(Order_Date), Category);

select year(Order_Date) Category, Category, sum(Sales) as sales
from master.dbo.SampleSuperstore_1
group by cube(year(Order_Date), Category);