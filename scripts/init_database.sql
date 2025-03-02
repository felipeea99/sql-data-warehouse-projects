/*
THIS SCRIPTS CREASTE A NEW DATABASE Named "DataWarehouse" and their schemas
*/
-- Create Database "DataWareHouse"
USE master
CREATE DATABASE Datawarehouse;
GO --Separator

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;

