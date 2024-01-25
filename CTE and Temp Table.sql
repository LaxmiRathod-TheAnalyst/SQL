/*CTE (Common Table Expression)*/
WITH CTE_Employee as 
(
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM [SQL Tutorial]..EmployeeDemographics Emp
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Emp.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee


/*Temp Tables*/
CREATE TABLE #temp_Employee
(EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee 

INSERT INTO #temp_Employee VALUES
('1001', 'HR', '45000')

INSERT INTO #temp_Employee
SELECT * 
FROM [SQL Tutorial]..EmployeeSalary /* copy all of the data from sal tab into temp ...biggest use of temp */

DROP TABLE IF EXISTS #Temp_Employee2 /*allow u to  run query over and over again*/
/*if u run everything below it won't run so use above query */
CREATE TABLE #Temp_Employee2
(JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics Emp
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #Temp_Employee2
