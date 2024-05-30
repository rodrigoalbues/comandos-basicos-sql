/*Criação de tabela*/
USE [preparatorio]
GO

CREATE TABLE preparatorio (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    OP nvarchar(10) NOT NULL,
    cod nvarchar(10) NOT NULL,
    qtd int NOT NULL,
    temp float,
    vazao float,
);
GO

/*Inserir dados na tabela*/

USE [preparatorio]
GO

INSERT INTO [dbo].[preparatorio]
           ([OP]
           ,[cod]
           ,[qtd]
           ,[temp]
           ,[vazao])
     VALUES
           ('1234567890',
            '9876543210',
             5235,
           25.4,
           35.2)
GO

/*Update do dado em um registro criado*/

USE [preparatorio]
GO

UPDATE [dbo].[preparatorio]
   SET [vazao] = 25.3
 WHERE OP='1234567895'
GO

/*Delete do registro na tabela*/

USE [preparatorio]
GO

DELETE FROM [dbo].[preparatorio]
      WHERE OP='1234567895'
GO


/*Select condicionado*/

USE [preparatorio]
GO

SELECT [id]
      ,[OP]
      ,[cod]
      ,[qtd]
      ,[temp]
      ,[vazao]
  FROM [dbo].[preparatorio]
  where OP='1234567890'

GO

/*
msg.payload="SELECT [id],[OP],[cod],[qtd],[temp],[vazao] FROM [dbo].[preparatorio] where OP='1234567890'"
return msg;*/
