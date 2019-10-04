-- Brian Bruce
-- Exercise 2B: Summary queries, min, max, sum, avg, count
-- PropertyManager db

-- 2B.1) Building table. Count all buildings
SELECT COUNT(*) AS [Count all buildings]
FROM     Building
-- 2B.2) Building table. Count. Filter buildings in Winona
SELECT COUNT(*) AS [Count all buildings]
FROM     Building
WHERE  (City = N'Winona')
-- 2B.3) Apartment table. Average rent of all apartments
SELECT AVG(Rent) AS TotalRent
FROM     Apartment
-- 2B.4) Apartment table. Total rent. Filter apartments in building 1
SELECT SUM(Rent) AS [Bldg1 Total Rent]
FROM     Apartment
GROUP BY BuildingId
HAVING (BuildingId = 1)
-- 2B.5) Apartment table. Cheapest rent. Filter building 2
SELECT MIN(Rent) AS CheapestRent
FROM     Apartment
WHERE  (BuildingId = 2)
-- 2B.6) Apartment table. Smallest size, avg size, largest size. Filter building 1
SELECT MIN(SquareFeet) AS [Smallest size], AVG(SquareFeet) AS [Average size], MAX(SquareFeet) AS [Largest size]
FROM     Apartment
GROUP BY BuildingId
HAVING (BuildingId = 1)
-- 2B.7) LineItem table. Cheapest price. Filter garage
SELECT MIN(Amount) AS [Cheapest garage]
FROM     LineItem
WHERE  (Description = N'Garage')
-- 2B.8) LineItem table. Total amount billed. Filter gas
SELECT SUM(Amount) AS [Total Amount Billed]
FROM     LineItem
WHERE  (Description = N'Gas')
-- 2B.9) LineItem table. Total rent. Filter October
SELECT SUM(Amount) AS [Total rent]
FROM     LineItem
WHERE  (Description LIKE N'Rent, October%')