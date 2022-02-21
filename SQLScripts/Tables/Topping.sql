USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Topping](
	[ToppingID] [int] IDENTITY(1,1) NOT NULL,
    [ToppingDescription] [varchar](1000) NOT NULL,
    [ToppingPrice] [smallmoney] NOT NULL,
    CONSTRAINT PK_Topping PRIMARY KEY (ToppingID)
);

GO