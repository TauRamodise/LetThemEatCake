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

GO


INSERT INTO [dbo].[Base] (
    [BaseName], [BasePrice]
)
VALUES ('Caramel Fudge Sponge Cake', '150'),
       ('Creamy Sponge Cake', '100'),
       ('Chocolate Sponge Cake', '100'),
       ('Red velvet Sponge Cake', '250'),
       ('Carrot Sponge Cake', '150'),
       ('Lemon Coconut Sponge Cake', '250'),
       ('Fruit Sponge Cake', '150'),
       ('Flourless Gluenten Free Sponge Cake', '250'),
       ('Vannila Sponge Cake', '100'),
       ('Chocolate Coconut Sponge Cake', '235'),
       ('Strawberry Shortcake Sponge Cake', '150'),
       ('Basic Butter Sponge Cake', '130'),
       ('Blueberry Sponge Cake', '200'),
       ('Banana Caramel Sponge Cake', '220'),
       ('Raspberry Almond Sponge Cake', '180'),
       ('Devils Dark Chocolate Sponge Cake', '225');

GO