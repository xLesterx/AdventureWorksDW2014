--CLEANING DIM_DATE--
SELECT  [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS Week_No
      ,[EnglishMonthName] AS Months
	  ,LEFT(EnglishMonthName,3) AS Months_Short
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month_No
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
     --,[FiscalYear]
     --,[FiscalSemester]
  FROM [AdventureWorksDW2014].[dbo].[DimDate]
  WHERE CalendarYear BETWEEN '2012' AND '2013'