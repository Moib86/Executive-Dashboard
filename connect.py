import pyodbc
import pandas as pd


cnxn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=Karl-PC\SQLEXPRESS;"
                      "Database=Executive_Dashboard;"
                      "Trusted_Connection=yes;")

curser = cnxn.cursor()

connection_check = ("select * from Executive_Dashboard.stg.Connect_Test")
check = pd.read_sql(connection_check, cnxn)

print(check)


    


