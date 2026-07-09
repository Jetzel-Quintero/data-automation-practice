-- 04_create_view.sql
-- Create a view to easily identify products with low stock
USE InventoryManagement;
GO

CREATE OR ALTER VIEW LowStockProducts AS
SELECT 
    ProductID, 
    ProductName, 
    Stock
FROM Products
WHERE Stock < 30;
GO