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

