GO
USE [LetThemEatCakeDB]
GO

EXEC [dbo].[CalculateOrderPrice] @OrderID = 1
EXEC [dbo].[CalculateOrderPrice] @OrderID = 2
EXEC [dbo].[CalculateOrderPrice] @OrderID = 3
EXEC [dbo].[CalculateOrderPrice] @OrderID = 4
EXEC [dbo].[CalculateOrderPrice] @OrderID = 5
EXEC [dbo].[CalculateOrderPrice] @OrderID = 6

GO
