-- Create a new table called 'Customer' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the table
CREATE TABLE [dbo].[Customer]
(
    [CustomerID] [INT] NOT NULL,                        -- primary key column
    [FullName] [VARCHAR](250) NOT NULL,   
    [PhoneNumber] [VARCHAR](31) NOT NULL,        
    [Email] [VARCHAR](250) NOT NULL,
    [DeliveryLocationID] [INT] NULL,                   -- foreign key column
    [FavouriteCakeID] [INT] NULL                        -- foreign key column
);
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_CustomerID] PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO
