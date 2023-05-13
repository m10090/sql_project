# pandas for data manipulation
import pandas as pd
# sqlalchemy for running sql queries
import sqlalchemy as db
server = db.create_engine('mssql+pyodbc://SA:reallyStrongPwd123@localhost:1433')
# run sql file
server.execute(open('database.sql').read())
# import from csv
Products = pd.read_csv('Products.csv')
Products.to_sql('Products', con=server, if_exists='append', index=False)
Customers = pd.read_csv('Customers.csv')
Customers.to_sql('Customers', con=server, if_exists='append', index=False)
Orders = pd.read_csv('Orders.csv')
Orders.to_sql('Orders', con=server, if_exists='append', index=False)