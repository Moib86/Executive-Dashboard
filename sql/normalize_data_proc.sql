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

--------------------------------------
-- Sales Rep Load
--------------------------------------

--------------------------------------
-- Customer Load
--------------------------------------

--------------------------------------
-- Category Load
--------------------------------------

--------------------------------------
-- Product Load
--------------------------------------
