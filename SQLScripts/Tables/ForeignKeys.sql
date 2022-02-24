USE [LetThemEatCakeDB]
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_DeliveryLocationID] FOREIGN KEY([DeliveryLocationID]) REFERENCES [dbo].[Location] ([LocationID]);
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_FavouriteCakeID] FOREIGN KEY([FavouriteCakeID]) REFERENCES [dbo].[Cake] ([CakeID]);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_IcingID] FOREIGN KEY (IcingID) REFERENCES Icing(IcingID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_ToppingID] FOREIGN KEY (ToppingID) REFERENCES Topping(ToppingID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_ShapeID] FOREIGN KEY (ShapeID) REFERENCES Shape(ShapeID);
GO

ALTER TABLE dbo.Cake
ADD CONSTRAINT [FK_CustomerID] FOREIGN KEY (InventedByCustomerID) REFERENCES Customer(CustomerID);
GO