USE [LetThemEatCakeDB]
GO

ALTER TABLE [dbo].[Cake] ADD CONSTRAINT [FK_IcingID] FOREIGN KEY (IcingID) REFERENCES Icing(IcingID);
GO

ALTER TABLE [dbo].[Cake] ADD CONSTRAINT [FK_ToppingID] FOREIGN KEY (ToppingID) REFERENCES Topping(ToppingID);
GO

ALTER TABLE [dbo].[Cake] ADD CONSTRAINT [FK_ShapeID] FOREIGN KEY (ShapeID) REFERENCES Shape(ShapeID);
GO

ALTER TABLE [dbo].[Cake] ADD CONSTRAINT [FK_CustomerID] FOREIGN KEY (InventedByCustomerID) REFERENCES Customer(CustomerID);
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_DeliveryLocationID]             FOREIGN KEY([DeliveryLocationID])   REFERENCES [dbo].[Location] ([LocationID]);
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_FavouriteCakeID]                FOREIGN KEY([FavouriteCakeID])      REFERENCES [dbo].[Cake] ([CakeID]);
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [fk_Order_CustomerID]                  FOREIGN KEY([CustomerID])           REFERENCES [dbo].[Customer] ([CustomerID]);
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [fk_Order_StatusID]                    FOREIGN KEY([StatusID])             REFERENCES [dbo].[Status] ([StatusID]);
GO
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [fk_Cart_OrderID]                       FOREIGN KEY([OrderID])              REFERENCES [dbo].[Order] ([OrderID]);
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [fk_Cart_CakeID]                        FOREIGN KEY([CakeID])               REFERENCES [dbo].[Cake] ([CakeID]);
GO
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_OrderID]               FOREIGN KEY([OrderID])              REFERENCES [dbo].[Order] ([OrderID]);
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_DeliveryLocationID]    FOREIGN KEY([DeliveryLocationID])   REFERENCES [dbo].[Customer] ([DeliveryLocationID]);
ALTER TABLE [dbo].[Delivery] ADD CONSTRAINT [fk_Delivery_StatusID]              FOREIGN KEY([StatusID])             REFERENCES [dbo].[Status] ([StatusID]);
GO

