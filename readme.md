this is a project for ms-sql databases with help of python for data analysis
``` 
## Installation
``` 
Docker (optional)
python
sqlalchemy
pandas


```
## get start
``` 
###Docker method
Frist run docker container with mysql `docker run --name mysql -e MYSQL_ROOT_PASSWORD=12345678 -d mysql:latest`
after that you need to know the ip of the docker container `docker inspect mysql | grep IPAddress`
Ip address of you terminal `hostname -I`
go to the docker container with bash `docker exec -it mysql bash`
connect to mysql `mysql -u root -p`
write the password `12345678`
create a new user `CREATE USER 'username'@'IPAddress' IDENTIFIED BY 'password';` change the ip address with the ip address of your terminal and change password and username as you like
grant all privileges to the user `GRANT ALL PRIVILEGES ON *.* TO 'username'@'IPAddress';`
flush privileges `FLUSH PRIVILEGES;`
you can now use the user to connect to the database in python notebook or any other program also terminal
###sql server method 
install sql server on your machine https://dev.mysql.com/doc/mysql-getting-started/en/
connect to the database with the user you created in the installation (you may need to get the ip address of your machine to connect to python notebook)
you can now use the user to connect to the database in python notebook or any other program also terminal
```

```

