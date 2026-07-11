-- 01_create_database.sql
-- Create the main database for the inventory system
CREATE DATABASE InventoryManagement;
GO

USE InventoryManagement;
GO

-- Create the products table with an extra category column
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO


