USE [LetThemEatCakeDB]
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_DeliveryLocationID] FOREIGN KEY([DeliveryLocationID]) REFERENCES [dbo].[Location] ([LocationID]);
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_FavouriteCakeID] FOREIGN KEY([FavouriteCakeID]) REFERENCES [dbo].[Cake] ([CakeID]);
GO