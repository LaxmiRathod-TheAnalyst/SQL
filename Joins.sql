/* JOINS....INNER JOIN (BYDEFAULT), FULL/LEFT/RIGHT OUTER JOIN */
/*dbname.table name ...if in another db*/ /*[] brackets if space between db name*/

INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)


SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /* no output two fields so specify*/

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /* Any one of the table*/

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*OPPOSITE OF ABOVE*/

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 



/*USECASES FOR JOINS*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

/*HIGHEST PAID EMP*/

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
WHERE FirstName <> 'Michael'

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

SELECT JobTitle, Avg(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle





