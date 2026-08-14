USE EcommerceAnalytics;

SELECT TOP 10
    o.Customer_ID,
    c.Customer_Name,
    c.City,
    COUNT(DISTINCT o.Order_ID) AS Order_Count,
    SUM(o.Net_Sales) AS Revenue,
    SUM(o.Profit) AS Profit
FROM dbo.Orders AS o
INNER JOIN dbo.Customers AS c
    ON o.Customer_ID = c.Customer_ID
WHERE o.Order_Status = 'Delivered'
GROUP BY
    o.Customer_ID,
    c.Customer_Name,
    c.City
ORDER BY Revenue DESC;