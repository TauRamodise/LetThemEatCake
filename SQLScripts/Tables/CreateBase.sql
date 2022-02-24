/*
    Bases - defined as a cake base flavour
    Columns - BaseID  Primary Key  Identity(1,1)  Int  Not Null
            - BaseName  varchar(250)  Not Null
            - BasePrice  smallMoney  Not Null
*/

USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Base] (
    [BaseID] [int] IDENTITY(1,1) NOT NULL,
    [BaseName] [varchar](250) NOT NULL,
    [BasePrice] [smallMoney] NOT NULL,
    CONSTRAINT PK_Base PRIMARY KEY (BaseID)
)
<<<<<<< HEAD

=======
>>>>>>> 2b524ae831f0736b4ef8edd949fc0bbc011cf13a
GO