USE [LetThemEatCakeDB]
GO
DROP FUNCTION IF EXISTS [udfCakePrice];
GO
CREATE FUNCTION [dbo].[udfCakePrice](@CakeID int)
RETURNS SMALLMONEY
AS
BEGIN
    DECLARE @ret int;
    SELECT @ret = ([b].[BasePrice]  + [i].[IcingPrice] + [t].[ToppingPrice] + [s].[ShapePrice])
    FROM [dbo].[Cake] AS c
    INNER JOIN [dbo].[Base] AS b ON [c].[BaseID] = [b].[BaseID]
    INNER JOIN [dbo].[Icing] AS i ON [c].[IcingID] = [i].[IcingID]
    INNER JOIN [dbo].[Topping] AS t ON [c].[ToppingID] = [t].[ToppingID]
    INNER JOIN [dbo].[Shape] AS s ON [c].[ShapeID] = [s].[ShapeID]
	WHERE
		c.CakeID = @CakeID;

    IF (@ret IS NULL)
        SET @ret = 0;
    RETURN @ret;
END;
