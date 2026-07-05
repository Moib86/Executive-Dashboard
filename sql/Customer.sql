use Executive_Dashboard

------------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason		| Intial Table creation for the Customer
-------------------------------------------------------------------------------


create table dbo.Customer
(Customer_ID int identity(1,1) primary key
,Customer_name varchar(25)
)