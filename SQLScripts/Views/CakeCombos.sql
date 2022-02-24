GO
USE LetThemEatCakeDB
GO
DROP VIEW IF EXISTS vwCakesComboPrices
GO
CREATE VIEW vwCakesComboPrices
AS
SELECT 
	c.CakeName,
	c.CakeDescription,
	b.BaseName,
	b.BasePrice,
	i.IcingName,
	i.IcingPrice,
	t.ToppingName,
	t.ToppingPrice,
	s.ShapeName,
	s.ShapePrice
FROM Cake c
INNER JOIN [Base] b ON b.BaseID = c.BaseID
INNER JOIN [Icing] i ON i.IcingID = c.IcingID
INNER JOIN [Topping] t ON t.ToppingID = c.ToppingID
INNER JOIN [Shape] s ON s.ShapeID = c.ShapeID;
