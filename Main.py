# pandas for data manipulation
import pandas as pd
# sqlalchemy for running sql queries
import pyodbc 
import sqlalchemy as db

server = 'localhost,1433'  # Replace with the appropriate server and port if needed
database = 'database'  # Replace with your database name
username = 'SA'  # Replace with your username
password = 'reallyStrongPwd123'  # Replace with your password

# Create a connection string
conn_str = f"DRIVER={{ODBC Driver 18 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}"

# Connect to the database
conn = pyodbc.connect(conn_str)
server = db.create_engine(conn)
# run sql file
server.execute(open('database.sql').read())
# import from csv
Products = pd.read_csv('Products.csv')
Products.to_sql('Products', con=server, if_exists='append', index=False)
Customers = pd.read_csv('Customers.csv')
Customers.to_sql('Customers', con=server, if_exists='append', index=False)
Orders = pd.read_csv('Orders.csv')
Orders.to_sql('Orders', con=server, if_exists='append', index=False)
con.close()
server.dispose()