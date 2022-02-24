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
ALTER TABLE [dbo].[Cart] WITH ADD CONSTRAINT [pk_Cart_OrderID] PRIMARY KEY CLUSTERED ([OrderID],[CakeID]);
ALTER TABLE [dbo].[Cart] WITH ADD CONSTRAINT [fk_Cart_OrderID] FOREIGN KEY([OrderID]) REFERENCES [dbo].[Order] ([OrderID]);
ALTER TABLE [dbo].[Cart] WITH ADD CONSTRAINT [fk_Cart_CakeID]  FOREIGN KEY([CakeID])  REFERENCES [dbo].[Cake] ([CakeID]);
GO
