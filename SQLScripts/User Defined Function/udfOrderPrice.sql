GO
USE [LetThemEatCakeDB]
GO
DROP FUNCTION IF EXISTS [udfOrderPrice];
GO
CREATE FUNCTION [dbo].[udfOrderPrice](@OrderID int)
RETURNS MONEY
AS
BEGIN
    DECLARE @ret int;
    SELECT @ret = SUM([c].[ItemPrice])
    FROM [dbo].[Cart] AS c
	WHERE
		c.OrderID = @OrderID;

    IF (@ret IS NULL)
        SET @ret = 0;
    RETURN @ret;
END;

