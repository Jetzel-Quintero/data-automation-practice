USE InventoryManagement;
GO

-- 07_audit_log.sql
-- Create audit table to track inventory changes
USE InventoryManagement;
GO

CREATE TABLE InventoryAudit (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT,
    OldStock INT,
    NewStock INT,
    ChangeDate DATETIME DEFAULT GETDATE(),
    ChangeType VARCHAR(20) -- 'SALE' or 'RESTOCK'
);
GO