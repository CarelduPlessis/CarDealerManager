USE [master]
GO
/****** Object:  Database [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f]    Script Date: 17/09/2020 9:23:45 AM ******/
CREATE DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f', FILENAME = N'C:\Users\cdup\CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f_log', FILENAME = N'C:\Users\cdup\CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET  MULTI_USER 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET QUERY_STORE = OFF
GO
USE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17/09/2020 9:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 17/09/2020 9:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarBrandName] [nvarchar](max) NOT NULL,
	[CarModel] [nvarchar](max) NOT NULL,
	[CarYear] [nvarchar](4) NOT NULL,
	[Fuel] [int] NOT NULL,
	[Transmission] [int] NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[InStock] [int] NOT NULL,
	[SupplierFK] [int] NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17/09/2020 9:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 17/09/2020 9:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfPurchase] [datetime2](7) NOT NULL,
	[WarrantyDuration] [int] NOT NULL,
	[CarFK] [int] NOT NULL,
	[CustomerFK] [int] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 17/09/2020 9:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200915013449_CREDdb', N'3.1.8')
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([Id], [CarBrandName], [CarModel], [CarYear], [Fuel], [Transmission], [Color], [InStock], [SupplierFK]) VALUES (2, N'Honda', N'Jazz', N'2020', 0, 0, N'Brown', 34, 1)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Address], [Email], [Phone]) VALUES (1, N'Tomes', N'Smith', N'210  Lybster Street, Thomsons Ford', N'Smith@gmail.com', 2025550139)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([Id], [DateOfPurchase], [WarrantyDuration], [CarFK], [CustomerFK]) VALUES (4, CAST(N'2020-09-08T15:44:00.0000000' AS DateTime2), 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Id], [SupplierName], [Email], [Phone]) VALUES (1, N'Honda', N'Honda@gmail.com', 2025550192)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
/****** Object:  Index [IX_Car_SupplierFK]    Script Date: 17/09/2020 9:23:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Car_SupplierFK] ON [dbo].[Car]
(
	[SupplierFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Store_CarFK]    Script Date: 17/09/2020 9:23:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Store_CarFK] ON [dbo].[Store]
(
	[CarFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Store_CustomerFK]    Script Date: 17/09/2020 9:23:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Store_CustomerFK] ON [dbo].[Store]
(
	[CustomerFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Supplier_SupplierFK] FOREIGN KEY([SupplierFK])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Supplier_SupplierFK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Car_CarFK] FOREIGN KEY([CarFK])
REFERENCES [dbo].[Car] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Car_CarFK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Customer_CustomerFK] FOREIGN KEY([CustomerFK])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Customer_CustomerFK]
GO
USE [master]
GO
ALTER DATABASE [CarDealerManagerCREDContext-725f34f4-ba27-4de3-b769-de1d112bf26f] SET  READ_WRITE 
GO
