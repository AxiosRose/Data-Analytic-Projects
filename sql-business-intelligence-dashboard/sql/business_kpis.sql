-- Total Revenue
SELECT ROUND(SUM(Sales), 2) AS total_revenue
FROM sales_data;

-- Revenue by Region
SELECT Region, ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;

-- Revenue by Category
SELECT Category, ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;

-- Revenue by Segment
SELECT Segment, ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY Segment
ORDER BY total_sales DESC;

-- Top 10 Customers
SELECT "Customer Name", ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;

-- Top 10 Products
SELECT "Product Name", ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT 
    SUBSTR("Order Date", 1, 7) AS month,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;