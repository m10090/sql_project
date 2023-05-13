
create table Customer(
    CustomerID int not null primary key,
    FirstName varchar(255) not null,
    LastName varchar(255) not null,
    Email varchar(255) not null,
    Address varchar(255) not null,
    City varchar(255) not null,
    ZipCode varchar(255) not null,
    PhoneNumber varchar(12) not null
);

create table Product(
    ProductID int not null primary key,
    ProductName varchar(255) not null,
    Category varchar(255) not null,
    ProductPrice decimal(10,2) not null,
    ProductQuantity int not null
);

create table Orders(
    OrderID int not null primary key,
    CustomerID int,
    ProductID int,
    foreign key (CustomerID) references Customer(CustomerID),
    foreign key (ProductID) references Product(ProductID),
    OrderDate date not null,
    OrderQuantity int not null,
    OrderTotal decimal(10,2) not null
);
