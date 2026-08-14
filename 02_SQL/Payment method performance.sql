SELECT
    Payment_Method,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Net_Sales) AS Revenue,
    SUM(Profit) AS Profit
FROM dbo.Orders
WHERE Order_Status = 'Delivered'
GROUP BY Payment_Method
ORDER BY Revenue DESC;