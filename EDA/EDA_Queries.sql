--Show all users location in users table
SELECT [Id]
      ,[Location]
  FROM [StackOverflow].[dbo].[Users]

--count and group users by location
SELECT count(l.UserId) as Total_Users,[Country]
  FROM [StackOverflow].[dbo].[Location] l
  group by l.Country

--Update locations of certain entries
Update Location
Set
Country = 'United Arab Emirates' --right name
Where
Country = 'Unites Arab Emirates'; --wrong name

--count users of specific nationality
SELECT count(l.UserId) as Total_Users,[Country]
  FROM [StackOverflow].[dbo].[Location] l
  where l.Country = 'Britain'
  group by l.Country
  
  --SQL sample
 select top (664) u.id,u.Location from users u TABLESAMPLE (664 ROWS)