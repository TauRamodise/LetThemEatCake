USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Cake](
	[CakeID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CakeName] [varchar](150) NOT NULL,
	[CakeDescription] [varchar](250) NOT NULL,
	[BaseID] [int] NOT NULL,
	[IcingID] [int] NOT NULL,
	[ToppingID] [int] NOT NULL,
	[ShapeID] [int] NOT NULL
);


--SELECT * FROM dbo.Cake;
--GO

-- View Idea

--CREATE VIEW vwCakesComboPrices
--AS
--SELECT [Cake.CakeID],
--	[Cake.CakeName],
--	[Cake.CakeDescription]
--	[Base.BaseName],
--	[Base.BasePrice],
--	[Icing.IcingName],
--	[Icing.IcingPrice],
--	[Topping.ToppingName],
--	[Topping.ToppingPrice],
--	[Shape.ShapeName],
--	[Shape.ShapePrice]
--FROM Cake
--INNER JOIN Base ON Base.BaseID = Cake.BaseID
--INNER JOIN Icing ON Icing.IcingID = Cake.IcingID
--INNER JOIN Topping ON Topping.ToppingID = Cake.ToppingID
--INNER JOIN Shape ON Shape.ShapeID = Cake.ShapeID;

-- Stored Proc Ideas

--CREATE PROCEDURE [dbo].[spGetCakeCombo]
--@CakeID int
--AS
--	SELECT 	[CakeID],
--		[BaseName],
--		[IcingName],
--		[ToppingName],
--		[ShapeName]
--	FROM vwCakesComboPrices
--	WHERE CakeID = @CakeID

--CREATE PROCEDURE [dbo].[spGetCakePrice]
--@CakeID int
--AS
--	SELECT 	[CakeID],
--		[BasePrice] + [IcingPrice] + [ToppingPrice] + [ShapePrice]
--	FROM vwCakesComboPrices
--	WHERE CakeID = @CakeID

--DROP TABLE dbo.Cake;
--GO

