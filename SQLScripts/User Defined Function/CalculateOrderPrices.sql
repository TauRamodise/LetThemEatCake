GO
USE LetThemEatCakeDB
GO
DROP PROCEDURE IF EXISTS [dbo].[CalculateOrderPrice]
GO
CREATE PROCEDURE [dbo].[CalculateOrderPrice]
@OrderID INT
AS
  BEGIN
    UPDATE [dbo].[Order]
	SET [Order].[OrderTotal] = [dbo].[udfOrderPrice](@OrderID)
	WHERE
		[Order].[OrderID] = @OrderID
  END
GO
