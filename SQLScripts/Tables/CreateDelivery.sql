-- Create a new table called 'Delivery' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the table
CREATE TABLE [dbo].[Delivery]
(
    OrderID [INT] NOT NULL,              -- primary / foreign key column
    DeliveryLocationID [INT] NOT NULL,   -- foreign key column
    StatusID [TINYINT] NOT NULL,         -- foreign key column
    DeliveryNote [VARCHAR](500) NULL
-- DeliveryDate [DATE] NULL
);
GO
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [pk_Delivery_OrderID]            PRIMARY KEY CLUSTERED ([OrderID]);
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_OrderID]            FOREIGN KEY([OrderID])            REFERENCES [dbo].[Order] ([OrderID]);
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_DeliveryLocationID] FOREIGN KEY([DeliveryLocationID]) REFERENCES [dbo].[Customer] ([DeliveryLocationID]);
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_StatusID]           FOREIGN KEY([StatusID])           REFERENCES [dbo].[Status] ([StatusID]);
GO

GO
INSERT INTO [dbo].[Delivery] (
    [DeliveryLocationID],[StatusID],[DeliveryNote]
)
VALUES (1, 7, ''),
	(2, 7, 'Nice old lady'),
	(3, 7, '')
GO
