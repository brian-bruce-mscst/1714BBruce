USE [master]
GO
/****** Object:  Database [WorkShopCoop1714Ex2h]    Script Date: 2019-11-07 19:06:14 ******/
CREATE DATABASE [WorkShopCoop1714Ex2h]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkShopCoop3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER17DEV\MSSQL\DATA\WorkShopCoop3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkShopCoop3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER17DEV\MSSQL\DATA\WorkShopCoop3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkShopCoop1714Ex2h].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET  MULTI_USER 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WorkShopCoop1714Ex2h', N'ON'
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET QUERY_STORE = OFF
GO
USE [WorkShopCoop1714Ex2h]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressLineOne] [nvarchar](50) NOT NULL,
	[AddressLineTwo] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[Zip] [nvarchar](10) NOT NULL,
	[State_Id] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenchSpaces]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchSpaces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Patron_Id] [int] NOT NULL,
	[Facilitator_Id] [int] NOT NULL,
	[Inventory_Id] [int] NOT NULL,
 CONSTRAINT [PK_BenchSpaces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Durations]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Durations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimePeriod] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Durations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventories]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InventoryDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryItems]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[Inventory_Id] [int] NOT NULL,
 CONSTRAINT [PK_InventoryItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[BenchSpace_Id] [int] NOT NULL,
	[Duration_Id] [int] NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItems]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_Id] [int] NOT NULL,
	[RentalTool_Id] [int] NOT NULL,
 CONSTRAINT [PK_LineItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Address_Id] [int] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipts]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 0) NOT NULL,
	[Invoice_Id] [int] NOT NULL,
 CONSTRAINT [PK_Receipts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalTools]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalTools](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_RentalTools] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 2019-11-07 19:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Abbreviation] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (1, N'111 My Street', NULL, N'Red Wing', N'55066     ', 23)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (2, N'123 A Street', NULL, N'Bay City', N'54723     ', 49)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (3, N'123 B Street', NULL, N'Bedrock', N'81411     ', 6)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (4, N'9764 Jeopardy Lane', NULL, N'Chicago', N'60612     ', 13)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (5, N'345 Improvement Way', NULL, N'Detroit', N'48206     ', 22)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (6, N'222 C Street', NULL, N'Minneapolis', N'55405     ', 23)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (7, N'333 D Street', NULL, N'Rochester', N'55901     ', 23)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (8, N'444 E Street', NULL, N'Rosemount', N'55068     ', 23)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (9, N'555 Mill Street', NULL, N'Dundas', N'55019     ', 23)
