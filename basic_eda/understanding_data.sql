-- ==========================================
-- 🧾 EXPLORATORY DATA ANALYSIS ON SALES DB
-- ==========================================

-- 🔍 1. List all Tables in the Database
SELECT * 
FROM INFORMATION_SCHEMA.TABLES;

-- 🔍 2. List all Columns with Metadata
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS;

-- 🔍 3. Explore Dimension Tables
-- Distinct Countries from Customers
SELECT DISTINCT country 
FROM dbo.dim_customer;

-- Distinct Product Categories and Subcategories
SELECT DISTINCT category, subcategory 
FROM dbo.dim_products;

-- 🔍 4. Explore Fact Tables

-- Date Range of Sales
SELECT 
    MIN(order_date) AS min_order_date,
    MAX(order_date) AS max_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS months_covered
FROM dbo.fact_sales;

-- Date Range of Customer Birthdates
SELECT 
    MIN(birthdate) AS earliest_birthdate,
    MAX(birthdate) AS latest_birthdate
FROM dbo.dim_customer;

-- Sales Metrics
SELECT SUM(sales_amount) AS total_sales_amount 
FROM dbo.fact_sales;

SELECT SUM(quantity) AS total_quantity_sold 
FROM dbo.fact_sales;

SELECT AVG(price) AS average_product_price 
FROM dbo.fact_sales;

SELECT COUNT(DISTINCT order_number) AS total_orders 
FROM dbo.fact_sales;

-- Product Metrics
SELECT COUNT(product_name) AS total_products 
FROM dbo.dim_products;

-- Customer Metrics
SELECT COUNT(customer_key) AS total_customers 
FROM dbo.dim_customer;

-- Customers Who Made Purchases (from fact table)
SELECT COUNT(DISTINCT customer_key) AS active_customers 
FROM dbo.fact_sales;

-- 🧾 Summary Report: Key Metrics Combined
SELECT 'Total Sales Amount' AS measure_name, SUM(sales_amount) AS measure_value 
FROM dbo.fact_sales
UNION ALL
SELECT 'Total Quantity Sold', SUM(quantity) 
FROM dbo.fact_sales
UNION ALL
SELECT 'Average Product Price', AVG(price) 
FROM dbo.fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_number) 
FROM dbo.fact_sales
UNION ALL
SELECT 'Total Products', COUNT(product_name) 
FROM dbo.dim_products
UNION ALL
SELECT 'Total Customers', COUNT(customer_key) 
FROM dbo.dim_customer
UNION ALL
SELECT 'Active Customers', COUNT(DISTINCT customer_key) 
FROM dbo.fact_sales;



