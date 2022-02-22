-- Create a new table called 'Location' in schema 'LTECdb'
USE [LTECdb]
GO
-- Create the  table
CREATE TABLE [dbo].[Location]
(
    [LocationID] [INT] NOT NULL,                    -- primary key column
    [UnitNumber] [VARCHAR](10) NULL,   
    [BuildingName] [VARCHAR](500) NULL,        
    [StreetNumber] [SMALLINT] NOT NULL,
    [Street] [VARCHAR](100) NOT NULL,
    [Suburb] [VARCHAR](100) NOT NULL,
    [City][VARCHAR](100) NOT NULL
                            
);
GO
ALTER TABLE [dbo].[Location] WITH CONSTRAINT [pk_Location_LocationID]    PRIMARY KEY CLUSTERED (LocationID);
GO