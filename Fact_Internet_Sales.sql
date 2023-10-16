-- CLEANING FACT_INTERNET_SALES
SELECT 
  [ProductKey],	
   CAST(LEFT(CONVERT(CHAR(8), [OrderDateKey]), 4) AS INT) AS OrderYear, 
  [OrderDateKey] AS OrderDateKey, 
  [DueDateKey] AS DueDateKey, 
  [CustomerKey] AS CustomerKey, 
  [SalesOrderNumber] AS SalesOrderNo, 
  [SalesAmount] AS SalesAmount, 
  [ShipDate] AS ShipDateKey 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  CAST(LEFT(CONVERT(CHAR(8), [OrderDateKey]), 4) AS INT) >= YEAR(GETDATE()) - 2 
ORDER BY 
  OrderDateKey