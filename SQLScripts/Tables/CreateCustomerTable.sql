-- Create a new table called 'Customer' in schema 'LTECdb'
USE [LTECdb]
GO
-- Create the table
CREATE TABLE [dbo].[Customer]
(
    [CustomerID] [INT] NOT NULL,                        -- primary key column
    [FullName] [VARCHAR](250) NOT NULL,   
    [PhoneNumber] [VARCHAR](31) NOT NULL,        
    [Email] [VARCHAR](250) NOT NULL,
    [DeliveryLocationID] [VARCHAR](250) NULL            -- foreign key column
    [FavouriteCakeID] [INT] NULL                        -- foreign key column
);
GO
