USE [LetThemEatCakeDB]
GO
DROP FUNCTION IF EXISTS [udfCakePrice];   
CREATE FUNCTION [dbo].[udfCakePrice](@CakeID int)  
RETURNS SMALLMONEY
AS 
BEGIN  
    DECLARE @ret int;  
    SELECT @ret = SUM([b].[BasePrice], [i].[IcingPrice], [t].[ToppingPrice], [s].[ShapePrice])   
    FROM [dbo].[Cake] AS c
    JOIN [dbo].[Base] AS b ON [c].[BaseID] = [b].[BaseID]  
    JOIN [dbo].[Icing] AS b ON [c].[IcingID] = [i].[IcingID]  
    JOIN [dbo].[Topping] AS b ON [c].[ToppingID] = [t].[ToppingID]  
    JOIN [dbo].[Shape] AS b ON [c].[ShapeID] = [s].[ShapeID]  
 
    IF (@ret IS NULL)   
        SET @ret = 0;  
    RETURN @ret;  
END;
