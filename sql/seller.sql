use Executive_Dashboard

------------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason		| Intial Table creation for the Sales Rep 
------------------------------------------------------------------------------


create table dbo.Sales_Rep
(Seller_ID int identity(1,1) primary key
,Seller_name varchar(25)
)