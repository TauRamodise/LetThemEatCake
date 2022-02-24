CREATE PROCEDURE [dbo].[spGetCartItems]
@OrderID int
AS
	SELECT 	[Order].[OrderID],
		[Cake].[CakeName],
		[Cake].[CakeDescription]
	FROM [dbo].[Cart]
	INNER JOIN [dbo].[Order] ON [Order].[OrderID] = [Cart].[OrderID]
	INNER JOIN [dbo].[Cake] ON [Cake].[CakeID] = [Cart].[CakeID]
	WHERE [Order].[OrderID] = @OrderID
