-- Create a new table called 'Order' in schema 'LTECdb'
USE [LTECdb]
GO
-- Create the table
CREATE TABLE [dbo].[Order]
(
    OrderID [INT] NOT NULL,     -- primary key column
    CustomerID [INT] NOT NULL,
    StatusID [TINYINT] NOT NULL,
    OrderDate [DATE] NOT NULL,
    OrderTotal [SMALLMONEY] NULL
);
GO
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [pk_Order_OrderID]    PRIMARY KEY CLUSTERED (OrderID);
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [fk_Order_CustomerID] FOREIGN KEY([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]);
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [fk_Order_StatusID]   FOREIGN KEY([StatusID])   REFERENCES [dbo].[Status] ([StatusID]);
GO
