CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)


CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwaight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Palmer', 35, 'Male'),
(1007, 'Meredith', 'Scott', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manage', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'IT', 42000)

/* Select Statement *, Top, Disinct(unique values), Count(non null values), As, Max, Min, Avg */
SELECT * 
FROM EmployeeDemographics

SELECT FirstName 
FROM EmployeeDemographics

SELECT FirstName, LastName 
FROM EmployeeDemographics

SELECT Top 5 *
FROM EmployeeDemographics

SELECT DISTINCT (EmployeeID)
FROM EmployeeDemographics /*All 9 rows returns as every one is unique */

SELECT DISTINCT (Gender)
FROM EmployeeDemographics

SELECT COUNT (LastName)  /*no col name*/ 
FROM EmployeeDemographics

SELECT COUNT (LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT MAX (Salary)
FROM EmployeeSalary

SELECT MIN (Salary)
FROM EmployeeSalary

SELECT AVG (Salary)
FROM EmployeeSalary /* SELECT * FROM SQLTutorial.dbo.EmployeeSalary ....if you're in another db */



/* WHERE--> limit the amount of data and specify what data u want */
/* =, <>(not equal), <, >, AND, OR, like, null, not null, in(Multiple equal statement) */

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' /*all info of jim row 8/

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age < 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 30

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%0%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL /* RETURNS EVERYTHING AS NOTHING IS NULL */

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' ANd LastName = 'Halpert' /*insead*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim' , 'Halpert') 






















