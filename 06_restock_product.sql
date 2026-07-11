-- 06_restock_product.sql
-- Procedure to add stock to an existing product
USE InventoryManagement;
GO

CREATE OR ALTER PROCEDURE sp_RestockProduct
	@ProductID INT,
	@QuantityToAdd INT
AS
BEGIN
	-- Validate if the product exists
	IF EXISTS (SELECT 1 FROM Products WHERE ProductID = @ProductID)
	BEGIN
		UPDATE Products
		SET Stock = Stock + @QuantityToAdd
		WHERE ProductID = @ProductID;
	
		PRINT 'Restock completed successfully.';
	END
	ELSE
	BEGIN
		PRINT 'Error: Product not found.';
	END
END;
GO
		
