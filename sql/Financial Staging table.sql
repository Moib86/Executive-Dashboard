use Executive_Dashboard

----------------------------------------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason	| Table will be used to store the raw data needed for the dahbaord
----------------------------------------------------------------------------------------------------------

create table stg.Financial_Data
(Transaction_Date DATE
,Region varchar(25)
,Sales_Rep varchar(25)
,Customer varchar(25)
,Category varchar(25)
,Product varchar(25)
,Revenue FLOAT
,COGS FLOAT
,Operating_Expense FLOAT
,Units INT
,Budget_Revenue FLOAT
)

