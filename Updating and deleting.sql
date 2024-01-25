/*updating and deleting data*/
UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012 /*Specify what column or what value u want to insert into that cell ...
if only this line gets executed then all rows of empid wil set to 1012*/
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax' 

/*empid is unique for each so we cn say where emp id = no.*/
UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012

DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics/*...del whole tab ...use select before u del it to seee what you're gonna del*/
WHERE EmployeeID = 1005
