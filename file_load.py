import pandas as pd
from connect import cnxn

intial_data = pd.read_csv('PowerBI_Portfolio_Financial_Dataset.csv')

curser = cnxn.cursor()
for index, row in intial_data.iterrows():
    curser.execute(
        "INSERT into stg.Financial_Data "
        "(Transaction_Date" \
        ",Region" \
        ",Sales_Rep" \
        ",Customer" \
        ",Category" \
        ",Product" \
        ",Revenue" \
        ",COGS" \
        ",Operating_Expense" \
        ",Units" \
        ",Budget_Revenue)" \
        "values (?,?,?,?,?,?,?,?,?,?,?)"
        ,row['Date']
        ,row['Region']
        ,row['SalesRep']
        ,row['Customer']
        ,row['Category']
        ,row['Product']
        ,row['Revenue']
        ,row['COGS']
        ,row['OperatingExpense']
        ,row['Units']
        ,row['BudgetRevenue'])
cnxn.commit()