/*
    Icing - defined as a cake Icing flavour
    Columns - IcingID  Primary Key  Int  Not Null
            - IcingName  varchar(250)  Not Null
            - BaseDescription varchar(250) Not Null
            - IcingPrice  smallMoney  Not Null
*/

USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Icing] (
    [IcingID] [int] IDENTITY(1,1) NOT NULL,
    [IcingName] [varchar](50) NOT NULL,
    [IcingDescription] [varchar](250) NOT NULL,
    [IcingPrice] [smallMoney] NOT NULL,
    CONSTRAINT PK_Icing PRIMARY KEY (IcingID)
)
GO
