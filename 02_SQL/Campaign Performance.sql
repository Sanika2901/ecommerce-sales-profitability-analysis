USE EcommerceAnalytics;

SELECT
    Campaign_ID,
    SUM(Net_Sales) AS Revenue,
    SUM(Cost) AS Campaign_Cost,
    SUM(Profit) AS Profit,
    COUNT(DISTINCT Order_ID) AS Orders
FROM dbo.Orders
WHERE Order_Status = 'Delivered'
GROUP BY Campaign_ID
ORDER BY Revenue DESC;