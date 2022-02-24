USE LetThemEatCakeDB;
GO

CREATE VIEW  vwGetCustomerCakes 
AS
SELECT
	cust.FullName, 
	cust.PhoneNumber, 
	cake.CakeDescription, 
	base.BaseName, 
	ic.IcingDescription, 
	topp.ToppingName, 
	sh.ShapeName
FROM [dbo].[Customer] cust
	inner join [dbo].[Order] ord on cust.CustomerID = ord.CustomerID
	inner join [dbo].[Cart] cart on ord.OrderID = cart.OrderID
	inner join [dbo].[Cake] cake on cart.CakeID = cake.CakeID
	inner join [dbo].[Base] base on cake.BaseID = base.BaseID
	inner join [dbo].[Icing] ic on cake.IcingID = ic.IcingID
	inner join [dbo].[Topping] topp on cake.ToppingID = topp.ToppingID
	inner join [dbo].[Shape] sh on cake.ShapeID = sh.ShapeID

--select * from vwGetCustomerCakes;