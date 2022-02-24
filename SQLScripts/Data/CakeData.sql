INSERT INTO [dbo].[Cake] (
	[CakeName],
	[CakeDescription],
	[BaseID],
	[IcingID],
	[ToppingID],
	[ShapeID]
)
VALUES ('Custom Cake', 'This cake is made to your specifications based on a consultation at the bakery.', 0, 0, 0, 0),
	('Home-made Chocolate Cake', 'Traditional, rectangular home-made chocolate cake topped with chocolate buttercream icing and chocolate shavings.', 1, 1, 1, 1),
	('Traditional Birthday Cake', 'Round vanilla cake with vanilla buttercream icing and multicoloured sprinkles.', 2, 2, 2, 2),
	('Blue Birthday Cake', 'Round blueberry cake with blueberry flavoured buttercream icing, topped with home-made blueberry jam.', 3, 3, 3, 2),
	('Rainbow Cake', 'Round cake made with rainbow coloured swirls. This cake is topped with vanilla buttercream icing and rainbow sprinkles.', 4, 2, 3, 2),
	('Square Rainbow Cake', 'Square cake made with rainbow coloured swirls. This cake is topped with vanilla buttercream icing and rainbow sprinkles.', 4, 2, 3, 2),
	('Red Velvet Cake', 'A soft, rectantular shaped red velvet cake topped with cream cheese icing and red velvet cake crumbs', 4, 2, 3, 2),
	('Gluten-free Vanilla Cake', 'Round delicious, moist gluten-free vanilla cake topped with gluten-free vanilla buttercream icing and rasberries.', 4, 2, 3, 2),
	('Angel Food Cake', 'Donut shaped, soft and airy angel cake topped with fluffy vanilla buttercream icing and various berries.', 4, 2, 3, 2),
	('Classic Chiffon Cake', 'Round chiffon cake topped with vanilla buttercream icing and edible flower petals.', 4, 2, 3, 2),
	('Orange Chiffon Cake', 'Round chiffon orange-flavoured cake topped with orange-flavoured buttercream icing and orange slices.', 4, 2, 3, 2),
	('Orange Chocolate Cake', 'Round chocolate and orange flavoured cake topped with chocolate ganache icing and orange chocolate slices.', 4, 2, 3, 2),
	('Classic Carrot Cake', 'Round carrot cake topped with cream cheese icing and chopped pecan nuts.', 4, 2, 3, 2),
	('Christmas Cake', 'Round fruit cake topped with white fondant and cherries.', 4, 2, 3, 2)
GO