-- Create a new table called 'Customer' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the table
CREATE TABLE [dbo].[Customer]
(
    [CustomerID] [INT] IDENTITY(1,1),                        -- primary key column
    [FullName] [VARCHAR](250) NOT NULL,   
    [PhoneNumber] [VARCHAR](31) NOT NULL,        
    [Email] [VARCHAR](250) NOT NULL,
    [DeliveryLocationID] [INT] NULL,                   -- foreign key column
    [FavouriteCakeID] [INT] NULL                        -- foreign key column
);
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_CustomerID] PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO
