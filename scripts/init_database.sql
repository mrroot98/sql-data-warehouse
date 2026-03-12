/*
========================================
Create Database and Schema
========================================

Script purpose:
This script will create a database named as Datawarehouse. Inside this it will create 3 different schemas - bronze,
silver and gold. It will check in the begining that if the database already exists then it will delete the database.

Warning :
Runnning the script will delete the database. Ensure you have all the correct backup of the data before running nthe script.

*/


USE master;
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='Datawarehouse')
  BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datewarehouse;
END;
GO
CREATE DATABASE Datawarehouse;

USE Datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
