-- =============================================
-- E-Commerce Sales & Customer Analytics Dashboard
-- Business Analysis Queries
-- =============================================

USE Ecommerce_Analytics;
GO


-- =============================================
-- 1. Total Orders
-- =============================================

SELECT 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM dbo.orders;



-- =============================================
-- 2. Total Revenue
-- =============================================

SELECT 
    SUM(price + freight_value) AS Total_Revenue
FROM dbo.order_items;



-- =============================================
-- 3. Average Order Value
-- =============================================

SELECT 
    AVG(order_total) AS Average_Order_Value
FROM
(
    SELECT 
        order_id,
        SUM(price + freight_value) AS order_total
    FROM dbo.order_items
    GROUP BY order_id
) AS Order_Summary;



-- =============================================
-- 4. Monthly Sales Trend
-- =============================================

SELECT
    YEAR(o.order_purchase_timestamp) AS Order_Year,
    MONTH(o.order_purchase_timestamp) AS Order_Month,
    SUM(oi.price + oi.freight_value) AS Monthly_Revenue
FROM dbo.orders o
JOIN dbo.order_items oi
ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY Order_Year, Order_Month;



-- =============================================
-- 5. Top Product Categories by Revenue
-- =============================================

SELECT TOP 10
    p.product_category_name,
    SUM(oi.price + oi.freight_value) AS Revenue
FROM dbo.order_items oi
JOIN dbo.products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY Revenue DESC;



-- =============================================
-- 6. Customer Order Frequency
-- =============================================

SELECT
    customer_id,
    COUNT(order_id) AS Total_Orders
FROM dbo.orders
GROUP BY customer_id
ORDER BY Total_Orders DESC;



-- =============================================
-- 7. Sales by State
-- =============================================

SELECT
    c.customer_state,
    SUM(oi.price + oi.freight_value) AS Revenue
FROM dbo.customers c
JOIN dbo.orders o
ON c.customer_id = o.customer_id
JOIN dbo.order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY Revenue DESC;



-- =============================================
-- 8. Order Status Analysis
-- =============================================

SELECT
    order_status,
    COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY order_status
ORDER BY Total_Orders DESC;



-- =============================================
-- 9. Delivery Performance
-- =============================================

SELECT
    AVG(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS Average_Delivery_Days
FROM dbo.orders
WHERE order_delivered_customer_date IS NOT NULL;