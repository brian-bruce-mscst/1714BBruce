-- Brian Bruce
-- Exercise 2C: Summary queries, groups, joins
-- PropertyManager db

-- 2C.1 Building table. State, City, count buildings. Group by State, City.
SELECT State, City, COUNT(BuildingId) AS bldgCount
FROM     Building
GROUP BY State, City
-- 2C.2 Building table. City, count buildings. Group by City. Filter MN
SELECT City, COUNT(BuildingId) AS bldgCount
FROM     Building
WHERE  (State = N'MN')
GROUP BY City
-- 2C.3 Building, Apartment tables. BuildingId, BuildingName, average rent. Group by BuildingId, BuildingName.
SELECT Building.BuildingId, Building.BuildingName, AVG(Apartment.Rent) AS AvgRent
FROM     Building INNER JOIN
                  Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingId, Building.BuildingName
-- 2C.4 Building, Apartment tables. City, BuildingName, total rent. Group by City, BuildingName. Filter MN
SELECT Building.City, Building.BuildingName, SUM(Apartment.Rent) AS TotalRent
FROM     Building INNER JOIN
                  Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City, Building.BuildingName, Building.State
HAVING (Building.State = N'MN')
-- 2C.5 Building, Apartment tables. Cheapest rent. Group by City.
SELECT Building.City, MIN(Apartment.Rent) AS CheapestRent
FROM     Building INNER JOIN
                  Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City
-- 2C.6 Building, Apartment tables. BuildingName, Smallest size, Avg size, Largest size. Group by Building Name. Filter Winona.
SELECT Building.BuildingName, MIN(Apartment.SquareFeet) AS Smallest, AVG(Apartment.SquareFeet) AS Average, MAX(Apartment.SquareFeet) AS Largest
FROM     Building INNER JOIN
                  Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Building.City, Apartment.TenantId
HAVING (Building.City = N'Winona') AND (Apartment.TenantId IS NULL)
-- 2C.7 Invoice, LineItem tables. InvoiceId, cheapest price. Group by InvoiceId. Filter Garage during Sep 2018.
SELECT MIN(LineItem.Amount) AS [Cheapest Garage Sep2018]
FROM     Invoice INNER JOIN
                  LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY LineItem.Description, Invoice.InvoiceDate
HAVING (LineItem.Description = N'Garage') AND (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-01 00:00:00', 102) AND CONVERT(DATETIME, '2018-09-30 00:00:00', 102))
-- 2C.8 Invoice, LineItem tables. InvoiceId, total amount bill. Group by InvoiceId. Filter Sep 2018.
SELECT Invoice.InvoiceId, SUM(LineItem.Amount) AS [Total Bill]
FROM     Invoice INNER JOIN
                  LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
GROUP BY Invoice.InvoiceId, Invoice.InvoiceDate
HAVING (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-01 00:00:00', 102) AND CONVERT(DATETIME, '2018-09-30 00:00:00', 102))
