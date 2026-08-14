USE EcommerceAnalytics;

SELECT 'Customers' AS Table_Name, COUNT(*) AS Row_Count
FROM dbo.Customers

UNION ALL

SELECT 'Orders', COUNT(*)
FROM dbo.Orders

UNION ALL

SELECT 'Products', COUNT(*)
FROM dbo.Products;