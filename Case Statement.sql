/*case statement... specify condn,what u want returned when condn mets*/
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'old'
	ELSE 'young'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age Between 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley' /* multiple condition meeting same criteria so very first will be returned ..old*/
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Stanley' 
	WHEN Age > 30 THEN 'Old'/*..stanley*/
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = ' Salesman' THEN Salary + (Salary *.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID