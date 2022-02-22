-- Create a new table called 'Customer' in schema 'LTECdb'
USE [LTECdb]
GO
-- Create the table
CREATE TABLE [dbo].[Customer]
(
    [CustomerID] [INT] NOT NULL,                    -- primary key column
    [FullName] [VARCHAR](500) NULL,   
    [PhoneNumber] [VARCHAR](31) NOT NULL,        
    [Email] [VARCHAR](500) NULL,
    [DeliveryLocationID] [VARCHAR](500) NULL        -- foreign key column
    [FavouriteCakeID] NULL                          -- foreign key column
);
GO
ALTER TABLE [dbo].[Customer] WITH CONSTRAINT [pk_Customer_CustomerID]    PRIMARY KEY CLUSTERED (CustomerID);
ALTER TABLE [dbo].[Customer] WITH CONSTRAINT [fk_Customer_DeliveryLocationID] FOREIGN KEY([DeliveryLocationID]) REFERENCES [dbo].[Location] ([LocationID]);
ALTER TABLE [dbo].[Customer] WITH CONSTRAINT [fk_Customer_FavouriteCakeID] FOREIGN KEY([FavouriteCakeID]) REFERENCES [dbo].[Cake] ([CakeID]);
GO