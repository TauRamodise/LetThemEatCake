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
    [IcingName] [varchar(50)] NOT NULL,
    [IcingDescription] [varchar(250)] NOT NULL,
    [IcingPrice] [smallMoney] NOT NULL,
    CONSTRAINT PK_Icing PRIMARY KEY (IcingID)
)

GO


INSERT INTO [dbo].[Icing] (
    [IcingName], [IcingDescription], [IcingPrice]
)
VALUES ('American ButterCream', 'A combination butter, confectioners sugar, cream, salt and your caramel flavoring.', '150'),
       ('Swiss Meringue ButterCream', 'Light, smooth and not too sweet, Swiss meringue buttercream is made by heating egg whites and granulated sugar, whipping the mixture to stiff peaks and slowly adding butter.', '130'),
       ('Italian Meringue ButterCream', 'Italian meringue buttercream is smooth and buttery frosting, made with italian meringue, egg whites and hot sugar syrup.', '150'),
       ('French ButterCream', 'Contains egg yolks for richness. It is made by pouring boiling sugar syrup into whipped egg yolks, whipping the mixture to a foamy consistency then adding butter and whipping until light and creamy.', '150'),
       ('Creame Cheese Frosting', 'Made with confectioners sugar and vanilla, this type of frosting is relatively sweet but with a bit of tang from the cream cheese', '110'),
       ('Ganache', 'A chocolate-based sauce made by dark or milk chocolate and warm cream.', '150'),
       ('Rolled Fondant', 'Made from sugar, water and sometimes gelatin or glycerin.', '60'),
       ('Royal Icing', 'Royal icing is a hard white icing made from softly beaten eggs whites and powdered sugar.', '50'),
       ('Mirror Glaze', 'A pourable glaze made of melted dark, mikly or white chocolate, gelatin and sweetened condensed milk, along with flavorings and food coloring for pizazz.', '90'),
       ('Marzipam', 'A malleable confection of crushed almonds or almond paste, sugar, and whites of eggs', '120'),
       ('Peanut Butter Buttercream', 'Light, smooth and not too sweet, Peanut butter buttercream is made by heating egg whites and granulated sugar, whipping the mixture to stiff peaks and slowly adding butter and smooth peanut butter', '120'),
       ('Vanilla ButterCream', 'Light, smooth and not too sweet, vanilla buttercream is made by heating egg whites and granulated sugar, whipping the mixture to stiff peaks and slowly adding butter.', '100'),
       ('Rich Chocolate Frosting', 'A creamy dark, white or milk chocolate frosting made with cream, melted chocolate and butter.', '70'),
       ('Blackberry Buttercream', 'Light, smooth and not too sweet, blackberry buttercream is made by heating egg whites and granulated sugar, whipping the mixture to stiff peaks and slowly adding butter and a blackberry sauce.', '150'),
       ('Caramel Icing', 'A vanilla, caramel, and sea salt creamy icing.', '100'),
       ('Fluffy White Frosting', ' A thick and creamy frosting that has a very light vanilla taste.', '50'),
       ('Creamy Fudge Frosting', 'A thick and creamy frosting that has a very light caramel fudge taste', '50');

GO