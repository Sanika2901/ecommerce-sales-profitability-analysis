USE EcommerceAnalytics;

WITH CustomerOrders AS
(
    SELECT
        Customer_ID,
        COUNT(DISTINCT Order_ID) AS Order_Count
    FROM dbo.Orders
    WHERE Order_Status = 'Delivered'
    GROUP BY Customer_ID
)
SELECT
    CASE
        WHEN Order_Count = 1 THEN 'New Customer'
        ELSE 'Returning Customer'
    END AS Customer_Type,
    COUNT(*) AS Customer_Count
FROM CustomerOrders
GROUP BY
    CASE
        WHEN Order_Count = 1 THEN 'New Customer'
        ELSE 'Returning Customer'
    END;