USE LetThemEatCakeDB;
GO

CREATE TABLE [dbo].[Shape](
	[ShapeID] [int] IDENTITY(1,1) NOT NULL,
    [ShapeName] [varchar](250) NOT NULL,
    [ShapePrice] [smallmoney] NOT NULL,
    CONSTRAINT PK_Shape PRIMARY KEY (ShapeID)
);
GO


CREATE PROCEDURE [dbo].[InsertUpdateDeleteShape]
@ShapeName [varchar](250),
@ShapePrice [smallmoney],
@StatementType [varchar](6)
AS
  BEGIN
      IF @StatementType = 'Insert'
        BEGIN
            INSERT INTO Shape
            VALUES  ( 
                        @ShapeName,
                        @ShapePrice
                    )
        END

    --   IF @StatementType = 'Update'
    --     BEGIN
    --         UPDATE Shape
    --         SET    ShapeName = @first_name,
    --                ShapePrice = @last_name,
    --                salary = @salary,
    --                city = @city
    --         WHERE  id = @id
    --     END
    --   ELSE IF @StatementType = 'Delete'
    --     BEGIN
    --         DELETE FROM Shape
    --         WHERE  id = @id
    --     END
  END