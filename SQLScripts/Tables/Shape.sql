USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Shape](
	[ShapeID] [int] IDENTITY(1,1) NOT NULL,
    [ShapeDescription] [varchar](1000) NOT NULL,
    [ShapePrice] [smallmoney] NOT NULL,
    CONSTRAINT PK_Shape PRIMARY KEY (ShapeID)
);

GO