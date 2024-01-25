/*UNIONS ... taking out and removing duplicates...darryl was in both the tables*/
CREATE TABLE WareHouseEmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

SELECT * 
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ON EmployeeDemographics.Age = WareHouseEmployeeDemographics.EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics

/*union all... all the info regardless if it is duplictae or not OR can say displays data as it is*/
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID 
/*worked so well coz of same column*/



SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID
/*DIFF BUT CAN BE ABLE TO COMBINE*/

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID /*JUST COZ DATATYPES ARE SAME AND SAME NO. OF COLS*/
/*Be careful while using unions with diff tab*/