/*Aliasing*/
/*col name*/

SELECT FirstName AS Fname /*renaming col name*/
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName Fname /*renaming col name without AS*/
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName/* no as.... no col name*/
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM [SQL Tutorial].dbo.EmployeeDemographics

/*table name*/
SELECT Demo.EmployeeID, Sal.Salary/*need to mention col name*/
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

/* avoid use of a.colname...instaed use demo.colname for mul tab*/
SELECT Demo.EmployeeID, Demo.FirstName, demo.LastName, Sal.JobTitle, Ware.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID  = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID




