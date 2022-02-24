USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Status](
	[StatusID] [tinyint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[StatusName] [varchar](50) NOT NULL,
);

INSERT INTO [dbo].[Status] (
	[StatusName]
)
VALUES ('Processing request'),
	('Preparing Order'),
	('Order ready'),
	('Delivering'),
	('Pick up ready'),
	('Picked up'),
	('Delivered'),
	('Unable to deliver'),
	('Cancelled order');
GO

INSERT INTO [dbo].[Status] (
	[StatusName]
)
VALUES ('Processing'),
	('Picked up'),
	('Delivered'),
	('Cancelled');
GO

--SELECT * FROM dbo.Status;
--GO

--DROP TABLE dbo.Status;
--GO