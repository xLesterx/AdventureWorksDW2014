--CLEANING FACT_INTERNET_SALES
SELECT  
[ProductKey]
      ,[OrderDateKey] AS OrderDateKey
      ,[DueDateKey] AS DueDateKey
      --,[ShipDateKey]
      ,[CustomerKey] AS CustomerKey
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
     ,[SalesOrderNumber] AS SalesOrderNo
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount] AS SalesAmount
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      ,[ShipDate] AS ShipDateKey
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey, 4)  BETWEEN '2012' AND '2014'
  ORDER BY OrderDateKey
