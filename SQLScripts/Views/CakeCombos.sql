CREATE VIEW vwCakesComboPrices
AS
SELECT [Cake].[CakeID],
	[Cake].[CakeName],
	[Cake].[CakeDescription],
	[Base].[BaseName],
	[Base].[BasePrice],
	[Icing].[IcingName],
	[Icing].[IcingPrice],
	[Topping].[ToppingName],
	[Topping].[ToppingPrice],
	[Shape].[ShapeName],
	[Shape].[ShapePrice]
FROM Cake
INNER JOIN Base ON Base.BaseID = Cake.BaseID
INNER JOIN Icing ON Icing.IcingID = Cake.IcingID
INNER JOIN Topping ON Topping.ToppingID = Cake.ToppingID
INNER JOIN Shape ON Shape.ShapeID = Cake.ShapeID;

SELECT * FROM vwCakesComboPrices;