USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Topping](
	[ToppingID] [int] IDENTITY(1,1) NOT NULL,
    [ToppingName] [varchar](250) NOT NULL,
    [ToppingPrice] [smallmoney] NOT NULL,
    CONSTRAINT PK_Topping PRIMARY KEY (ToppingID)
);

INSERT INTO Topping VALUES ('Cherries', 20)
INSERT INTO Topping VALUES ('Strawberries', 15)
INSERT INTO Topping VALUES ('Powered Sugar', 17)
INSERT INTO Topping VALUES ('Mixed fruits', 30)
INSERT INTO Topping VALUES ('Crushed peppermint', 25)
INSERT INTO Topping VALUES ('Jelly beans', 24)

GO