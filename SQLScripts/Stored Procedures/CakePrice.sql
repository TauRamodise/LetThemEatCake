CREATE PROCEDURE [dbo].[spGetCakePrice]
@CakeID int
AS
	SELECT 	[CakeID],
		[BasePrice] + [IcingPrice] + [ToppingPrice] + [ShapePrice] AS TotalPrice
	FROM vwCakesComboPrices
	WHERE CakeID = @CakeID;

--DROP PROCEDURE  [dbo].[spGetCakePrice];