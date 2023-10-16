--CLEANING DIM_DATE--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS Week_No, 
  [EnglishMonthName] AS Months, 
  LEFT(EnglishMonthName, 3) AS Months_Short, 
  [MonthNumberOfYear] AS Month_No, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2021