CREATE PROCEDURE [dbo].[spGetCakeCombo]
@CakeID int
AS
	SELECT 	[CakeID],
		[BaseName],
		[IcingName],
		[ToppingName],
		[ShapeName]
	FROM vwCakesComboPrices
	WHERE CakeID = @CakeID