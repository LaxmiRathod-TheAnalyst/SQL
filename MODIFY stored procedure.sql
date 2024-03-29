USE [SQL Tutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 18-12-2023 23:27:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle nvarchar(100)
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
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT * 
FROM #temp_employee
