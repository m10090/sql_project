CREATE DATABASE OnlineStore;
CREATE TABLE OnlineStore.Customer (
    CustomerID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    ZipCode VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(255) NOT NULL
);
CREATE TABLE OnlineStore.Product(
    ProductID INT  PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2)   NOT NULL,
    Quantity INT NOT NULL
);


CREATE TABLE OnlineStore.Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE NOT NULL,
    Quantity INT NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES OnlineStore.Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES OnlineStore.Product(ProductID)
);