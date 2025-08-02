/*
===============================================================================
Purpose:
    - Calculate total monthly sales.
    - Analyze how sales accumulate over time using a running (cumulative) total.
    - Useful for identifying growth trends and seasonality in revenue.
===============================================================================
*/

-- Total sales for each month
SELECT 
    DATETRUNC(month, order_date) AS order_month,
    SUM(sales_amount) AS total_sales
FROM dbo.fact_sales 
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date);

-- Cumulative total sales for each month
WITH monthly_sales AS (
    SELECT 
        DATETRUNC(month, order_date) AS order_month,
        SUM(sales_amount) AS total_sales
    FROM dbo.fact_sales 
    GROUP BY DATETRUNC(month, order_date)
)
SELECT 
    order_month,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_month) AS cumulative_sales
FROM monthly_sales
ORDER BY order_month;
