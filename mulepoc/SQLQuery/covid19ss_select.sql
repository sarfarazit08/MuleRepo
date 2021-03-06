/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
	   [active]
      ,[confirmed]
      ,[deaths]
      ,[recovered]
      ,[deltaconfirmed]
      ,[deltadeaths]
      ,[deltarecovered]
      ,[state]
      ,[statecode]
      ,[lastupdatedtime]
  FROM [MuleDB].[dbo].[covid19ss] (nolock)
  order by state

  go

 -- truncate table [dbo].[covid19ss]
 -- Select * from dbo.covid19ss as stateStatsFromDB FOR XML RAW ('statewisedata'), ROOT, ELEMENTS ;


