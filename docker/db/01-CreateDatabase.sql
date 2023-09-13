PRINT 'Debut Creation DATABASE'


USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
	SELECT name
FROM sys.databases
WHERE name = N'starwars'
)
CREATE DATABASE starwars
GO

EXEC sp_configure 'CONTAINED DATABASE AUTHENTICATION', 1
GO
RECONFIGURE
GO
sp_configure 'max server memory', 4096;   -- for 4 GB
GO
RECONFIGURE
GO

--enables the creation of the user in the specified database
ALTER DATABASE [starwars] SET CONTAINMENT = PARTIAL
GO
PRINT 'FIN CREATE DATABASE'

Use starwars
GO

PRINT 'Debut schema'
IF (SCHEMA_ID('sch_starwars') IS NULL) 
BEGIN
	EXEC ('CREATE SCHEMA [sch_starwars] AUTHORIZATION [dbo]')
END
PRINT 'Fin schema'