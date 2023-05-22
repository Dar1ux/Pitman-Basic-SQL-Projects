-- SQL Select Distinct Challenge
SELECT DISTINCT City
FROM Person.Address;

--SQL Select Top Challenge
SELECT TOP 10 percent *
FROM Person.Address
WHERE City = 'Reading';

SELECT * FROM Person.Address;

--SQL Min/Max Challenge
SELECT MIN(SickLeaveHours) AS 'Minimum Sick Leave Hours'
FROM HumanResources.Employee;

SELECT MAX(VacationHours) AS 'Maximum Vacation Hours'
FROM HumanResources.Employee;

SELECT * FROM HumanResources.Employee WHERE SickLeaveHours = (SELECT MIN(SickLeaveHours) AS 'Minimum Sick Leave Hours' FROM HumanResources.Employee);
SELECT * FROM HumanResources.Employee WHERE VacationHours = (SELECT MAX(VacationHours) AS 'Maximum Vacation Hours' FROM HumanResources.Employee);

--SQL Like Challenge
SELECT AddressLine1, City
FROM Person.Address
WHERE AddressLine1 LIKE '%vista%'
ORDER BY City;

--SQL Wildcard Challenge
SELECT AddressLine1, City
FROM Person.Address
WHERE City LIKE 'br[ae]%'
ORDER BY City;

--SQL Between Challenge
SELECT LoginID, JobTitle, VacationHours
FROM HumanResources.Employee
WHERE VacationHours BETWEEN 40 AND 80
ORDER BY JobTitle;

