USE [LetThemEatCakeDB]
GO

INSERT INTO [dbo].[Cart] (
    [OrderID],[CakeID],[Quantity],[ItemPrice]
)
VALUES (1, 1, 1, [dbo].[udfCakePrice](1)),
	(1, 2, 1, [dbo].[udfCakePrice](1)),
	(2, 5, 1, [dbo].[udfCakePrice](2)),
    (3, 1, 1, [dbo].[udfCakePrice](3)),
    (4, 3, 2, [dbo].[udfCakePrice](4)),
    (5, 4, 1, [dbo].[udfCakePrice](5)),
    (5, 6, 1, [dbo].[udfCakePrice](5)),
    (6, 1, 1, [dbo].[udfCakePrice](6)),
    (6, 2, 1, [dbo].[udfCakePrice](6)),
    (6, 4, 1, [dbo].[udfCakePrice](6)),
    (6, 6, 1, [dbo].[udfCakePrice](6))
GO
