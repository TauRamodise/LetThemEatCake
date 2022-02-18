USE master;
IF EXISTS(SELECT * FROM sys.databases WHERE name='LetThemEatCakeDB')
DROP DATABASE LetThemEatCakeDB
GO


CREATE DATABASE LetThemEatCakeDB;
GO

USE LetThemEatCakeDB;
GO