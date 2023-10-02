--CLEANING DIM_PRODUCTS TABLE

-- Alter the column data type separately 
ALTER TABLE 
  [AdventureWorksDW2019].[dbo].[DimProduct] ALTER COLUMN [Status] NVARCHAR(8);
SELECT 
  Status 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct];

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS Product_Code, 
  p.[EnglishProductName] AS Product_Name, 
  ps.EnglishProductSubcategoryName AS Sub_Category, 
  pc.EnglishProductCategoryName AS Product_Category, 
  p.[Color] AS Product_Color, 
  p.[Size] AS Product_Size, 
  p.[ProductLine] AS Product_Line, 
  p.[ModelName] AS Product_Name, 
  p.[EnglishDescription] AS Product_Description, 
  ISNULL(p.Status, 'Outdated') AS Product_Status 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  INNER JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  INNER JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey
