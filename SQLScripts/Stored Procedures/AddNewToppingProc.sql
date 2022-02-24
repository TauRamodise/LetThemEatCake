GO
USE [LetThemEatCakeDB]
GO

CREATE PROCEDURE [dbo].[InsertNewTopping]
@ToppingName [varchar](250),
@ToppingPrice [smallmoney]
AS
  BEGIN
    INSERT INTO Topping
    VALUES  ( 
                @ToppingName,
                @ToppingPrice
            )
  END
 
--EXEC dbo.InsertNewTopping @ToppingName = 'NewTopping', @ToppingPrice = 100, @TableName = 'Topping';
