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
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [pk_Delivery_OrderID] PRIMARY KEY CLUSTERED ([OrderID]);
GO

