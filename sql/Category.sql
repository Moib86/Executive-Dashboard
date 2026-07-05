use Executive_Dashboard

-----------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason		| Intial Table creation for the Category
-----------------------------------------------------------------------------


create table dbo.Category
(Category_ID int identity(1,1) primary key
,Category_name varchar(25)
)