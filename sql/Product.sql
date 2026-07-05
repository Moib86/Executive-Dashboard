use Executive_Dashboard

-----------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason		| Intial Table creation for the Product
-----------------------------------------------------------------------------


create table dbo.Product
(Product_ID int identity(1,1) primary key
,Product_name varchar(25)
)