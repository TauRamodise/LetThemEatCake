USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Status](
	[StatusID] [tinyint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[StatusName] [varchar](50) NOT NULL,
);
