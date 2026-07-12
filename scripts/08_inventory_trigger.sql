-- 08_inventory_trigger.sql
-- Create trigger to automatically log inventory changes
USE InventoryManagement;
GO

CREATE OR ALTER TRIGGER trg_AfterProductUpdate
ON Products
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Stock)
    BEGIN
        INSERT INTO InventoryAudit (ProductID, OldStock, NewStock, ChangeType)
        SELECT 
            i.ProductID, 
            d.Stock, 
            i.Stock,
            CASE WHEN i.Stock < d.Stock THEN 'SALE' ELSE 'RESTOCK' END
        FROM inserted i
        INNER JOIN deleted d ON i.ProductID = d.ProductID;
    END
END;
GO