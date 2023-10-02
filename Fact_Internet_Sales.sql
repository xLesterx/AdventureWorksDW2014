-- CLEANING FACT_INTERNET_SALES
SELECT 
  [ProductKey], 
  [OrderDateKey] AS OrderDateKey, 
  [DueDateKey] AS DueDateKey, 
  [CustomerKey] AS CustomerKey, 
  [SalesOrderNumber] AS SalesOrderNo, 
  [SalesAmount] AS SalesAmount, 
  [ShipDate] AS ShipDateKey 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  YEAR(OrderDateKey) >= YEAR(GETDATE()) -2 
ORDER BY 
  OrderDateKey;
