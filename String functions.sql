/*String Functions - trim, ltrim, rtrim, replace, substring, upper, lower + Usecases*/
DROP TABLE EmployeeErrors;

CREATE TABLE EmployeeErrors
(EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001 ', 'Jimbo', 'Halbert'),
(' 1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT * 
FROM EmployeeErrors

/* trim, ltrim, rtrim*/

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

/*Replace*/
SELECT LastName, REPLACE(LastName, '- Fired', ' ') AS LastNameFixed
FROM EmployeeErrors /* ' ' replace it with balnk space*/

/*Substring*/
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT Err.FirstName, Demo.FirstName
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
	ON Err.FirstName = Demo.FirstName

SELECT SUBSTRING(Err.FirstName,1,3), SUBSTRING(Demo.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
	ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)

SELECT Err.FirstName,SUBSTRING(Err.FirstName,1,3), Demo.FirstName, SUBSTRING(Demo.FirstName,1,3)
FROM EmployeeErrors Err
JOIN EmployeeDemographics Demo
	ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)

/* substring on Gender,lastname, dob*/

/*upper and lower*/
SELECT FirstName, lower(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

