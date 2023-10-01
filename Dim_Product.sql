--CLEANING DIM_PRODUCTS TABLE

-- Alter the column data type separately 
ALTER TABLE [AdventureWorksDW2014].[dbo].[DimProduct]
ALTER COLUMN [Status] NVARCHAR(8);

SELECT Status
FROM [AdventureWorksDW2014].[dbo].[DimProduct];

SELECT 
	  p.[ProductKey]
      ,p.[ProductAlternateKey] AS Product_Code
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS Product_Name
	  ,ps.EnglishProductSubcategoryName AS Sub_Category
	  ,pc.EnglishProductCategoryName AS Product_Category
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS Product_Color
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS Product_Size
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS Product_Line
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS Product_Name
      --,[LargePhoto]
      ,p.[EnglishDescription] AS Product_Description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL(p.Status, 'Outdated') AS Product_Status
FROM [AdventureWorksDW2014].[dbo].[DimProduct] AS p
INNER JOIN [AdventureWorksDW2014].[dbo].[DimProductSubcategory] AS ps 
    ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
INNER JOIN [AdventureWorksDW2014].[dbo].[DimProductCategory] AS pc
    ON pc.ProductCategoryKey = ps.ProductCategoryKey
ORDER BY p.ProductKey