GO
INSERT [dbo].[Addresses] ([Id], [AddressLineOne], [AddressLineTwo], [City], [Zip], [State_Id]) VALUES (10, N'666 Hell Street', NULL, N'Maple Grove', N'55311     ', 23)
GO
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[BenchSpaces] ON 
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (1, 3, 2, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (2, 4, 1, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (3, 5, 1, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (4, 6, 2, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (5, 7, 2, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (6, 8, 1, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (7, 9, 1, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (8, 10, 1, 1)
GO
INSERT [dbo].[BenchSpaces] ([Id], [Patron_Id], [Facilitator_Id], [Inventory_Id]) VALUES (9, 11, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[BenchSpaces] OFF
GO
SET IDENTITY_INSERT [dbo].[Durations] ON 
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (1, N'1-2 hours', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (2, N'2-4 hours', CAST(150 AS Decimal(18, 0)))
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (3, N'4-6 hours', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Durations] ([Id], [TimePeriod], [Price]) VALUES (4, N'6-8 hours', CAST(250 AS Decimal(18, 0)))
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
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1000, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1001, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 2, 1)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1002, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 3, 3)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1003, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 4, 1)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1004, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 5, 4)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1005, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 6, 4)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1006, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 7, 3)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1007, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 8, 4)
GO
INSERT [dbo].[Invoices] ([Id], [InvoiceDate], [DueDate], [BenchSpace_Id], [Duration_Id]) VALUES (1009, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-01-17T00:00:00.000' AS DateTime), 9, 4)
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
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1000, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(160 AS Decimal(18, 0)), 1000)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1001, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(100 AS Decimal(18, 0)), 1001)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1002, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(225 AS Decimal(18, 0)), 1002)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1003, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(100 AS Decimal(18, 0)), 1003)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1004, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(290 AS Decimal(18, 0)), 1004)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1005, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(250 AS Decimal(18, 0)), 1005)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1006, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(210 AS Decimal(18, 0)), 1006)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1007, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(265 AS Decimal(18, 0)), 1007)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [TotalAmount], [Invoice_Id]) VALUES (1008, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(250 AS Decimal(18, 0)), 1009)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalTools] ON 
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (100, N'Planer', CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (101, N'Jointer', CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (102, N'Chop Saw', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (103, N'Table Saw', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (104, N'Band Saw', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[RentalTools] ([Id], [Description], [Price]) VALUES (105, N'Router Table', CAST(5 AS Decimal(18, 0)))
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
/****** Object:  Index [IX_FK_StateAddress]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_StateAddress] ON [dbo].[Addresses]
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_InventoryBenchSpace]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_InventoryBenchSpace] ON [dbo].[BenchSpaces]
(
	[Inventory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonBenchSpace]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonBenchSpace] ON [dbo].[BenchSpaces]
(
	[Patron_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PersonBenchSpace1]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_PersonBenchSpace1] ON [dbo].[BenchSpaces]
(
	[Facilitator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_InventoryInventoryItems]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_InventoryInventoryItems] ON [dbo].[InventoryItems]
(
	[Inventory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_BenchSpaceInvoice]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_BenchSpaceInvoice] ON [dbo].[Invoices]
(
	[BenchSpace_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_DurationInvoice]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_DurationInvoice] ON [dbo].[Invoices]
(
	[Duration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_InvoiceLineItem]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_InvoiceLineItem] ON [dbo].[LineItems]
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_RentalToolLineItem]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_RentalToolLineItem] ON [dbo].[LineItems]
(
	[RentalTool_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_AddressPerson]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_AddressPerson] ON [dbo].[People]
(
	[Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_InvoiceReceipt]    Script Date: 2019-11-07 19:06:14 ******/
CREATE NONCLUSTERED INDEX [IX_FK_InvoiceReceipt] ON [dbo].[Receipts]
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_StateAddress] FOREIGN KEY([State_Id])
REFERENCES [dbo].[States] ([Id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_StateAddress]
GO
ALTER TABLE [dbo].[BenchSpaces]  WITH CHECK ADD  CONSTRAINT [FK_InventoryBenchSpace] FOREIGN KEY([Inventory_Id])
REFERENCES [dbo].[Inventories] ([Id])
GO
ALTER TABLE [dbo].[BenchSpaces] CHECK CONSTRAINT [FK_InventoryBenchSpace]
GO
ALTER TABLE [dbo].[BenchSpaces]  WITH CHECK ADD  CONSTRAINT [FK_PersonBenchSpace] FOREIGN KEY([Patron_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[BenchSpaces] CHECK CONSTRAINT [FK_PersonBenchSpace]
GO
ALTER TABLE [dbo].[BenchSpaces]  WITH CHECK ADD  CONSTRAINT [FK_PersonBenchSpace1] FOREIGN KEY([Facilitator_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[BenchSpaces] CHECK CONSTRAINT [FK_PersonBenchSpace1]
GO
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryInventoryItems] FOREIGN KEY([Inventory_Id])
REFERENCES [dbo].[Inventories] ([Id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryInventoryItems]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_BenchSpaceInvoice] FOREIGN KEY([BenchSpace_Id])
REFERENCES [dbo].[BenchSpaces] ([Id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_BenchSpaceInvoice]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_DurationInvoice] FOREIGN KEY([Duration_Id])
REFERENCES [dbo].[Durations] ([Id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_DurationInvoice]
GO
ALTER TABLE [dbo].[LineItems]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLineItem] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_InvoiceLineItem]
GO
ALTER TABLE [dbo].[LineItems]  WITH CHECK ADD  CONSTRAINT [FK_RentalToolLineItem] FOREIGN KEY([RentalTool_Id])
REFERENCES [dbo].[RentalTools] ([Id])
GO
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_RentalToolLineItem]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_AddressPerson] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Addresses] ([Id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_AddressPerson]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceReceipt] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_InvoiceReceipt]
GO
USE [master]
GO
ALTER DATABASE [WorkShopCoop1714Ex2h] SET  READ_WRITE 
GO
