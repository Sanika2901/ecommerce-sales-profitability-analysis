SELECT
    p.Category,
    SUM(o.Net_Sales) AS Revenue,
    SUM(o.Profit) AS Profit
FROM dbo.Orders AS o
INNER JOIN dbo.Products AS p
    ON o.Product_ID = p.Product_ID
WHERE o.Order_Status = 'Delivered'
GROUP BY p.Category
ORDER BY Revenue DESC;