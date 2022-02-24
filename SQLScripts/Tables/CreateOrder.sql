-- Create a new table called 'Order' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the table
CREATE TABLE [dbo].[Order]
(
    OrderID [INT] IDENTITY(1,1),     -- primary key column
    CustomerID [INT] NOT NULL,
    StatusID [TINYINT] NOT NULL,
    OrderDate [DATE] NOT NULL,
    OrderTotal [SMALLMONEY] NULL
);

GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [pk_Order_OrderID] PRIMARY KEY CLUSTERED (OrderID);

