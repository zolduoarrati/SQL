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
 
 ---SQL Sampling NEW
  SELECT u.id,u.Location FROM users u
  WHERE (ABS(CAST(
  (BINARY_CHECKSUM(*) *
  RAND()) as int)) % 100) < 10
  ORDER BY RAND()
  OFFSET 0 ROWS FETCH FIRST 666 ROWS ONLY;
  
  
--SQL Query to find missing rows between two related tables  
  SELECT * FROM [StackOverflow].[dbo].[Location_Google] g WHERE NOT EXISTS 
   (SELECT * FROM [StackOverflow].[dbo].[Location_Nominatim] n WHERE n.Id = g.Id)
   
   SELECT A.ABC_ID, A.VAL FROM A WHERE VAL NOT IN 
    (SELECT VAL FROM B WHERE B.ABC_ID = A.ABC_ID)
	
	SELECT A.ABC_ID, A.VAL FROM A WHERE VAL NOT IN 
    (SELECT VAL FROM B WHERE B.ABC_ID = A.ABC_ID)
	
	SELECT A.ABC_ID, A.VAL LEFT OUTER JOIN B 
    ON A.ABC_ID = B.ABC_ID AND A.VAL = B.VAL FROM A WHERE B.VAL IS NULL