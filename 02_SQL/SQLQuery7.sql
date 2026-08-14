USE EcommerceAnalytics;

SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    SUM(Net_Sales) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    AVG(Net_Sales) AS Average_Order_Value
FROM dbo.Orders
WHERE Order_Status = 'Delivered';