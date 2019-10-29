--USE [PropertyManager]
--GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Road', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (2, N'Park Place Apartments', N'111 Park Place', N'St. Louis Park', N'MN', N'55416     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'Borden House Apartments', N'123 Lizzy Lane', N'Salem', N'MA', N'01915     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (4, N'Watson Street Apartments', N'456 Watson Street', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Buildings] ([Id], [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'The Sherlock', N'789 Holmes Court', N'Winona', N'MN', N'55987     ')
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Brian', N'Bruce', N'111-111-1111', N'bbruce@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'Colin', N'Bruce', N'222-222-2222', N'cbruce@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'John', N'Doe', N'333-333-3333', N'jdoe@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Fred ', N'Flinstone', N'444-444-4444', N'fflinstone@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Al', N'Bundy', N'555-555-5555', N'abundy@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (6, N'Tim', N'Taylor', N'666-666-6666', N'ttaylor@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (7, N'Even', N'Hafer', N'777-777-7777', N'ehafer@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (8, N'Rocco', N'Vargus', N'888-888-8888', N'rvargus@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (9, N'Marcus', N'Luttrel', N'999-999-9999', N'mluttrel@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (10, N'Clint', N'Romesha', N'111-222-1111', N'cromesha@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (11, N'Jon', N'Snow', N'111-333-1111', N'jsnow@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (12, N'Jaime', N'Lannister', N'111-444-1111', N'jlannister@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (13, N'Khal', N'Drogo', N'111-555-1111', N'kdrogo@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (14, N'Bruce', N'Wayne', N'111-666-1111', N'bwayne@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (15, N'Barry', N'Allen', N'111-777-1111', N'ballen@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (16, N'Wally', N'West', N'111-888-1111', N'wwest@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (17, N'Liv', N'Moore', N'111-999-1111', N'lmoore@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (18, N'Peyton', N'Charles', N'222-111-1111', N'pcharles@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (19, N'Ravi', N'Chakrabarti', N'222-333-2222', N'rchakrabarti@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (20, N'Hank', N'Hill', N'222-444-2222', N'hhill@email.com')
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [Phone], [Email]) VALUES (21, N'Dale', N'Gribble', N'222-555-2222', N'dgribble@email.com')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Apartments] ON 
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (1, 1, N'101', 400, 1, 550.0000, 3, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (2, 1, N'102', 550, 1, 700.0000, 4, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (3, 1, N'103', 600, 1, 750.0000, 5, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (4, 1, N'104', 650, 2, 850.0000, 6, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (5, 2, N'101', 600, 1, 750.0000, 7, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (6, 2, N'102', 600, 1, 750.0000, 8, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (7, 2, N'103', 750, 2, 1000.0000, 9, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (8, 2, N'104', 800, 2, 1050.0000, 10, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (9, 3, N'101', 400, 1, 550.0000, 11, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (10, 3, N'102', 550, 1, 700.0000, 12, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (11, 3, N'103', 600, 1, 750.0000, 13, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (12, 3, N'104', 650, 2, 850.0000, 14, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (13, 4, N'101', 600, 1, 750.0000, 15, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (14, 4, N'102', 600, 1, 750.0000, 2, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (16, 4, N'103', 750, 2, 1000.0000, 16, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (17, 4, N'104', 800, 2, 1050.0000, 17, 2)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (18, 5, N'101', 400, 1, 550.0000, 1, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (19, 5, N'102', 550, 1, 700.0000, 18, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (20, 5, N'103', 600, 1, 750.0000, 19, 1)
GO
INSERT [dbo].[Apartments] ([Id], [Building_Id], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenant_Id], [Admin_Id]) VALUES (21, 5, N'104', 650, 2, 850.0000, 20, 1)
GO
SET IDENTITY_INSERT [dbo].[Apartments] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10001, 1, CAST(N'2019-09-21T00:00:00' AS SmallDateTime), CAST(N'2019-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10003, 2, CAST(N'2019-09-21T00:00:00' AS SmallDateTime), CAST(N'2019-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10004, 3, CAST(N'2019-09-21T00:00:00' AS SmallDateTime), CAST(N'2019-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10005, 4, CAST(N'2019-09-21T00:00:00' AS SmallDateTime), CAST(N'2019-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10006, 5, CAST(N'2019-09-21T00:00:00' AS SmallDateTime), CAST(N'2019-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10007, 1, CAST(N'2019-10-21T00:00:00' AS SmallDateTime), CAST(N'2019-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10008, 2, CAST(N'2019-10-21T00:00:00' AS SmallDateTime), CAST(N'2019-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10009, 3, CAST(N'2019-10-21T00:00:00' AS SmallDateTime), CAST(N'2019-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10010, 4, CAST(N'2019-10-21T00:00:00' AS SmallDateTime), CAST(N'2019-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Apartment_Id], [InvoiceDate], [DueDate]) VALUES (10011, 5, CAST(N'2019-10-21T00:00:00' AS SmallDateTime), CAST(N'2019-11-01T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10001, 10001, N'Rent, October 2019', 550.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10002, 10001, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10003, 10001, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10004, 10001, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10005, 10001, N'Cable TV/Internet', 70.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10006, 10003, N'Rent, October 2019', 700.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10007, 10003, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10008, 10003, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10009, 10003, N'Garage', 90.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10010, 10004, N'Rent, October 2019', 750.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10011, 10004, N'Electricity', 55.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10012, 10004, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [Description], [Amount]) VALUES (10013, 10004, N'Cable TV/Internet', 70.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10001, 10001, CAST(N'2019-09-30T00:00:00' AS SmallDateTime), 770.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10002, 10003, CAST(N'2019-09-30T00:00:00' AS SmallDateTime), 895.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [Amount]) VALUES (10003, 10004, CAST(N'2019-09-29T00:00:00' AS SmallDateTime), 925.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO

