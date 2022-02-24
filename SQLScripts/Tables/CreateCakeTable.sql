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

INSERT INTO [dbo].[Cake] (
	[CakeName],
	[CakeDescription],
	[BaseID],
	[IcingID],
	[ToppingID],
	[ShapeID]
)
VALUES ('Custom Cake', 'This cake is made to your specifications based on a consultation at the bakery.', 0, 0, 0, 0),
	('Home-made Chocolate Cake', 'Traditional, rectangular home-made chocolate cake topped with chocolate buttercream icing and chocolate shavings.', 1, 1, 1, 1),
	('Traditional Birthday Cake', 'Round vanilla cake with vanilla buttercream icing and multicoloured sprinkles.', 2, 2, 2, 2),
	('Blue Birthday Cake', 'Round blueberry cake with blueberry flavoured buttercream icing, topped with home-made blueberry jam.', 3, 3, 3, 2),
	('Rainbow Cake', 'Round cake made with rainbow coloured swirls. This cake is topped with vanilla buttercream icing and rainbow sprinkles.', 4, 2, 3, 2),
	('Square Rainbow Cake', 'Square cake made with rainbow coloured swirls. This cake is topped with vanilla buttercream icing and rainbow sprinkles.', 4, 2, 3, 2),
	('Red Velvet Cake', 'A soft, rectantular shaped red velvet cake topped with cream cheese icing and red velvet cake crumbs', 4, 2, 3, 2),
	('Gluten-free Vanilla Cake', 'Round delicious, moist gluten-free vanilla cake topped with gluten-free vanilla buttercream icing and rasberries.', 4, 2, 3, 2),
	('Angel Food Cake', 'Donut shaped, soft and airy angel cake topped with fluffy vanilla buttercream icing and various berries.', 4, 2, 3, 2),
	('Classic Chiffon Cake', 'Round chiffon cake topped with vanilla buttercream icing and edible flower petals.', 4, 2, 3, 2),
	('Orange Chiffon Cake', 'Round chiffon orange-flavoured cake topped with orange-flavoured buttercream icing and orange slices.', 4, 2, 3, 2),
	('Orange Chocolate Cake', 'Round chocolate and orange flavoured cake topped with chocolate ganache icing and orange chocolate slices.', 4, 2, 3, 2),
	('Classic Carrot Cake', 'Round carrot cake topped with cream cheese icing and chopped pecan nuts.', 4, 2, 3, 2),
	('Christmas Cake', 'Round fruit cake topped with white fondant and cherries.', 4, 2, 3, 2),;
GO

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

--ALTER TABLE dbo.Cake
--ADD CONSTRAINT [FK_IcingID] FOREIGN KEY (IcingID) REFERENCES Icing(IcingID);
--GO

--ALTER TABLE dbo.Cake
--ADD CONSTRAINT [FK_ToppingID] FOREIGN KEY (ToppingID) REFERENCES Topping(ToppingID);
--GO

--ALTER TABLE dbo.Cake
--ADD CONSTRAINT [FK_ShapeID] FOREIGN KEY (ShapeID) REFERENCES Shape(ShapeID);
--GO

--ALTER TABLE dbo.Cake
--ADD CONSTRAINT [FK_CustomerID] FOREIGN KEY (InventedByCustomerID) REFERENCES Customer(CustomerID);
--GO

--DROP TABLE dbo.Cake;
--GO

