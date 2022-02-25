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
    (6, 7, 1, [dbo].[udfCakePrice](6)),
    (6, 8, 1, [dbo].[udfCakePrice](6)),
    (6, 5, 1, [dbo].[udfCakePrice](6)),
    (6, 13, 1, [dbo].[udfCakePrice](6)),
    (7, 2, 1, [dbo].[udfCakePrice](7)),
	(7, 6, 1, [dbo].[udfCakePrice](7)),
	(8, 12, 1, [dbo].[udfCakePrice](8)),
    (9, 4, 1, [dbo].[udfCakePrice](9)),
    (10, 1, 2, [dbo].[udfCakePrice](10)),
    (11, 1, 1, [dbo].[udfCakePrice](11)),
    (11, 9, 1, [dbo].[udfCakePrice](11)),
    (12, 10, 1, [dbo].[udfCakePrice](12)),
    (12, 6, 1, [dbo].[udfCakePrice](12)),
    (12, 7, 1, [dbo].[udfCakePrice](12)),
    (12, 8, 1, [dbo].[udfCakePrice](12))
GO
