USE [master]
GO
/****** Object:  Database [WorkshopCoop]    Script Date: 2019-09-26 21:47:40 ******/
CREATE DATABASE [WorkshopCoop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkshopCoop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER17DEV\MSSQL\DATA\WorkshopCoop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkshopCoop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER17DEV\MSSQL\DATA\WorkshopCoop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WorkshopCoop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkshopCoop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkshopCoop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkshopCoop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkshopCoop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkshopCoop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkshopCoop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkshopCoop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkshopCoop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorkshopCoop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkshopCoop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkshopCoop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkshopCoop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkshopCoop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkshopCoop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkshopCoop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkshopCoop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkshopCoop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkshopCoop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkshopCoop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkshopCoop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkshopCoop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkshopCoop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkshopCoop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkshopCoop] SET RECOVERY FULL 
GO
ALTER DATABASE [WorkshopCoop] SET  MULTI_USER 
GO
ALTER DATABASE [WorkshopCoop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkshopCoop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkshopCoop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkshopCoop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorkshopCoop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WorkshopCoop', N'ON'
GO
ALTER DATABASE [WorkshopCoop] SET QUERY_STORE = OFF
GO
USE [WorkshopCoop]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressLineOne] [nvarchar](50) NOT NULL,
	[AddressLineTwo] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[StateId] [int] NOT NULL,
	[Zip] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenchSpace]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchSpace](
	[BenchSpaceId] [int] IDENTITY(1,1) NOT NULL,
	[InventoryId] [int] NOT NULL,
	[PatronId] [int] NOT NULL,
	[FacilitatorId] [int] NOT NULL,
 CONSTRAINT [PK_BenchSpace] PRIMARY KEY CLUSTERED 
(
	[BenchSpaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Duration]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duration](
	[DurationId] [int] IDENTITY(1,1) NOT NULL,
	[TimePeriod] [nvarchar](50) NOT NULL,
	[Price] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Duration] PRIMARY KEY CLUSTERED 
(
	[DurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryId] [int] IDENTITY(1,1) NOT NULL,
	[InventoryDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Inventory_1] PRIMARY KEY CLUSTERED 
(
	[InventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryItems]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryItems](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[InventoryId] [int] NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(1000,1) NOT NULL,
	[BenchSpaceId] [int] NOT NULL,
	[DurationId] [int] NOT NULL,
	[InvoiceDate] [smalldatetime] NOT NULL,
	[DueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItem]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem](
	[LineItemId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[RentalToolId] [int] NOT NULL,
 CONSTRAINT [PK_LineItem] PRIMARY KEY CLUSTERED 
(
	[LineItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[AddressId] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptId] [int] IDENTITY(1000,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ReceiptDate] [smalldatetime] NOT NULL,
	[TotalAmount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalTool]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalTool](
	[RentalToolId] [int] IDENTITY(100,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Price] [smallmoney] NOT NULL,
 CONSTRAINT [PK_RentalTools] PRIMARY KEY CLUSTERED 
(
	[RentalToolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2019-09-26 21:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[Abbreviation] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (1, N'111 My Street', NULL, N'Red Wing', 23, N'55066     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (2, N'123 A Street', NULL, N'Bay City', 49, N'54723     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (3, N'123 B Street', NULL, N'Bedrock', 6, N'81411     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (4, N'9764 Jeopardy Lane', NULL, N'Chicago', 13, N'60612     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (5, N'345 Improvement Way', NULL, N'Detroit', 22, N'48206     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (6, N'222 C Street', NULL, N'Minneapolis', 23, N'55405     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (7, N'333 D Street', NULL, N'Rochester', 23, N'55901     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (8, N'444 E Street', NULL, N'Rosemount', 23, N'55068     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (9, N'555 Mill Street', NULL, N'Dundas', 23, N'55019     ')
INSERT [dbo].[Address] ([AddressId], [AddressLineOne], [AddressLineTwo], [City], [StateId], [Zip]) VALUES (10, N'666 Hell Street', NULL, N'Maple Grove', 23, N'55311     ')
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[BenchSpace] ON 

INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (1, 1, 3, 2)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (2, 1, 4, 1)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (3, 1, 5, 1)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (4, 1, 6, 2)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (5, 1, 7, 2)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (6, 1, 8, 1)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (7, 1, 9, 1)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (8, 1, 10, 1)
INSERT [dbo].[BenchSpace] ([BenchSpaceId], [InventoryId], [PatronId], [FacilitatorId]) VALUES (9, 1, 11, 2)
SET IDENTITY_INSERT [dbo].[BenchSpace] OFF
SET IDENTITY_INSERT [dbo].[Duration] ON 

INSERT [dbo].[Duration] ([DurationId], [TimePeriod], [Price]) VALUES (1, N'1-2 hours', 100.0000)
INSERT [dbo].[Duration] ([DurationId], [TimePeriod], [Price]) VALUES (2, N'2-4 hours', 150.0000)
INSERT [dbo].[Duration] ([DurationId], [TimePeriod], [Price]) VALUES (3, N'4-6 hours', 200.0000)
INSERT [dbo].[Duration] ([DurationId], [TimePeriod], [Price]) VALUES (4, N'6-8 hours', 250.0000)
SET IDENTITY_INSERT [dbo].[Duration] OFF
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryId], [InventoryDescription]) VALUES (1, N'Bench Inventory 1')
INSERT [dbo].[Inventory] ([InventoryId], [InventoryDescription]) VALUES (2, N'Bench Inventory 2')
SET IDENTITY_INSERT [dbo].[Inventory] OFF
SET IDENTITY_INSERT [dbo].[InventoryItems] ON 

INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (1, N'Square', N'6 inch combination square', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (2, N'Bevel Square', N'Sliding T-Bevel Square', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (3, N'Dividers', N'Dividers(compass)', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (4, N'Gauge', N'Marking Gauge', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (5, N'Marking Knife', N'Marking/Striking Knife', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (6, N'Tape Meausre', N'25ft tape measure', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (7, N'Jack Plane', N'Stanley Bailey No. 5 Jack Plane', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (8, N'Bench Plane', N'Stanley Bailey No. 4 smoother', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (9, N'Jointer', N'Stanley No. 7 Jointer Plane', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (10, N'Hand Saw', N'Rip-toothed Hand Saw', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (11, N'Cross Cut Saw', N'Cross Cut Saw', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (12, N'Back Saw', N'Rip Dovetail Back Saw', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (13, N'Bench Chisels', N'Four Count Bench Chisels in Pouch', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (14, N'Mortise Chisels', N'Two Count Mortise Chisels in Pouch', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (15, N'Mallet', N'Wooden Joiner''s Mallet', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (16, N'Carver''s Mallet', N'Wooden Carvers Mallet', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (17, N'Hammer', N'Wooden Handled Claw Hammer', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (18, N'Handscrew Clamps', N'Two handscrew clamps', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (19, N'Ratcheting Clamps', N'Six count ratcheting clamps (assorted lengths)', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (20, N'Pipe Clamps', N'Four Pipe Clamps', 1)
INSERT [dbo].[InventoryItems] ([ItemId], [Name], [Description], [InventoryId]) VALUES (21, N'Spring Clamps', N'Six count spring clamps', 1)
SET IDENTITY_INSERT [dbo].[InventoryItems] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1000, 1, 2, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1001, 2, 1, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1002, 3, 3, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1003, 4, 1, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1004, 5, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1005, 6, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1006, 7, 3, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1007, 8, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [BenchSpaceId], [DurationId], [InvoiceDate], [DueDate]) VALUES (1009, 9, 4, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), CAST(N'2019-01-17T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Invoice] OFF
SET IDENTITY_INSERT [dbo].[LineItem] ON 

INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (1, 1000, 102)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (2, 1000, 103)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (3, 1002, 100)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (4, 1002, 101)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (5, 1002, 105)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (6, 1004, 100)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (7, 1004, 101)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (8, 1004, 102)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (9, 1004, 103)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (10, 1004, 104)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (11, 1004, 105)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (12, 1006, 104)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (13, 1006, 105)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (14, 1007, 102)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (15, 1007, 104)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [RentalToolId]) VALUES (16, 1007, 105)
SET IDENTITY_INSERT [dbo].[LineItem] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (1, N'Brian', N'Bruce', N'111-111-1111', N'bbruce@email.com', 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (2, N'Colin', N'Bruce', N'222-222-2222', N'cbruce@email.com', 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (3, N'John', N'Doe', N'333-333-3333', N'jdoe@email.com', 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (4, N'Fred', N'Flinstone', N'444-444-4444', N'fflinstone@email.com', 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (5, N'Al', N'Bundy', N'555-555-5555', N'abundy@email.com', 4)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (6, N'Tim', N'Taylor', N'666-666-6666', N'ttaylor@email.com', 5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (7, N'Evan', N'Hafer', N'777-777-7777', N'ehafer@email.com', 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (8, N'Rocco', N'Vargus', N'888-888-8888', N'rvargus@email.com', 7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (9, N'Mat', N'Best', N'999-999-9999', N'mbest@email.com', 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (10, N'Marcus', N'Luttrel', N'111-222-1111', N'mluttrel@email.com', 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [PhoneNumber], [Email], [AddressId]) VALUES (11, N'Clint', N'Romesha', N'111-333-1111', N'cromesha@email.com', 10)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1000, 1000, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 160.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1001, 1001, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 100.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1002, 1002, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 225.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1003, 1003, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 100.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1004, 1004, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 290.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1005, 1005, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 250.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1006, 1006, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 210.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1007, 1007, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 265.0000)
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [TotalAmount]) VALUES (1008, 1009, CAST(N'2019-01-17T00:00:00' AS SmallDateTime), 250.0000)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
SET IDENTITY_INSERT [dbo].[RentalTool] ON 

INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (100, N'Planer', 10.0000)
INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (101, N'Jointer', 10.0000)
INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (102, N'Chop Saw', 5.0000)
INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (103, N'Table Saw', 5.0000)
INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (104, N'Band Saw', 5.0000)
INSERT [dbo].[RentalTool] ([RentalToolId], [Description], [Price]) VALUES (105, N'Router Table', 5.0000)
SET IDENTITY_INSERT [dbo].[RentalTool] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (1, N'AL', N'Alabama')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (2, N'AK', N'Alaska')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (3, N'AZ', N'Arizona')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (4, N'AR', N'Arkansas')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (5, N'CA', N'California')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (6, N'CO', N'Colorado')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (7, N'CT', N'Connecticut')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (8, N'DE', N'Delaware')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (9, N'FL', N'Florida')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (10, N'GA', N'Georgia')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (11, N'HI', N'Hawaii')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (12, N'ID', N'Idaho')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (13, N'IL', N'Illinois')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (14, N'IN', N'Indiana')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (15, N'IA', N'Iowa')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (16, N'KS', N'Kansas')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (17, N'KY', N'Kentucky')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (18, N'LA', N'Louisiana')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (19, N'ME', N'Maine')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (20, N'MD', N'Maryland')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (21, N'MA', N'Massachusetts')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (22, N'MI', N'Michigan')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (23, N'MN', N'Minnesota')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (24, N'MS', N'Mississippi')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (25, N'MO', N'Missouri')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (26, N'MT', N'Montana')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (27, N'NE', N'Nebraska')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (28, N'NV', N'Nevada')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (29, N'NH', N'New Hamphire')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (30, N'NJ', N'New Jersey')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (31, N'NM', N'New Mexico')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (32, N'NY', N'New York')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (33, N'NC', N'North Carolina')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (34, N'ND', N'North Dakota')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (35, N'OH', N'Ohio')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (36, N'OK', N'Oklahoma')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (37, N'OR', N'Oregon')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (38, N'PA', N'Pennsylvania')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (39, N'RI', N'Rhode Island')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (40, N'SC', N'South Carolina')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (41, N'SD', N'South Dakota')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (42, N'TN', N'Tennessee')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (43, N'TX', N'Texas')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (44, N'UT', N'Utah')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (45, N'VT', N'Vermont')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (46, N'VA', N'Virginia')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (47, N'WA', N'Washington')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (48, N'WV', N'West Virginia')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (49, N'WI', N'Wisconsin')
INSERT [dbo].[State] ([StateId], [Abbreviation], [Name]) VALUES (50, N'WY', N'Wyoming')
SET IDENTITY_INSERT [dbo].[State] OFF
USE [master]
GO
ALTER DATABASE [WorkshopCoop] SET  READ_WRITE 
GO
