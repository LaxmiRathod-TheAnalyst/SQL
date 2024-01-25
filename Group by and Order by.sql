/*group by, order by*/
SELECT DISTINCT(Gender)
FROM EmployeeDemographics

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age /* count why not here coz... its a derived column*/

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE AGE > 31
GROUP BY Gender
ORDER BY CountGender /* by default asc*/

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE AGE > 31
GROUP BY Gender
ORDER BY CountGender Desc

SELECT * 
FROM EmployeeDemographics
ORDER BY Age Desc

SELECT * 
FROM EmployeeDemographics
ORDER BY 4 Desc, 5 Desc /*col no.*/



