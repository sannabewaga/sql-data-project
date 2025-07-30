/*
Purpose:
This stored procedure `bronze.load_bronze` is used to load raw data from multiple CSV files 
into corresponding staging (bronze layer) tables in the SQL data warehouse. 
It follows an ETL-like pattern by:
1. Truncating each table to remove old data.
2. Performing a BULK INSERT from a specified local CSV file into each table.

This procedure should be executed to refresh the bronze layer with the latest source data.
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze 
AS 
BEGIN
    -- Load CRM Customer Info
    PRINT 'Loading CRM Customer Info...';
    TRUNCATE TABLE bronze.crm_cust_info;

    BULK INSERT bronze.crm_cust_info 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded CRM Customer Info.';


    -- Load CRM Product Info
    PRINT 'Loading CRM Product Info...';
    TRUNCATE TABLE bronze.crm_prd_info;

    BULK INSERT bronze.crm_prd_info 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded CRM Product Info.';


    -- Load CRM Sales Details
    PRINT 'Loading CRM Sales Details...';
    TRUNCATE TABLE bronze.crm_sales_details;

    BULK INSERT bronze.crm_sales_details 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded CRM Sales Details.';


    -- Load ERP Customer AZ12
    PRINT 'Loading ERP Customer AZ12...';
    TRUNCATE TABLE bronze.erp_cust_az12;

    BULK INSERT bronze.erp_cust_az12 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded ERP Customer AZ12.';


    -- Load ERP Location A101
    PRINT 'Loading ERP Location A101...';
    TRUNCATE TABLE bronze.erp_loc_a101;

    BULK INSERT bronze.erp_loc_a101 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded ERP Location A101.';


    -- Load ERP Price Category G1V2
    PRINT 'Loading ERP Price Category G1V2...';
    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    BULK INSERT bronze.erp_px_cat_g1v2 
    FROM 'C:\Users\gaura\Desktop\projects\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    PRINT 'Loaded ERP Price Category G1V2.';

    PRINT 'All data loaded successfully into Bronze layer.';
END;
