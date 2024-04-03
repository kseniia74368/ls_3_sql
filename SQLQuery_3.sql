--1.
SELECT *
FROM [Departments]
ORDER BY Id DESC;

--2.
SELECT [Name] AS "Group Name", [Rating] AS "Group Rating"
FROM [Groups];

--3
SELECT Surname, 
	[Premium] / ([Premium] + [Salary]) * 100 AS "Bідсоток ставки по 
відношенню до надбавки",
	([Salary] / ([Salary] + [Premium])) * 100 AS "Bідсоток ставки по відношенню
до зарплати"
FROM [Teachers];

--4
SELECT 'The dean of faculty ' + [Name] + ' is ' + [Dean] AS "Info"
FROM [Faculties];

--5
SELECT [Surname] 
FROM [Teachers]
WHERE [IsProfessor] = 'True' AND [Salary] > 1050;

--6
SELECT [Name]
FROM [Departments]
WHERE [Financing] < 11000 OR [Financing] > 25000;

--7
SELECT [Name]
FROM [Faculties]
WHERE[Name] != 'Computer 
Science';

--8
SELECT [Surname], [Position]
FROM [Teachers]
WHERE [IsProfessor] = 'False';

--9
SELECT [Surname], [Position], [Premium]
FROM [Teachers]
WHERE [Premium]  BETWEEN 160 AND 550;

--10
SELECT [Surname], [Salary]
FROM [Teachers]
WHERE [IsAssistant] = 'True';

--11
SELECT [Surname], [Position]
FROM [Teachers]
WHERE [EmploymentDate] < '2000-01-01'

--12
SELECT [Name] AS [Name of Department]
FROM [Departments]
WHERE [Name] < 'Software Development'
ORDER BY [Name]

--13
SELECT [Surname]
FROM [Teachers]
WHERE ([Salary] + [Premium]) <= 1200 AND [IsAssistant] = 'True';

--14
SELECT [Name]
FROM [Groups]
WHERE [Year] = 5 AND [Rating] BETWEEN 2 AND 4;

--15
SELECT [Surname]
FROM [Teachers]
WHERE [IsAssistant] = 'True' AND ([Salary] < 550 OR [Premium] < 200);