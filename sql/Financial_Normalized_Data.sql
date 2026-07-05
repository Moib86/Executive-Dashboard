use Executive_Dashboard

----------------------------------------------------------------------------------------------------------
-- 7-5-2026		| Karl Gleason	| Table will be used to store the normalized data
----------------------------------------------------------------------------------------------------------

create table dbo.Financial_Data
(Transaction_Date DATE
,Region INT
,Sales_Rep INT
,Customer INT
,Category INT
,Product INT
,Revenue FLOAT
,COGS FLOAT
,Operating_Expense FLOAT
,Units INT
,Budget_Revenue FLOAT
)

