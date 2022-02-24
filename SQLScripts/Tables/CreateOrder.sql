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
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [pk_Order_OrderID]    PRIMARY KEY CLUSTERED (OrderID);
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [fk_Order_CustomerID] FOREIGN KEY([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]);
ALTER TABLE [dbo].[Order] WITH CONSTRAINT [fk_Order_StatusID]   FOREIGN KEY([StatusID])   REFERENCES [dbo].[Status] ([StatusID]);

GO
INSERT INTO [dbo].[Order] (
	[CustomerID],[StatusID],[OrderDate],[OrderTotal]
)
VALUES (1, 4, '20200501 10:34:09 AM', 500),
	(2, 4, '20200719 10:34:09 AM', 200),
	(3, 4, '20200216 10:34:09 AM', 250),
	(4, 5, '20200312 10:34:09 AM', 400),
	(2, 5, '20200613 10:34:09 AM', 500),
	(3, 5, '20200925 10:34:09 AM', 1000);
GO
