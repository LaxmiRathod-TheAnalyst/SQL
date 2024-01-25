/* Having Caluse : filter the result based on aggregate functions*/
SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle

/* jobs that have more than one person*/
SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle /* error..can't use aggregate function in where statement...ca be done using having*/

SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle) > 1
GROUP BY JobTitle /*still getting a error...coz having statement needs to go after the group by and before the order by*/

/* correct one*/
SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)


