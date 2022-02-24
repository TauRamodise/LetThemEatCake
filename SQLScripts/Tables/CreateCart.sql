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
