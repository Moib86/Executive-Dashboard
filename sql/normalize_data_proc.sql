use Executive_Dashboard

-----------------------------------------------------------------------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason		| Proc will break down the stagid data and add to the dbo tables the values that need to be added
-----------------------------------------------------------------------------------------------------------------------------------------



create procedure dbo.normalize_data


--------------------------------------
-- Region Load
--------------------------------------
drop table if exists #Region

select distinct stg.Region
into #Region
from stg.Financial_Data stg
left join dbo.Region r on r.Region_name = stg.Region
where r.Region_name is null

insert into dbo.Region 
(Region_name)
select * from #Region
--------------------------------------
-- Sales Rep Load
--------------------------------------
drop table if exists #SalesRep

select distinct stg.Sales_Rep
into #SalesRep
from stg.Financial_Data stg
left join dbo.Sales_Rep r on r.Seller_name = stg.Sales_Rep
where r.Seller_name is null

insert into dbo.Sales_Rep 
(Seller_name)
select * from #SalesRep
--------------------------------------
-- Customer Load
--------------------------------------
drop table if exists #Customer

select distinct stg.Customer
into #Customer
from stg.Financial_Data stg
left join dbo.Customer r on r.Customer_name = stg.Customer
where r.Customer_name is null

insert into dbo.Customer 
(Customer_name)
select * from #Customer

--------------------------------------
-- Category Load
--------------------------------------

drop table if exists #Category

select distinct stg.Category
into #Category
from stg.Financial_Data stg
left join dbo.Category r on r.Category_name = stg.Category
where r.Category_name is null

insert into dbo.Category 
(Category_name)
select * from #Category


--------------------------------------
-- Product Load
--------------------------------------
drop table if exists #Product

select distinct stg.Product
into #Product
from stg.Financial_Data stg
left join dbo.Product r on r.Product_name = stg.Product
where r.Product_name is null

insert into dbo.Product 
(Product_name)
select * from #Product


-------------------------------------------------------------------------------
-- Now that we have the reference tables we will load to the normalized table
-------------------------------------------------------------------------------
drop table if exists #normalized_data

select stg.Transaction_Date
,r.Region_ID
,s.Seller_ID
,c.Customer_ID
,cat.Category_ID
,p.Product_ID
,stg.Revenue
,stg.COGS
,stg.Operating_Expense
,stg.Units
,stg.Budget_Revenue

into #normalized_data
from stg.Financial_Data stg

left join dbo.Region		r		ON r.Region_name = stg.Region
left join dbo.Sales_Rep		s		ON s.Seller_name = stg.Sales_Rep
left join dbo.Customer		c		ON c.Customer_name = stg.Customer
left join dbo.Category		cat		ON cat.Category_name = stg.Category
left join dbo.Product		p		ON p.Product_name = stg.Product


INSERT INTO dbo.Financial_Data
SELECT DISTINCT * FROM #normalized_data