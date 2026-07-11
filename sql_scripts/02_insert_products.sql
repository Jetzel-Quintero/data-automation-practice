-- 02_insert_products.sql
-- Bulk insert sample data into the Products table
USE InventoryManagement;
GO

INSERT INTO Products (ProductName, Category, Price, Stock)
VALUES 
('Wireless Mouse', 'Electronics', 25.50, 100),
('Mechanical Keyboard', 'Electronics', 85.00, 50),
('Office Chair', 'Furniture', 150.00, 20);
GO