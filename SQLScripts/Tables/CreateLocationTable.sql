-- Create a new table called 'Location' in schema 'LTECdb'
USE [LetThemEatCakeDB]
GO
-- Create the  table
CREATE TABLE [dbo].[Location]
(
    [LocationID] [INT] IDENTITY(1,1) NOT NULL,                    -- primary key column
    [Coordinates] [GEOGRAPHY] NOT NULL
);
GO
ALTER TABLE [dbo].[Location] ADD CONSTRAINT [PK_LocationID] PRIMARY KEY CLUSTERED ([LocationID] ASC);
GO