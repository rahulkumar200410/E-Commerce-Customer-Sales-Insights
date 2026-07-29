CREATE DATABASE customer_sales_insights;
USE customer_sales_insights;



-- ============================================
-- Data Preview
-- Displays first 10 rows
-- ============================================

SELECT *
FROM sales_analysis_dataset
LIMIT 10;

-- ============================================
-- Total Rows Check
-- Verifies imported dataset size
-- ============================================

SELECT COUNT(*) AS Total_Rows
FROM sales_analysis_dataset;

-- ============================================
-- Total Revenue Analysis
-- Calculates overall revenue generated
-- ============================================

SELECT 
    ROUND(SUM(TotalPrice), 2) AS Total_Revenue
FROM sales_analysis_dataset;

-- ============================================
-- Total Orders Analysis
-- Counts total unique orders
-- ============================================

SELECT 
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM sales_analysis_dataset;

-- ============================================
-- Total Customers Analysis
-- Counts unique customers
-- ============================================

SELECT 
    COUNT(DISTINCT CustomerID) AS Total_Customers
FROM sales_analysis_dataset;

-- ============================================
-- Top 10 Countries by Revenue
-- Identifies highest revenue generating countries
-- ============================================

SELECT 
    Country,
    ROUND(SUM(TotalPrice),2) AS Revenue
FROM sales_analysis_dataset
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;

-- ============================================
-- Monthly Revenue Trend
-- Analyzes monthly sales performance
-- ============================================

SELECT 
    InvoiceMonth,
    ROUND(SUM(TotalPrice),2) AS Revenue
FROM sales_analysis_dataset
GROUP BY InvoiceMonth
ORDER BY InvoiceMonth;

-- ============================================
-- Top Products by Revenue
-- Finds best-selling products
-- ============================================

SELECT 
    Description,
    ROUND(SUM(TotalPrice),2) AS Revenue
FROM sales_analysis_dataset
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

-- ============================================
-- Top Customers Analysis
-- Identifies highest spending customers
-- ============================================

SELECT 
    CustomerID,
    ROUND(SUM(TotalPrice),2) AS Total_Spent
FROM sales_analysis_dataset
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

-- ============================================
-- Average Order Value
-- Calculates average revenue per order
-- ============================================

SELECT 
    ROUND(SUM(TotalPrice) / COUNT(DISTINCT InvoiceNo), 2) AS Avg_Order_Value
FROM sales_analysis_dataset;

-- ============================================
-- Most Sold Products
-- Finds products with highest quantity sold
-- ============================================

SELECT 
    Description,
    SUM(Quantity) AS Total_Quantity_Sold
FROM sales_analysis_dataset
GROUP BY Description
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;

-- ============================================
-- Revenue by Year
-- Analyzes yearly revenue trend
-- ============================================

SELECT 
    InvoiceYear,
    ROUND(SUM(TotalPrice),2) AS Revenue
FROM sales_analysis_dataset
GROUP BY InvoiceYear
ORDER BY InvoiceYear;

-- ============================================
-- Product Revenue Ranking
-- Uses Window Function for ranking
-- ============================================

SELECT
    Description,
    ROUND(SUM(TotalPrice),2) AS Revenue,
    RANK() OVER (ORDER BY SUM(TotalPrice) DESC) AS Product_Rank
FROM sales_analysis_dataset
GROUP BY Description;

-- ============================================
-- Customer Segmentation
-- Groups customers based on spending
-- ============================================

SELECT
    CustomerID,
    ROUND(SUM(TotalPrice),2) AS Total_Spent,

    CASE
        WHEN SUM(TotalPrice) > 5000 THEN 'VIP Customer'
        WHEN SUM(TotalPrice) > 2000 THEN 'Loyal Customer'
        ELSE 'Regular Customer'
    END AS Customer_Segment

FROM sales_analysis_dataset
GROUP BY CustomerID;



-- ============================================
-- Revenue Contribution by Country
-- ============================================

SELECT
    Country,
    ROUND(SUM(TotalPrice),2) AS Revenue,
    ROUND(100 * SUM(TotalPrice) /
        (SELECT SUM(TotalPrice) FROM sales_analysis_dataset),2) AS Revenue_Percentage
FROM sales_analysis_dataset
GROUP BY Country
ORDER BY Revenue DESC;

-- ============================================
-- Customer Purchase Frequency
-- ============================================

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM sales_analysis_dataset
GROUP BY CustomerID
ORDER BY Total_Orders DESC
LIMIT 10;


-- =========================================================
-- End of Customer Sales Insights SQL Analysis
-- =========================================================