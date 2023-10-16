-- CLEANING DIM_CUSTOMER
SELECT 
  c.CustomerKey AS CustomerKey, 
  c.[FirstName] AS FirstName, 
  c.[LastName] AS LastName, 
  c.FirstName + ' ' + c.LastName AS FullName, 
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.[DateFirstPurchase] AS DateFirstPurchase, 
  g.city AS Customer_City --JOINED IN CUSTOMER CITY FROM GEOGRAPHY TABLE
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey