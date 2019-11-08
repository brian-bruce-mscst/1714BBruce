USE [WorkshopCoop3]
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (1, N'111 My Street', NULL, N'Red Wing', 23, N'55066     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (2, N'123 A Street', NULL, N'Bay City', 49, N'54723     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (3, N'123 B Street', NULL, N'Bedrock', 6, N'81411     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (4, N'9764 Jeopardy Lane', NULL, N'Chicago', 13, N'60612     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (5, N'345 Improvement Way', NULL, N'Detroit', 22, N'48206     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (6, N'222 C Street', NULL, N'Minneapolis', 23, N'55405     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (7, N'333 D Street', NULL, N'Rochester', 23, N'55901     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (8, N'444 E Street', NULL, N'Rosemount', 23, N'55068     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (9, N'555 Mill Street', NULL, N'Dundas', 23, N'55019     ')
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [State_Id], [Zip]) VALUES (10, N'666 Hell Street', NULL, N'Maple Grove', 23, N'55311     ')
GO
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[BenchSpaces] ON 
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (1, 1, 3, 2)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (2, 1, 4, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (3, 1, 5, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (4, 1, 6, 2)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (5, 1, 7, 2)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (6, 1, 8, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (7, 1, 9, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (8, 1, 10, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Inventory_Id], [Patron_Id], [Facilitator_Id]) VALUES (9, 1, 11, 2)
GO
SET IDENTITY_INSERT [dbo].[BenchSpaces] OFF
GO
SET IDENTITY_INSERT [dbo].[Durations] ON 
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (1, N'1-2 hours', 100.0000)
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (2, N'2-4 hours', 150.0000)
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (3, N'4-6 hours', 200.0000)
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (4, N'6-8 hours', 250.0000)
GO
SET IDENTITY_INSERT [dbo].[Durations] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventories] ON 
GO
INSERT [dbo].[Inventories] ([Id], [InventoryDescription]) VALUES (1, N'Bench Inventory 1')
GO
INSERT [dbo].[Inventories] ([Id], [InventoryDescription]) VALUES (2, N'Bench Inventory 2')
GO
SET IDENTITY_INSERT [dbo].[Inventories] OFF
GO
SET IDENTITY_INSERT [dbo].[InventoryItems] ON 
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (1, N'Square', N'6 inch combination square', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (2, N'Bevel Square', N'Sliding T-Bevel Square', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (3, N'Dividers', N'Dividers(compass)', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (4, N'Gauge', N'Marking Gauge', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (5, N'Marking Knife', N'Marking/Striking Knife', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (6, N'Tape Meausre', N'25ft tape measure', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (7, N'Jack Plane', N'Stanley Bailey No. 5 Jack Plane', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (8, N'Bench Plane', N'Stanley Bailey No. 4 smoother', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (9, N'Jointer', N'Stanley No. 7 Jointer Plane', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (10, N'Hand Saw', N'Rip-toothed Hand Saw', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (11, N'Cross Cut Saw', N'Cross Cut Saw', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (12, N'Back Saw', N'Rip Dovetail Back Saw', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (13, N'Bench Chisels', N'Four Count Bench Chisels in Pouch', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (14, N'Mortise Chisels', N'Two Count Mortise Chisels in Pouch', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (15, N'Mallet', N'Wooden Joiner''s Mallet', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (16, N'Carver''s Mallet', N'Wooden Carvers Mallet', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (17, N'Hammer', N'Wooden Handled Claw Hammer', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (18, N'Handscrew Clamps', N'Two handscrew clamps', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (19, N'Ratcheting Clamps', N'Six count ratcheting clamps (assorted lengths)', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (20, N'Pipe Clamps', N'Four Pipe Clamps', 1)
GO
INSERT [dbo].[InventoryItems] ([Id], [Name], [Description], [Inventory_Id]) VALUES (21, N'Spring Clamps', N'Six count spring clamps', 1)
GO
SET IDENTITY_INSERT [dbo].[InventoryItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1000, 1, 2, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1001, 2, 1, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1002, 3, 3, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1003, 4, 1, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1004, 5, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1005, 6, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1006, 7, 3, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1007, 8, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoices] ([Id], [BenchSpace_Id], [Duration_Id], [InvoiceDate], [DueDate]) VALUES (1009, 9, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (1, 1000, 102)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (2, 1000, 103)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (3, 1002, 100)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (4, 1002, 101)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (5, 1002, 105)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (6, 1004, 100)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (7, 1004, 101)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (8, 1004, 102)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (9, 1004, 103)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (10, 1004, 104)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (11, 1004, 105)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (12, 1006, 104)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (13, 1006, 105)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (14, 1007, 102)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (15, 1007, 104)
GO
INSERT [dbo].[LineItems] ([Id], [Invoice_Id], [RentalTool_Id]) VALUES (16, 1007, 105)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (1, N'Brian', N'Bruce', N'111-111-1111', N'bbruce@email.com', 1)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (2, N'Colin', N'Bruce', N'222-222-2222', N'cbruce@email.com', 1)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (3, N'John', N'Doe', N'333-333-3333', N'jdoe@email.com', 2)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (4, N'Fred', N'Flinstone', N'444-444-4444', N'fflinstone@email.com', 3)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (5, N'Al', N'Bundy', N'555-555-5555', N'abundy@email.com', 4)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (6, N'Tim', N'Taylor', N'666-666-6666', N'ttaylor@email.com', 5)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (7, N'Evan', N'Hafer', N'777-777-7777', N'ehafer@email.com', 6)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (8, N'Rocco', N'Vargus', N'888-888-8888', N'rvargus@email.com', 7)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (9, N'Mat', N'Best', N'999-999-9999', N'mbest@email.com', 8)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (10, N'Marcus', N'Luttrel', N'111-222-1111', N'mluttrel@email.com', 9)
GO
INSERT [dbo].[People] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [Address_Id]) VALUES (11, N'Clint', N'Romesha', N'111-333-1111', N'cromesha@email.com', 10)
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1000, 1000, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 160.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1001, 1001, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 100.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1002, 1002, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 225.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1003, 1003, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 100.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1004, 1004, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 290.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1005, 1005, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 250.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1006, 1006, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 210.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1007, 1007, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 265.0000)
GO
INSERT [dbo].[Receipts] ([Id], [Invoice_Id], [ReceiptDate], [TotalAmount]) VALUES (1008, 1009, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 250.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalTools] ON 
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (100, N'Planer', 10.0000)
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (101, N'Jointer', 10.0000)
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (102, N'Chop Saw', 5.0000)
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (103, N'Table Saw', 5.0000)
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (104, N'Band Saw', 5.0000)
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (105, N'Router Table', 5.0000)
GO
SET IDENTITY_INSERT [dbo].[RentalTools] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (1, N'AL', N'Alabama')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (2, N'AK', N'Alaska')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (3, N'AZ', N'Arizona')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (4, N'AR', N'Arkansas')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (5, N'CA', N'California')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (6, N'CO', N'Colorado')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (7, N'CT', N'Connecticut')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (8, N'DE', N'Delaware')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (9, N'FL', N'Florida')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (10, N'GA', N'Georgia')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (11, N'HI', N'Hawaii')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (12, N'ID', N'Idaho')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (13, N'IL', N'Illinois')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (14, N'IN', N'Indiana')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (15, N'IA', N'Iowa')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (16, N'KS', N'Kansas')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (17, N'KY', N'Kentucky')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (18, N'LA', N'Louisiana')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (19, N'ME', N'Maine')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (20, N'MD', N'Maryland')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (21, N'MA', N'Massachusetts')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (22, N'MI', N'Michigan')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (23, N'MN', N'Minnesota')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (24, N'MS', N'Mississippi')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (25, N'MO', N'Missouri')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (26, N'MT', N'Montana')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (27, N'NE', N'Nebraska')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (28, N'NV', N'Nevada')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (29, N'NH', N'New Hamphire')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (30, N'NJ', N'New Jersey')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (31, N'NM', N'New Mexico')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (32, N'NY', N'New York')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (33, N'NC', N'North Carolina')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (34, N'ND', N'North Dakota')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (35, N'OH', N'Ohio')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (36, N'OK', N'Oklahoma')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (37, N'OR', N'Oregon')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (38, N'PA', N'Pennsylvania')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (39, N'RI', N'Rhode Island')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (40, N'SC', N'South Carolina')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (41, N'SD', N'South Dakota')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (42, N'TN', N'Tennessee')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (43, N'TX', N'Texas')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (44, N'UT', N'Utah')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (45, N'VT', N'Vermont')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (46, N'VA', N'Virginia')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (47, N'WA', N'Washington')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (48, N'WV', N'West Virginia')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (49, N'WI', N'Wisconsin')
GO
INSERT [dbo].[States] ([Id], [Abbreviation], [Name]) VALUES (50, N'WY', N'Wyoming')
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO
