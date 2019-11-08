
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/07/2019 18:12:45
-- Generated from EDMX file: C:\Users\e054416\Documents\SQL Server Management Studio\School\1714BBruce\1714bbruce2h\WorkshopCoopModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WorkShopCoop3];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_StateAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_StateAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_AddressPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_AddressPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonBenchSpace]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchSpaces] DROP CONSTRAINT [FK_PersonBenchSpace];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonBenchSpace1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchSpaces] DROP CONSTRAINT [FK_PersonBenchSpace1];
GO
IF OBJECT_ID(N'[dbo].[FK_InventoryBenchSpace]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchSpaces] DROP CONSTRAINT [FK_InventoryBenchSpace];
GO
IF OBJECT_ID(N'[dbo].[FK_InventoryInventoryItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InventoryItems1] DROP CONSTRAINT [FK_InventoryInventoryItems];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchSpaceInvoice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_BenchSpaceInvoice];
GO
IF OBJECT_ID(N'[dbo].[FK_DurationInvoice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_DurationInvoice];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoiceLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_InvoiceLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_RentalToolLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_RentalToolLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoiceReceipt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Receipts] DROP CONSTRAINT [FK_InvoiceReceipt];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO
IF OBJECT_ID(N'[dbo].[BenchSpaces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BenchSpaces];
GO
IF OBJECT_ID(N'[dbo].[Inventories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inventories];
GO
IF OBJECT_ID(N'[dbo].[InventoryItems1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InventoryItems1];
GO
IF OBJECT_ID(N'[dbo].[Durations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Durations];
GO
IF OBJECT_ID(N'[dbo].[Invoices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Invoices];
GO
IF OBJECT_ID(N'[dbo].[Receipts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Receipts];
GO
IF OBJECT_ID(N'[dbo].[RentalTools]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RentalTools];
GO
IF OBJECT_ID(N'[dbo].[LineItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LineItems];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [PhoneNumber] nvarchar(12)  NULL,
    [Email] nvarchar(50)  NULL,
    [Address_Id] int  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AddressLineOne] nvarchar(50)  NOT NULL,
    [AddressLineTwo] nvarchar(50)  NULL,
    [City] nvarchar(50)  NOT NULL,
    [Zip] nvarchar(10)  NOT NULL,
    [State_Id] int  NOT NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Abbreviation] nvarchar(2)  NOT NULL,
    [Name] nvarchar(25)  NOT NULL
);
GO

-- Creating table 'BenchSpaces'
CREATE TABLE [dbo].[BenchSpaces] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Patron_Id] int  NOT NULL,
    [Facilitator_Id] int  NOT NULL,
    [Inventory_Id] int  NOT NULL
);
GO

-- Creating table 'Inventories'
CREATE TABLE [dbo].[Inventories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InventoryDescription] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'InventoryItems'
CREATE TABLE [dbo].[InventoryItems] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Description] nvarchar(150)  NULL,
    [Inventory_Id] int  NOT NULL
);
GO

-- Creating table 'Durations'
CREATE TABLE [dbo].[Durations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TimePeriod] nvarchar(50)  NOT NULL,
    [Price] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Invoices'
CREATE TABLE [dbo].[Invoices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InvoiceDate] datetime  NOT NULL,
    [DueDate] datetime  NOT NULL,
    [BenchSpace_Id] int  NOT NULL,
    [Duration_Id] int  NOT NULL
);
GO

-- Creating table 'Receipts'
CREATE TABLE [dbo].[Receipts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReceiptDate] datetime  NOT NULL,
    [TotalAmount] decimal(18,0)  NOT NULL,
    [Invoice_Id] int  NOT NULL
);
GO

-- Creating table 'RentalTools'
CREATE TABLE [dbo].[RentalTools] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(50)  NOT NULL,
    [Price] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'LineItems'
CREATE TABLE [dbo].[LineItems] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Invoice_Id] int  NOT NULL,
    [RentalTool_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BenchSpaces'
ALTER TABLE [dbo].[BenchSpaces]
ADD CONSTRAINT [PK_BenchSpaces]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Inventories'
ALTER TABLE [dbo].[Inventories]
ADD CONSTRAINT [PK_Inventories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InventoryItems'
ALTER TABLE [dbo].[InventoryItems]
ADD CONSTRAINT [PK_InventoryItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Durations'
ALTER TABLE [dbo].[Durations]
ADD CONSTRAINT [PK_Durations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [PK_Invoices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Receipts'
ALTER TABLE [dbo].[Receipts]
ADD CONSTRAINT [PK_Receipts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RentalTools'
ALTER TABLE [dbo].[RentalTools]
ADD CONSTRAINT [PK_RentalTools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [PK_LineItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [State_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_StateAddress]
    FOREIGN KEY ([State_Id])
    REFERENCES [dbo].[States]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StateAddress'
CREATE INDEX [IX_FK_StateAddress]
ON [dbo].[Addresses]
    ([State_Id]);
GO

-- Creating foreign key on [Address_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_AddressPerson]
    FOREIGN KEY ([Address_Id])
    REFERENCES [dbo].[Addresses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddressPerson'
CREATE INDEX [IX_FK_AddressPerson]
ON [dbo].[People]
    ([Address_Id]);
GO

-- Creating foreign key on [Patron_Id] in table 'BenchSpaces'
ALTER TABLE [dbo].[BenchSpaces]
ADD CONSTRAINT [FK_PersonBenchSpace]
    FOREIGN KEY ([Patron_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonBenchSpace'
CREATE INDEX [IX_FK_PersonBenchSpace]
ON [dbo].[BenchSpaces]
    ([Patron_Id]);
GO

-- Creating foreign key on [Facilitator_Id] in table 'BenchSpaces'
ALTER TABLE [dbo].[BenchSpaces]
ADD CONSTRAINT [FK_PersonBenchSpace1]
    FOREIGN KEY ([Facilitator_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonBenchSpace1'
CREATE INDEX [IX_FK_PersonBenchSpace1]
ON [dbo].[BenchSpaces]
    ([Facilitator_Id]);
GO

-- Creating foreign key on [Inventory_Id] in table 'BenchSpaces'
ALTER TABLE [dbo].[BenchSpaces]
ADD CONSTRAINT [FK_InventoryBenchSpace]
    FOREIGN KEY ([Inventory_Id])
    REFERENCES [dbo].[Inventories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InventoryBenchSpace'
CREATE INDEX [IX_FK_InventoryBenchSpace]
ON [dbo].[BenchSpaces]
    ([Inventory_Id]);
GO

-- Creating foreign key on [Inventory_Id] in table 'InventoryItems'
ALTER TABLE [dbo].[InventoryItems]
ADD CONSTRAINT [FK_InventoryInventoryItems]
    FOREIGN KEY ([Inventory_Id])
    REFERENCES [dbo].[Inventories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InventoryInventoryItems'
CREATE INDEX [IX_FK_InventoryInventoryItems]
ON [dbo].[InventoryItems]
    ([Inventory_Id]);
GO

-- Creating foreign key on [BenchSpace_Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [FK_BenchSpaceInvoice]
    FOREIGN KEY ([BenchSpace_Id])
    REFERENCES [dbo].[BenchSpaces]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchSpaceInvoice'
CREATE INDEX [IX_FK_BenchSpaceInvoice]
ON [dbo].[Invoices]
    ([BenchSpace_Id]);
GO

-- Creating foreign key on [Duration_Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [FK_DurationInvoice]
    FOREIGN KEY ([Duration_Id])
    REFERENCES [dbo].[Durations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DurationInvoice'
CREATE INDEX [IX_FK_DurationInvoice]
ON [dbo].[Invoices]
    ([Duration_Id]);
GO

-- Creating foreign key on [Invoice_Id] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [FK_InvoiceLineItem]
    FOREIGN KEY ([Invoice_Id])
    REFERENCES [dbo].[Invoices]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceLineItem'
CREATE INDEX [IX_FK_InvoiceLineItem]
ON [dbo].[LineItems]
    ([Invoice_Id]);
GO

-- Creating foreign key on [RentalTool_Id] in table 'LineItems'
ALTER TABLE [dbo].[LineItems]
ADD CONSTRAINT [FK_RentalToolLineItem]
    FOREIGN KEY ([RentalTool_Id])
    REFERENCES [dbo].[RentalTools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalToolLineItem'
CREATE INDEX [IX_FK_RentalToolLineItem]
ON [dbo].[LineItems]
    ([RentalTool_Id]);
GO

-- Creating foreign key on [Invoice_Id] in table 'Receipts'
ALTER TABLE [dbo].[Receipts]
ADD CONSTRAINT [FK_InvoiceReceipt]
    FOREIGN KEY ([Invoice_Id])
    REFERENCES [dbo].[Invoices]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoiceReceipt'
CREATE INDEX [IX_FK_InvoiceReceipt]
ON [dbo].[Receipts]
    ([Invoice_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------