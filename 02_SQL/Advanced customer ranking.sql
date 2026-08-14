WITH CustomerRevenue AS
(
    SELECT
        o.Customer_ID,
        c.Customer_Name,
        SUM(o.Net_Sales) AS Revenue
    FROM dbo.Orders AS o
    INNER JOIN dbo.Customers AS c
        ON o.Customer_ID = c.Customer_ID
    WHERE o.Order_Status = 'Delivered'
    GROUP BY
        o.Customer_ID,
        c.Customer_Name
)
SELECT
    Customer_ID,
    Customer_Name,
    Revenue,
    RANK() OVER (ORDER BY Revenue DESC) AS Revenue_Rank
FROM CustomerRevenue
ORDER BY Revenue_Rank;