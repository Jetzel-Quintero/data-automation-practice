-- sandbox_testing.sql
-- Scratchpad for testing queris and updates

USE InventoryManagement;
GO

-- Test 1: Check all products
SELECT * FROM Products;

-- Test 2: Update stock for 'Wireless Mouse' to force a low stock alert
UPDATE Products
SET Stock = 15
WHERE ProductName = 'Wireless Mouse';

-- Test 3: Verify the update
SELECT * FROM Products WHERE ProductName = 'Wireless Mouse';


-----------------------------
-- 04_create_view.sql

-- Test 4: View
SELECT * FROM LowStockProducts;

-----------------------------
-- 05_sell_product.sql

-- Test: Sell 5 units of product with ID 1
EXEC sp_SellProduct @ProductID = 1, @Quantity = 45;

-- Verify the result
SELECT * FROM Products WHERE ProductID = 1;

-----------------------------
-- 06_restock_product.sql

-- Add 50 units to product ID 1
EXEC sp_RestockProduct @ProductID = 1, @QuantityToAdd = 50;

-- Check new stock
SELECT * FROM Products WHERE ProductID = 1;