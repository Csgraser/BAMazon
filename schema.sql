CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE Products(
    ItemID MEDIUMINT AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT(10) NOT NULL,
    primary key(ItemID)
);

select * from Products;
-- Products is a global table that all of the users regardless of their status (Customer, executive, manager). Only the manager and executive will be able to manipulate the tables.
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Skyrim","ENTERTAINMENT",49.95,150),
    ("Overwatch","ENTERTAINMENT",59.99,200),
    ("Box Of Hotsauce","GROCERY",24.50,50),
    ("Sunglasses","CLOTHING",75.00,5),
    ("Jeans","CLOTHING",54.25,35),
    ("Survival Towel","SPORTS & OUTDOORS",42.42,42),
    ("Se7en","ENTERTAINMENT",15.00,25),
    ("Mad Max: Fury Road","ENTERTAINMENT",25.50,57),
    ("Monopoly","ENTERTAINMENT",30.50,35),
    ("Yahtzee","ENTERTAINMENT",19.95,23);

CREATE TABLE Departments(
    DepartmentID MEDIUMINT AUTO_INCREMENT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    OverHeadCosts DECIMAL(10,2) NOT NULL,
    TotalSales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(DepartmentID));

INSERT INTO Departments(DepartmentName, OverHeadCosts, TotalSales)
VALUES ('ENTERTAINMENT', 50000.00, 15000.00),
    ('ELECTRONICS', 20000.00, 12000.00),
    ('HOME', 30000.00, 15000.00),
    ('BODY & HEALTH', 3000.00, 12000.00),
    ('GROCERY', 1200.00, 15000.00),
    ('KIDS', 40000.00, 12000.00),
    ('CLOTHING', 35000.00, 15000.00),
    ('SPORTS & OUTDOORS', 12000.00, 12000.00);


