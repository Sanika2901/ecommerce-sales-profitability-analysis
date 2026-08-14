SELECT
    c.City,
    SUM(o.Net_Sales) AS Revenue,
    SUM(o.Profit) AS Profit
FROM dbo.Orders AS o
INNER JOIN dbo.Customers AS c
    ON o.Customer_ID = c.Customer_ID
WHERE o.Order_Status = 'Delivered'
GROUP BY c.City
ORDER BY Revenue DESC;