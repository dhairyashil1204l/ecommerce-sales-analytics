-- =============================================
-- E-Commerce Sales & Customer Analytics Dashboard
-- Data Validation Queries
-- =============================================

USE Ecommerce_Analytics;
GO


-- Check row count of all tables

SELECT COUNT(*) AS Total_Customers
FROM dbo.customers;


SELECT COUNT(*) AS Total_Orders
FROM dbo.orders;


SELECT COUNT(*) AS Total_Order_Items
FROM dbo.order_items;


SELECT COUNT(*) AS Total_Products
FROM dbo.products;


SELECT COUNT(*) AS Total_Sellers
FROM dbo.sellers;


SELECT COUNT(*) AS Total_Payments
FROM dbo.payments;



-- Check sample data

SELECT TOP 5 *
FROM dbo.customers;


SELECT TOP 5 *
FROM dbo.orders;


SELECT TOP 5 *
FROM dbo.order_items;


SELECT TOP 5 *
FROM dbo.products;


SELECT TOP 5 *
FROM dbo.sellers;


SELECT TOP 5 *
FROM dbo.payments;