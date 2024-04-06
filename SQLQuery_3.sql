--1
SELECT * 
FROM [Wards];

--2
SELECT [Surname], [Phone]
FROM [Doctors];

--3
SELECT DISTINCT [Floor]
FROM [Wards];

--4
SELECT [Name] AS 'Name of Disease', [Severity] AS 'Severity of Disease'
FROM [Diseases]

--5
SELECT DISTINCT Doc.[Name], Dep.[Financing], Dis.[Name]
FROM [Doctors] Doc, [Departments] Dep,[Diseases] Dis;

--6 
SELECT [Name]
FROM [Departments] 
WHERE [Building] = 5 AND [Financing] < 30000;

--7
SELECT [Name]
FROM [Departments] 
WHERE [Building] = 3 AND [Financing] BETWEEN 12000 AND 15000;

--8
SELECT [Name]
FROM [Departments] 
WHERE [Building] IN (4, 5) AND [Floor] = 1;

--9
SELECT [Name], [Building], [Financing]
FROM [Departments] 
WHERE [Building] IN (3, 6) AND [Financing] BETWEEN 11000 AND 25000;

--10
SELECT [Surname]
FROM [Doctors]
WHERE ([Premium] + [Salary]) > 1500;

--11
SELECT [Surname]
FROM [Doctors]
WHERE ([Salary] / 2) > [Premium];

--12
SELECT [Name]
FROM [Examinations]
WHERE [DayOfWeek] <= 3 AND [StartTime] = '12:00:00' AND [EndTime] = '15:00:00';

--13
SELECT [Name], [Building] 
FROM [Departments]
WHERE [Building] IN  (1, 3, 8, 10);

--14
SELECT [Name]
FROM [Diseases]
WHERE NOT [Severity] IN (1, 2);

--15
SELECT [Name]
FROM [Departments]
WHERE NOT [Building] IN (1, 3);

--16
SELECT [Name] 
FROM [Departments]
WHERE [Building] IN (1, 3);

--17
SELECT [Surname]
FROM [Doctors]
WHERE [Surname] LIKE 'N%';

