this is a project for ms-sql databases with help of python for data analysis
``` 
## Installation
``` 
frist need to install Docker and run this command in terminal: ` docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=reallyStrongPwd123" -e "MSSQL_PID=Developer" -e "MSSQL_USER=SA" -p 1433:1433 -d --name=sql mcr.microsoft.com/azure-sql-edge `
you can work with microsoft sql server management studio or azure data studio
the password is: reallyStrongPwd123
the username is: SA
the port is: 1433
the server name is: localhost
sudo mysql_secure_installation alter user 'root'@'localhost' identified with mysql_native_password by 'reallyStrongPwd123';
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 12345678;
