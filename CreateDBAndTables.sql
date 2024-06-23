CREATE DATABASE ProductsAndCategories;

GO

USE ProductsAndCategories;

CREATE TABLE Product 
(
	ProductId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProductName VARCHAR(60) NOT NULL,
	ProductDescription VARCHAR(256),
	ProductCount INT,
	ProductPrice INT
)

CREATE TABLE Category 
(
	CategoryId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CategoryName VARCHAR(60) NOT NULL
)

CREATE TABLE ProductCategories
(
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Product(ProductId),
	CategoryId INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryId)
)