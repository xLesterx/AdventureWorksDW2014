-- CLEANING DIM_CUSTOMER
SELECT 
    c.CustomerKey AS CustomerKey,
    -- ,[GeographyKey]
    -- ,[CustomerAlternateKey]
    -- ,[Title]
    c.[FirstName] AS FirstName,
    -- ,[MiddleName]
    c.[LastName] AS LastName,
    c.FirstName + ' ' + c.LastName AS FullName,
    -- ,[NameStyle]
    -- ,[BirthDate]
    -- ,[MaritalStatus]
    -- ,[Suffix]
    CASE c.[Gender] 
        WHEN 'M' THEN 'Male'
        WHEN 'F' THEN 'Female'
    END AS Gender,
    -- ,[EmailAddress]
    -- ,[YearlyIncome]
    -- ,[TotalChildren]
    -- ,[NumberChildrenAtHome]
    -- ,[EnglishEducation]
    -- ,[SpanishEducation]
    -- ,[FrenchEducation]
    -- ,[EnglishOccupation]
    -- ,[SpanishOccupation]
    -- ,[FrenchOccupation]
    -- ,[HouseOwnerFlag]
    -- ,[NumberCarsOwned]
    -- ,[AddressLine1]
    -- ,[AddressLine2]
    -- ,[Phone]
    c.[DateFirstPurchase] AS DateFirstPurchase
	,g.city AS Customer_City   --JOINED IN CUSTOMER CITY FROM GEOGRAPHY TABLE
    -- ,[CommuteDistance]
FROM [AdventureWorksDW2014].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2014].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY CustomerKey 
