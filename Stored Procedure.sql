CREATE PROCEDURE TEST 
AS
SELECT * 
FROM EmployeeDemographics

EXEC TEST



CREATE PROCEDURE Temp_Employee
AS 
CREATE TABLE #temp_employee
(JobTitle varchar(100),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_employee

EXEC Temp_Employee @JobTitle = 'Salesman'