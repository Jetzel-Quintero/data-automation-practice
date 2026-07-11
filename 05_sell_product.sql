USE InventoryManagement;
GO

-- 05_sell_product.sql
-- Procedure to process a product sale and update stock
USE InventoryManagement;
GO

CREATE OR ALTER PROCEDURE sp_SellProduct
    @ProductID INT,
    @Quantity INT
AS
BEGIN
    -- Check if there is enough stock
    IF (SELECT Stock FROM Products WHERE ProductID = @ProductID) >= @Quantity
    BEGIN
        UPDATE Products
        SET Stock = Stock - @Quantity
        WHERE ProductID = @ProductID;
        
        PRINT 'Sale processed successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Error: Insufficient stock.';
    END
END;
GO