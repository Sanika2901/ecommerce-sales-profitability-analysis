SELECT
    COUNT(*) AS Total_Rows,
    COUNT(Order_ID) AS Order_ID_Count,
    COUNT(Customer_ID) AS Customer_ID_Count,
    COUNT(Product_ID) AS Product_ID_Count
FROM dbo.Orders;