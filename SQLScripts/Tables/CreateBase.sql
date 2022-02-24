USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Base] (
    [BaseID] [int] IDENTITY(1,1) NOT NULL,
    [BaseName] [varchar](250) NOT NULL,
    [BasePrice] [smallMoney] NOT NULL,
    CONSTRAINT PK_Base PRIMARY KEY (BaseID)
)
GO
