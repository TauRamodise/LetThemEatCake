USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Cake](
	[CakeID] [int] IDENTITY(1,1) NOT NULL,
	[CakeDescription] [varchar](1000) NOT NULL,
	[CakeRecipe] [varchar](2000) NOT NULL,
	[BaseID] [int] NOT NULL,
	[IcingID] [int] NOT NULL,
	[ToppingID] [int] NOT NULL,
	[ShapeID] [int] NOT NULL,
	[ProductionCost] [smallmoney] NOT NULL,
	[InventedByCustomerID] [int] NOT NULL,
);

ALTER TABLE dbo.Cake
ADD CONSTRAINT [PK_Cake] PRIMARY KEY CLUSTERED ([CakeID] ASC);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_IcingID] FOREIGN KEY (IcingID) REFERENCES Icing(IcingID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_ToppingID] FOREIGN KEY (ToppingID) REFERENCES Topping(ToppingID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_ShapeID] FOREIGN KEY (ShapeID) REFERENCES Shape(ShapeID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_CustomerID] FOREIGN KEY (InventedByCustomerID) REFERENCES Customer(CustomerID);
GO

--CREATE TABLE [dbo].[Cake](
--	[CakeID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
--	[CakeDescription] [varchar](1000) NOT NULL,
--	[CakeRecipe] [varchar](2000) NOT NULL,
--	[BaseID] [int] NOT NULL FOREIGN KEY REFERENCES Base(BaseID),
--	[IcingID] [int] NOT NULL FOREIGN KEY REFERENCES Icing(IcingID),
--	[ToppingID] [int] NOT NULL FOREIGN KEY REFERENCES Topping(ToppingID),
--	[ShapeID] [int] NOT NULL FOREIGN KEY REFERENCES Shape(ShapeID),
--	[ProductionCost] [smallmoney] NOT NULL,
--	[InventedByCustomerID] [int] NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
--);

DROP TABLE dbo.Cake;
GO