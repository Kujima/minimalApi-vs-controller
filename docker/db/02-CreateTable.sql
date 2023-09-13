IF (EXISTS (SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'dbo'
    AND TABLE_NAME = 'T_Caracter'))
BEGIN
    PRINT 'Database T_Caracter Exists'
END;
ELSE
    BEGIN
    PRINT 'No Table in database'
    PRINT 'Creating Table T_Caracter'
    CREATE TABLE [sch_starwars].[T_Caracter]
    (
        [CaracterId] int IDENTITY(1,1) NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Description] nvarchar(1024) NULL,
        [Image] nvarchar(100) NULL,
        CONSTRAINT [PK_T_Caracter] PRIMARY KEY ([CaracterId])
    )
END;
GO