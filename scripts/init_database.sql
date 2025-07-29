-- =============================================
-- Purpose: 
-- This script sets up the initial structure for a 
-- Data Warehouse using the Medallion Architecture.
-- It creates a new database named 'DataWarehouse' 
-- and defines three schemas: 'bronze', 'silver', 
-- and 'gold' to logically separate raw, refined, 
-- and analytics-ready data layers.
-- =============================================

-- Step 1: Connect to the system database
USE master;
GO

-- Step 2: Create the main Data Warehouse database
CREATE DATABASE DataWarehouse;
GO

-- Step 3: Switch to the newly created DataWarehouse
USE DataWarehouse;
GO

-- Step 4: Create the 'bronze' schema (for raw/staged data)
CREATE SCHEMA bronze;
GO

-- Step 5: Create the 'silver' schema (for cleaned/transformed data)
CREATE SCHEMA silver;
GO

-- Step 6: Create the 'gold' schema (for final analytics-ready data)
CREATE SCHEMA gold;
GO
