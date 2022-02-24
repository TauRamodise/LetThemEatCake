-- Create a new table called 'Cart' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the table
CREATE TABLE [dbo].[Cart]
(
    OrderID [INT] NOT NULL,          -- primary / foreign key column
    CakeID [INT] NOT NULL,           -- primary / foreign key column
    Quantity [TINYINT] NOT NULL,
    ItemPrice [SMALLMONEY] NULL 
);
GO
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [pk_Cart_OrderID] PRIMARY KEY CLUSTERED ([OrderID],[CakeID]);
GO
INSERT INTO [dbo].[Cart] (
    [OrderID],[CakeID],[Quantity],[ItemPrice]
)
VALUES (1, 1, 1, 250),
	(1, 2, 1, 250),
	(2, 5, 1, 200),
    (3, 1, 1, 250),
    (4, 3, 2, 200),
    (5, 4, 1, 250),
    (5, 6, 1, 250),
    (6, 1, 1, 250),
    (6, 2, 1, 250),
    (6, 4, 1, 250),
    (6, 6, 1, 250)
GO
