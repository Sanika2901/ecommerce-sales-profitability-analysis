SELECT TOP 10
    p.Product_Name,
    SUM(o.Net_Sales) AS Revenue,
    SUM(o.Profit) AS Profit,
    ROUND(
        SUM(o.Profit) * 100.0 / NULLIF(SUM(o.Net_Sales), 0),
        2
    ) AS Profit_Margin
FROM dbo.Orders AS o
INNER JOIN dbo.Products AS p
    ON o.Product_ID = p.Product_ID
WHERE o.Order_Status = 'Delivered'
GROUP BY p.Product_Name
ORDER BY Profit DESC;