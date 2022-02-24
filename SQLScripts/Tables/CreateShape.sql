USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Shape](
	[ShapeID] [int] IDENTITY(1,1) NOT NULL,
    [ShapeName] [varchar](250) NOT NULL,
    [ShapePrice] [smallmoney] NOT NULL,
    CONSTRAINT PK_Shape PRIMARY KEY (ShapeID)
);
GO
