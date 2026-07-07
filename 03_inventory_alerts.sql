-- 03_inventory_alerts.sql
-- Identify products that need restocking (Stock less than 30 units)
USE InventoryManagement;
GO

SELECT 
    ProductID, 
    ProductName, 
    Stock 
FROM Products
WHERE Stock < 30;
GO