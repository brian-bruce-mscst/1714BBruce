SELECT BenchSpaces.Id AS [Bench #], People.FirstName + N' ' + People.LastName AS Patron, Addresses.AddressLineOne, Addresses.City, States.Name, Addresses.Zip
FROM     BenchSpaces INNER JOIN
                  People ON BenchSpaces.Patron_Id = People.Id INNER JOIN
                  Addresses ON People.Address_Id = Addresses.Id INNER JOIN
                  States ON Addresses.State_Id = States.Id

SELECT BenchSpaces.Id AS [Bench #], People.FirstName + N' ' + People.LastName AS Facilitator, Addresses.AddressLineOne, Addresses.City, States.Name, Addresses.Zip
FROM     BenchSpaces INNER JOIN
                  People ON BenchSpaces.Facilitator_Id = People.Id INNER JOIN
                  Addresses ON People.Address_Id = Addresses.Id INNER JOIN
                  States ON Addresses.State_Id = States.Id
ORDER BY [Bench #]

SELECT BenchSpaces.Id AS [Bench #], Inventories.InventoryDescription, InventoryItems.Name, InventoryItems.Description
FROM     BenchSpaces INNER JOIN
                  Inventories ON BenchSpaces.Inventory_Id = Inventories.Id INNER JOIN
                  InventoryItems ON Inventories.Id = InventoryItems.Inventory_Id

SELECT Invoices.Id AS [Invoice #], Invoices.InvoiceDate, Invoices.DueDate, BenchSpaces.Id AS [Bench #], 
Durations.TimePeriod, People.FirstName + N' ' + People.LastName AS Patron, People.PhoneNumber, 
                  Receipts.TotalAmount AS [Total Paid]
FROM     Invoices INNER JOIN
                  BenchSpaces ON Invoices.BenchSpace_Id = BenchSpaces.Id INNER JOIN
                  People ON BenchSpaces.Patron_Id = People.Id INNER JOIN
                  LineItems ON Invoices.Id = LineItems.Invoice_Id INNER JOIN
                  RentalTools ON LineItems.RentalTool_Id = RentalTools.Id INNER JOIN
                  Durations ON Invoices.Duration_Id = Durations.Id INNER JOIN
                  Receipts ON Invoices.Id = Receipts.Invoice_Id
GROUP BY Invoices.Id, Invoices.InvoiceDate, Invoices.DueDate, BenchSpaces.Id, Durations.TimePeriod, 
People.FirstName + N' ' + People.LastName, People.PhoneNumber, Receipts.TotalAmount

SELECT Invoices.InvoiceDate, Invoices.DueDate, Durations.TimePeriod, Durations.Price AS [Bench Price], 
RentalTools.Description, RentalTools.Price AS [Tool Price]
FROM     Invoices INNER JOIN
                  LineItems ON Invoices.Id = LineItems.Invoice_Id INNER JOIN
                  RentalTools ON LineItems.RentalTool_Id = RentalTools.Id INNER JOIN
                  Durations ON Invoices.Duration_Id = Durations.Id
--//