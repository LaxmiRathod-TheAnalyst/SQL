/*Partition by*/
SELECT *
FROM [SQL Tutorial]..EmployeeDemographics

SELECT *
FROM [SQL Tutorial]..EmployeeSalary

SELECT *
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) 
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

/*same o/p as partition*/
SELECT Gender, COUNT(Gender) 
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender



