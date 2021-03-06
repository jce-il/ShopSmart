USE [master]
GO
/****** Object:  Database [ShopSmart]    Script Date: 05/24/2013 08:41:43 ******/
CREATE DATABASE [ShopSmart] ON  PRIMARY 
( NAME = N'Products', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Products.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Products_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Products_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopSmart] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopSmart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopSmart] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ShopSmart] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ShopSmart] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ShopSmart] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ShopSmart] SET ARITHABORT OFF
GO
ALTER DATABASE [ShopSmart] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ShopSmart] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ShopSmart] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ShopSmart] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ShopSmart] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ShopSmart] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ShopSmart] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ShopSmart] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ShopSmart] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ShopSmart] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ShopSmart] SET  DISABLE_BROKER
GO
ALTER DATABASE [ShopSmart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ShopSmart] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ShopSmart] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ShopSmart] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ShopSmart] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ShopSmart] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ShopSmart] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ShopSmart] SET  READ_WRITE
GO
ALTER DATABASE [ShopSmart] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ShopSmart] SET  MULTI_USER
GO
ALTER DATABASE [ShopSmart] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ShopSmart] SET DB_CHAINING OFF
GO
USE [ShopSmart]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserTypes] ON
INSERT [dbo].[UserTypes] ([Id], [Type]) VALUES (1, N'Administrator')
INSERT [dbo].[UserTypes] ([Id], [Type]) VALUES (2, N'Editor')
INSERT [dbo].[UserTypes] ([Id], [Type]) VALUES (3, N'User')
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
/****** Object:  Table [dbo].[Supermarkets]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supermarkets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Supermarkets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Supermarkets] ON
INSERT [dbo].[Supermarkets] ([Id], [Name], [guid]) VALUES (1, N'Default Supermarket', N'ac914392-fea0-4c32-9c40-a7d8bcf3d187')
INSERT [dbo].[Supermarkets] ([Id], [Name], [guid]) VALUES (2, N'רמי לוי - רב חן', N'd8ce9adc-0e0d-4d13-b965-1be4361217a6')
INSERT [dbo].[Supermarkets] ([Id], [Name], [guid]) VALUES (3, N'רמי לוי - גוש עציון', N'578da3ec-79ed-4480-972c-59ef1d3cdfaa')
SET IDENTITY_INSERT [dbo].[Supermarkets] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (1, N'7f0454b4-3ea0-4c74-a237-200255559250', N'ירקות ופירות')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (2, N'bf008c7b-ab6b-4c72-888e-e2bc3728de74', N'כלי בית')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (3, N'31fadfe7-f888-4cda-a553-347e6ab11e36', N'לחם')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (4, N'ddd66b29-0c98-4ff7-8ea0-952897682f3f', N'מוצרי חלב')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (5, N'343c1eb8-bdbe-4931-ab41-bd073019c05c', N'ממתקים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (6, N'4bd070f4-fc8f-4979-a385-6879e2ee91c0', N'מוצרי יסוד')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (7, N'1d58aa01-ae9a-4793-876f-01876050758d', N'סופר פארם')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (8, N'e220c5f2-71f7-47b5-89a2-ebc68d9851a1', N'פסטות רוטבים מרקים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (9, N'a41cc5a0-7b97-481f-bc9e-4a4f0c60ab78', N'קפואים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (10, N'93f8a8fb-fe31-42ae-a0c3-6dbda8b0ffb6', N'שימורים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (11, N'708978af-f348-4352-ac88-7023cd2da549', N'תבלינים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (13, N'a5bc66a2-8750-4738-98da-91714144cb26', N'כללי')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (14, N'df8865b0-f2fb-4b4a-b312-687a47fc94c4', N'תה וקפה')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (15, N'ca07d4b6-d045-4437-a0f4-5d09455e0163', N'פיצוחים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (16, N'cb4caa56-4092-494e-8cf9-abe2e35b4dfc', N'דבש תמרים ממרחים')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (17, N'05e99c55-ed44-434b-8a2b-4ed63d10fa87', N'עוגיות וביגלה')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (18, N'7062176b-69a9-42b4-b9b7-b5f809ddda28', N'מוצרי בריאות')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (19, N'37cbe907-96a6-43bb-9916-c87926ef857f', N'כלי בית 2')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (20, N'70c963a2-e502-4575-b52d-842e36102e68', N'קורנפלקסים ובריאות')
INSERT [dbo].[Categories] ([Id], [guid], [Name]) VALUES (21, N'fe2a51fe-a98b-4f48-acca-f09e561f7960', N'בשרים')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](10) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[UserTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([Id], [CustomerId], [UserName], [Password], [UserTypeId]) VALUES (1, N'000000000', N'Admin', N'123', 1)
INSERT [dbo].[Customers] ([Id], [CustomerId], [UserName], [Password], [UserTypeId]) VALUES (2, N'1111111111', N'Editor', N'123', 2)
INSERT [dbo].[Customers] ([Id], [CustomerId], [UserName], [Password], [UserTypeId]) VALUES (8, N'2222222222', N'User', N'123', 3)
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[CategorySorts]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategorySorts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupermarketId] [int] NOT NULL,
	[SortValue] [int] NOT NULL,
 CONSTRAINT [PK_CategorySorts_1] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[SupermarketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategorySorts] ON
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (42, 1, 1, 10)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (1, 1, 2, 10)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (22, 1, 3, 10)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (43, 2, 1, 110)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (2, 2, 2, 110)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (23, 2, 3, 110)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (44, 3, 1, 160)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (3, 3, 2, 160)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (24, 3, 3, 160)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (45, 4, 1, 150)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (4, 4, 2, 150)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (25, 4, 3, 150)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (46, 5, 1, 30)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (5, 5, 2, 30)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (26, 5, 3, 30)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (47, 6, 1, 100)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (6, 6, 2, 100)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (27, 6, 3, 100)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (48, 7, 1, 120)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (7, 7, 2, 120)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (28, 7, 3, 120)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (49, 8, 1, 70)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (8, 8, 2, 70)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (29, 8, 3, 70)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (50, 9, 1, 140)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (9, 9, 2, 140)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (30, 9, 3, 140)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (51, 10, 1, 20)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (10, 10, 2, 20)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (31, 10, 3, 20)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (52, 11, 1, 130)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (11, 11, 2, 130)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (32, 11, 3, 130)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (53, 13, 1, 170)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (12, 13, 2, 170)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (33, 13, 3, 170)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (54, 14, 1, 65)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (13, 14, 2, 65)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (34, 14, 3, 65)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (55, 15, 1, 80)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (14, 15, 2, 80)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (35, 15, 3, 80)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (56, 16, 1, 75)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (15, 16, 2, 75)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (36, 16, 3, 75)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (57, 17, 1, 25)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (16, 17, 2, 25)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (37, 17, 3, 25)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (58, 18, 1, 50)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (17, 18, 2, 50)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (38, 18, 3, 50)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (59, 19, 1, 115)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (18, 19, 2, 115)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (39, 19, 3, 115)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (60, 20, 1, 23)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (19, 20, 2, 23)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (40, 20, 3, 23)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (61, 21, 1, 180)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (20, 21, 2, 180)
INSERT [dbo].[CategorySorts] ([Id], [CategoryId], [SupermarketId], [SortValue]) VALUES (41, 21, 3, 180)
SET IDENTITY_INSERT [dbo].[CategorySorts] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 05/24/2013 08:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](20) NULL,
	[CategoryID] [int] NOT NULL,
	[Notes] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[Main] [bit] NOT NULL,
	[guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_MainProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (1, N'חומר ניקוי רב תכליתי', 2, N'CIF - פנטסטיק', 0.0000, 0, N'28799118-5c57-43e5-94dc-5ef214d0f2a9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (2, N'מגבונים לחים', 19, N'בקופסא', 0.0000, 0, N'4bc30bcb-73c7-473a-bfb5-56c010d30dfd')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (3, N'אורז', 6, N'לבן', 7.0000, 1, N'd29e8711-913f-4efe-a10f-e3d52ae3b7ec')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (4, N'מים מזוקקים', 19, N' ', 8.9000, 0, N'f5c15fe5-380e-42cf-9c9d-d27870814566')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (5, N'חיתולים', 19, N' ', 50.0000, 1, N'e5d14c4d-d03d-4f56-a015-bf87e9f0c640')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (6, N'אבקת כביסה', 19, N'עדינה', 0.0000, 0, N'2d503e9c-5079-4324-9f5b-b2d1e3769d1f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (7, N'כמון', 11, N' ', 6.9000, 0, N'dad60629-02c0-4569-8c12-0a848b13ebd2')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (8, N'קמח', 6, N' ', 4.0000, 1, N'dd93d477-7db0-497c-9f24-480561bb207c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (9, N'נייר טואלט', 19, N'החבילה הגדולה', 40.0000, 1, N'fc0419b3-6909-4cf2-b86f-afa8ea875171')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (10, N'סבון אסלה', 2, N' ', 0.0000, 0, N'ee8d84ab-6426-4a90-8c52-de298efd00cf')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (11, N'סוכר חום', 6, N' ', 8.7900, 0, N'c38b71b8-eda8-42cf-adf9-db0a18f4e165')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (12, N'עגבניות', 1, N' ', 6.0000, 1, N'f8a18ccf-8562-4fec-8705-582627532481')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (13, N'מלפפונים', 1, N' ', 7.0000, 1, N'2d55c1bd-3a56-43f2-9020-383d82eea31a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (14, N'פירות', 1, N' ', 13.0000, 1, N'ac93ef42-9a75-4aca-9336-f466340a186b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (15, N'קישואים', 1, N'מחיר משוער', 12.0000, 1, N'1fc28f16-362e-416b-821f-1481a3dc0510')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (16, N'בטטות', 1, N' ', 7.5000, 1, N'a7cfc617-7411-42f0-bc63-57cccc33ef34')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (17, N'פתיתים', 8, N'מחיר משוער', 6.0000, 1, N'1e3ff902-fb68-441d-a62b-9eb399b59e8d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (18, N'פסטה', 8, N' ', 6.0000, 1, N'1cb645d7-86e9-469e-a063-6fbb78ea94b8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (19, N'פטריות בקופסה', 10, N' ', 8.0000, 1, N'86f48453-b384-4860-b117-e156e8273457')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (21, N'תפוציפס', 5, N'גדול', 8.4900, 0, N'40fdabb0-3105-4c10-83fb-3f42b7957c17')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (22, N'סוכריות', 5, N' ', 0.0000, 0, N'f467ec9f-67f2-480a-ab8f-38d2bb6f5130')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (23, N'מיץ ענבים', 9, N' ', 15.7400, 0, N'ef4f77b0-a6d4-4b6d-afa9-10370a17f879')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (24, N'תיבוליות', 11, N'פטריות', 6.4900, 0, N'd71c75f5-7c23-4c6f-afb4-387dc593f2a2')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (25, N'מלפפונים חמוצים', 10, N' ', 5.5000, 1, N'e22de5cc-fd06-4fcc-a5ac-4baff8667d4a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (26, N'גפרורים', 2, N' ', 0.0000, 0, N'f30436d8-de3b-4384-b18e-fef9d3345a74')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (27, N'זיתים', 10, N'שחורים חתוכים', 6.0000, 1, N'4531e4de-a8cc-4839-9949-680d76a80a13')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (29, N'לחם', 3, N'אחיד', 6.6900, 1, N'da3af320-3f27-4d87-8fd9-04376a5d613d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (30, N'לחמניות', 3, N'לשבת גם חלה', 0.0000, 0, N'c7426934-e08a-4a15-8846-8f5e3fe8cc64')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (31, N'ציפס קפוא', 9, N' ', 6.9900, 0, N'0e857bfe-8448-4398-9a50-8f994f2489bf')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (32, N'קציצות דג', 9, N' ', 19.8000, 0, N'4a89f7d8-31fd-4d34-9e94-2f321b2777f3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (33, N'גבינה צהובה', 4, N'אם יש כחולה', 6.0900, 0, N'526acd78-ab03-496c-89e3-3700a3a69707')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (34, N'נקניק', 4, N'גדול יבש', 0.0000, 1, N'9bae2f37-3ed1-4f4b-abc6-0a5a0aa4e19d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (35, N'חמאת בוטנים', 16, N'קטן', 0.0000, 0, N'dd540230-ed3d-4d92-84be-59fa95ec9164')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (36, N'טבעול', 9, N' ', 0.0000, 0, N'bffcaa4f-ad2f-48d7-bc2b-869d19ca858e')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (37, N'סקוטצ', 2, N'לכלים', 5.0000, 0, N'593dd587-9416-4114-9bb3-fc5b8eb5dbe6')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (39, N'ניילון נצמד', 2, N' ', 0.0000, 0, N'3d4ecde8-a740-418e-b797-e14060631d25')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (40, N'גומיות', 2, N' ', 0.0000, 0, N'1b12ab23-7648-47e7-be37-f3452d9cff74')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (41, N'חלב', 4, N' ', 5.0000, 1, N'2e902b88-0763-478c-bebe-6ba64d82c243')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (42, N'מעדנים', 4, N',שבת, לנו', 0.0000, 0, N'4bb908a4-d842-4cdf-9cc7-8a24c0ffcda9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (43, N'ביצים', 9, N' ', 18.1000, 1, N'715bce46-20b4-46a2-91cc-0c5401efdb75')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (44, N'קפה', 14, N' ', 7.2500, 0, N'184e355f-526c-4654-b5c0-5a9f6427467e')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (45, N'קוטג', 4, N' ', 5.0000, 1, N'10477f21-ddfa-425f-a129-9ce792ca412b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (46, N'לבנה', 4, N' ', 0.0000, 0, N'1630a3d0-d20b-4a22-b440-a24cf338f26a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (47, N'גבינת זיתים', 4, N' ', 8.3500, 0, N'2d38c440-d6dc-4ae8-9e7b-72d9bce79ed3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (48, N'גבינה לבנה', 4, N' ', 15.3000, 0, N'a2315ca7-146d-4d83-a9bf-1cb03984696b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (49, N'שקיות אשפה', 2, N'ענקיות', 22.9000, 1, N'28c2c952-f06d-44e6-ac0e-aa5d816f8611')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (50, N'חלב עמיד', 4, N' ', 0.0000, 0, N'af6eec27-a3f4-4323-a351-2f1d36ca82b2')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (51, N'גרנולה 2', 18, N' ', 0.0000, 0, N'9f181a14-911e-4aee-b697-0016152fdd21')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (52, N'דגנים- קורנפלקס', 20, N'אם יש זול ממש -קנה גם אותו', 15.9900, 1, N'1a9233e9-8570-4f6e-9677-fc71e2d537ca')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (53, N'מטבוחה', 4, N'רק אם  אתה רוצה', 0.0000, 0, N'a812f1a3-db8c-47e6-b1fe-e792598d7140')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (54, N'חומוס', 4, N' ', 13.0000, 1, N'4575c2fc-58fc-40d7-b783-20db6f3f2007')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (55, N'שוקו', 4, N' ', 0.0000, 0, N'358af0b6-5448-4b98-8952-ed9025f7395c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (56, N'גלידה - קרמיסימו', 9, N' ', 17.9900, 0, N'b85f6160-6dd1-4a42-875f-7668b314a40f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (57, N'שמן', 6, N' ', 10.0000, 1, N'568bf490-e68d-4b6b-87a0-47a654a83567')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (58, N'טונה', 10, N'בשמן (המחיר לשלישיה)', 12.0000, 1, N'67369ebb-5589-469b-89ab-e0947d2e31bb')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (59, N'סוכר', 6, N' ', 3.1500, 1, N'cce20f2f-46c1-42a8-a010-f1d3801f2d6d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (60, N'צימוקים', 15, N' ', 10.9000, 0, N'495b02f5-6b0b-44a3-b67c-7f7f40289301')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (61, N'גריסים', 6, N' ', 2.5000, 1, N'f26bbc5f-4240-46bd-9940-5c5e8c543643')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (62, N'חיטה', 6, N' ', 0.0000, 0, N'ed623e04-fb4f-44ae-bb6e-4bbc3ee95278')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (63, N'אבקת מרק', 8, N'בצל', 22.9900, 0, N'99148774-0590-447d-b0e0-452e0ccd2fee')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (64, N'אפונה וגזר', 10, N' ', 3.7900, 0, N'795be1a1-8d8e-4514-b8da-c6094bd38641')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (65, N'מרקים', 8, N' ', 4.2500, 0, N'cb5f00cb-a241-4b86-82da-2b9707a53aac')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (66, N'קוסקוס', 6, N' ', 6.2000, 0, N'228e4da2-8049-48af-bc58-a2aade074049')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (67, N'סולת', 6, N' ', 0.0000, 0, N'7decbb32-611f-435a-9e8a-5cd3c7fabf5d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (68, N'תה ירוק', 14, N'תה קינמון', 14.9900, 0, N'cea1a378-678c-42e5-a0d7-07687deeaf39')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (69, N'אבוקדו', 1, N' ', 5.0000, 1, N'c0064615-ef1d-4a88-aea3-b5b431c504fc')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (70, N'בצל', 1, N' ', 1.5000, 1, N'ddb522fe-1d0b-41c6-9989-fbb5fe15ee4b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (71, N'תפו"א', 1, N'שק', 5.1700, 1, N'7ae89e13-80e8-458a-9896-e7abd3faa4a9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (72, N'ירקות למרק', 1, N' ', 0.0000, 0, N'6e70a610-934c-4af9-ae22-e066d838379c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (73, N'ופלים', 17, N'יש וופלות?', 2.6500, 0, N'1f152713-49ef-42f6-b670-1a856834b479')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (74, N'ביסקוויטים', 17, N' ', 8.9000, 0, N'ae336fb1-322c-4d09-bcb0-bef48d95b7a0')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (75, N'במבה', 5, N'חטיפים כלשהם', 5.0000, 1, N'cf5622eb-116d-4a6e-8e52-8ace50b4980c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (76, N'עוגיות', 17, N' ', 0.0000, 0, N'f27dbbd4-8f8e-4a13-8a25-1cb42b66640c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (77, N'עוגה', 17, N' ', 0.0000, 0, N'082ae82d-7319-4ad5-81dc-8ac56a600d84')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (78, N'שום', 1, N' ', 7.0000, 1, N'eb020a07-127c-44b1-98ef-eebd60502c4e')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (79, N'מגב קטן', 19, N' ', 0.0000, 0, N'264526eb-5ce5-4e75-abd2-58d4c8f23bd8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (80, N'פופקורן', 6, N' ', 3.3000, 1, N'139bdd7d-4fc9-4c13-8701-548d12b2e84c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (81, N'שוקולדציפס', 6, N' ', 9.2500, 0, N'699bf7e3-6961-4800-9d6f-7939e7059d62')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (82, N'גבינה מלוחה', 4, N' ', 0.0000, 0, N'067ec6cf-22e3-49a7-bee4-9e2ed38202ee')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (83, N'ירקות קפואים', 9, N' ', 15.6500, 0, N'be1aaeb0-702f-4ad9-bb75-b602a4128f61')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (84, N'בשר טחון', 21, N'טחון', 40.0000, 1, N'15e0fd15-360a-4f22-a6fe-3396adc7f06d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (85, N'סילאן', 16, N' ', 20.9000, 0, N'bf1d58c7-3a85-4cfb-80a9-c5bae8f1e5ba')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (86, N'שוקולד עם עדשים', 5, N' ', 3.7900, 0, N'290cbf20-911a-417e-9960-44afbec2258c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (87, N'שמן זית', 10, N' ', 40.0000, 1, N'b2952a8b-6319-4b15-ab70-6cfe6924d2d8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (88, N'קובה', 9, N' ', 0.0000, 0, N'9ddea258-ab77-43e1-9ba6-8dd93796ca44')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (89, N'עוף', 21, N' ', 30.0000, 1, N'f5387b55-61e0-4125-b418-63b29189d053')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (90, N'מרכך כביסה', 2, N' ', 18.9900, 1, N'b215854a-e980-416d-ab3e-ee9871d1ba38')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (91, N'נייר כסף', 2, N' ', 10.9900, 0, N'bdbea3dd-9484-42a6-a42d-cdc732dd9cde')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (92, N'נקנקיות', 4, N'נקניקיות עוף (בשקית כתומה)- לא הודו!', 20.0000, 1, N'7f458345-f4d3-48ae-961a-0ea57297ffe7')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (93, N'רסק עגבניות', 10, N'פלסטיק (מחיר משוער)', 5.5000, 1, N'64b105bb-752b-44fa-a191-ff503adaaa89')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (94, N'עגבניות מרוסקות', 10, N' ', 4.4900, 0, N'01327b87-f78c-4fe7-a5d1-ce1d876b6d11')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (95, N'ממרח שוקולד- נוטלה', 16, N' ', 11.4000, 0, N'604656f0-2dd8-4047-9474-d193811ec9cf')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (96, N'דני', 4, N'מעדנים לדניאל-', 3.2000, 0, N'66ed667e-d511-4d83-bc39-0c94c6c45d65')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (98, N'חלבה', 16, N' ', 6.4900, 0, N'54ca9222-e9f2-46f5-aa2e-d9270a61e0d6')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (99, N'מרגרינה', 4, N' ', 2.6400, 0, N'503c6cd0-e5a5-466e-b20b-7feb1bf6dc12')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (100, N'תמרים', 15, N' ', 7.2500, 0, N'0649a284-b7ad-4c72-bb3c-dfa31f1dc6cd')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (104, N'רוטב לעוף של שבת', 8, N' ', 10.2500, 0, N'8380c0a0-c523-4ad6-a5dc-b1c572968779')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (105, N'אבקת חלב פרווה', 11, N' ', 0.0000, 0, N'41e2b568-d429-46fb-8b4e-954917f5b586')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (106, N'מנג''טים', 2, N'מס'' 2', 4.7000, 0, N'd4439531-af31-4321-9108-ce378478eedd')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (107, N'נייר אפיה', 2, N' ', 3.7000, 0, N'bb30650a-c632-44cb-9de4-21911e8ccba7')
GO
print 'Processed 100 total records'
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (108, N'טחינה גולמית', 8, N' ', 9.0000, 0, N'ea810219-9150-4728-99b3-c579c470603a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (109, N'צנוברים', 15, N'מחיר משוער', 20.0000, 0, N'f3b6dc7c-03cb-48bc-b705-c7947ace4a4f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (110, N'גרעינים', 15, N'צנוברים', 2.5000, 0, N'42f0190f-b3a5-4fdc-8f8c-2b92467fe1cc')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (111, N'חוויאג''', 11, N' ', 5.8000, 0, N'33398d95-7329-43e6-bad5-b8d32e8db6c1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (112, N'קינמון', 11, N' ', 0.0000, 0, N'cb0c4bd7-a4cc-4dd2-b420-d9ca7a82be6a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (113, N'שקדים', 15, N' ', 16.5000, 0, N'92e5d5fb-d889-4525-9e73-d9dfd3830eda')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (114, N'דבש', 16, N' ', 31.9900, 0, N'ff8dde28-929e-45d7-ab48-81d6df5acf43')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (115, N'קטשופ', 8, N' ', 9.0000, 1, N'54426570-9de6-432a-ac92-513b9acadb49')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (116, N'גזר', 1, N' ', 5.1700, 1, N'a7775aab-0fd7-46ae-a625-96efdda9d6da')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (117, N'דלעת', 1, N' ', 0.0000, 0, N'e7141759-54b0-4b52-b176-988bf46d160d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (118, N'פלפלים', 1, N'גמבה', 0.0000, 0, N'8774a096-8962-4480-b101-1a282566a735')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (119, N'כרובית', 1, N'תלוי במחיר', 0.0000, 0, N'bed504da-95d9-4028-90b7-5161063997a7')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (120, N'אינסטנט וניל', 6, N' ', 4.7500, 0, N'baf0f556-2f82-4e9e-8748-278ee2e6558c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (121, N'קצפת ריצ''', 4, N' ', 7.7900, 0, N'011a9338-bd78-43b4-9dd4-f77a8494320d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (122, N'גמדים', 4, N'לשתיה', 13.1700, 0, N'4e58bfb9-276b-40ce-9a5c-caddb734d557')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (123, N'קמח מלא', 6, N' ', 4.9900, 0, N'3b058ad9-645d-4c9b-81aa-15abd60c1db6')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (124, N'מטליות מטבח - גלגל', 2, N' ', 20.7900, 0, N'97896619-675f-44fa-a7ce-01dbca8821ab')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (125, N'מגבות נייר', 19, N'(מחיר משוער)', 15.0000, 0, N'92080267-38d4-4094-9c4c-a2baefd9bf21')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (126, N'טישויים פשוטים', 19, N' ', 0.0000, 0, N'1144b00a-3394-49a1-b6b5-6aa73e0985a4')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (127, N'קקאו לבישול', 14, N' ', 8.4000, 0, N'a4361ddf-acae-430e-86df-24f6b783b4bd')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (128, N'בייגלה', 17, N' ', 7.4900, 0, N'c864a218-8fa1-43d3-8ad6-736fc5b89eb5')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (129, N'מנות חמות', 8, N' ', 3.7900, 0, N'7d698cd2-44a5-48c0-bffc-d8d99714e93f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (132, N'סלמון', 4, N'לסלט', 0.0000, 0, N'906bda76-3d73-49ca-864a-3b1f350fc609')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (133, N'קשים', 2, N'לשתיה', 0.0000, 0, N'c9090958-29a4-41e1-91ef-f71e59b654f9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (134, N'קרקר זהב', 17, N' ', 25.0000, 1, N'e79bd9ff-ece2-4317-a1e9-a65d975eee15')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (136, N'שמפו לשיער', 19, N' ', 15.0000, 1, N'a8b68686-7d16-485a-8c86-eb655c1373d6')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (137, N'סבון לילדים', 19, N' ', 0.0000, 0, N'6eb33b62-c8ca-4ad2-b45b-1bca9b9c0d47')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (138, N'דג לשבת', 9, N' ', 29.9900, 0, N'bacae37a-81b8-4606-a639-40aa156c5fec')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (139, N'דגנים- קינמונים', 20, N' ', 24.9000, 1, N'2dea317f-6156-433f-9f87-6bd7e96a3535')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (140, N'שניצל תירס', 9, N' ', 25.4500, 0, N'a62d289a-518f-4f6c-ac4c-37e4e89ba53e')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (141, N'תמרים לחים', 1, N' ', 0.0000, 0, N'111f4344-faa9-463e-9a63-ac897941d42d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (142, N'תבנית חד פעמית', 2, N'בינוני- מחיר משוער', 6.0000, 1, N'fab4df98-7dd0-4120-9fb7-3a6b0a7cc170')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (143, N'מרכך שיער', 19, N'עדיף הגדול של ד"ר פישר', 20.0000, 1, N'4559b8fc-5cdd-4d65-bf96-489b0b9e1070')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (144, N'סבון', 19, N' סבונים קשים', 2.6500, 0, N'945e0956-57c0-451c-9cb0-49fb10b9e262')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (145, N'שוקולית', 14, N' ', 0.0000, 0, N'da5c7fe2-46fe-40a8-9e81-f11f02536558')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (146, N'בקבוקי מים גדולים', 1, N' ', 0.0000, 0, N'325e397e-1019-41e0-a232-fb6fd724eb9f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (147, N'בקבוקי מים קטנים', 1, N' ', 0.0000, 0, N'5f207156-fc8d-4424-bd44-da760b239cb8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (148, N'ריבת תות', 16, N' ', 0.0000, 0, N'1f92eaf8-7d31-492a-9d40-74c5ca8afd3a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (149, N'עוגיות חיות', 5, N'לגן של שחר', 0.0000, 0, N'40644cde-2005-4e65-b821-e7d7a760cdfa')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (151, N'חצילים', 4, N' ', 5.0000, 0, N'9c51fea2-9e21-476b-a9c3-ab4514a63c01')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (152, N'שוקולד', 5, N'מריר,', 4.0000, 1, N'51111c4e-b3dd-41c8-8753-fba250b55125')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (153, N'גבינה נפוליון', 4, N'משלוחי מנות', 0.0000, 0, N'66c6fc41-9296-4124-965a-eaccb46eee68')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (155, N'צלחות חד פעמיות', 2, N'רגילות', 0.0000, 0, N'f4594175-61ef-42a5-a27a-af44ce0d0cd9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (157, N'משמשים מיובשים', 15, N' ', 0.0000, 0, N'c2fd8f53-041e-4d4a-af46-dadccf4af7ce')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (158, N'אוזני המן', 17, N'משלוחי מנות', 0.0000, 0, N'13595953-b30f-43a1-8570-fff344564f67')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (159, N'חטיפי אנרג''י', 18, N' ', 0.0000, 0, N'afc8e2c8-0f79-47f2-93a5-8a8533d0f926')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (161, N'חרדל', 8, N' ', 0.0000, 0, N'f6d7a0db-8eaf-47dc-91f7-6f0ae7a4921c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (162, N'מיונז', 8, N' ', 7.0000, 1, N'd2acc353-5896-4933-8b32-e4dad16a6155')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (163, N'רסס וכבס', 2, N' ', 0.0000, 0, N'd79ef695-f44b-456b-bf48-21387260c1f9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (164, N'חוט דנטלי לשיניים', 19, N' ', 0.0000, 0, N'6beb7ee5-a904-416c-9132-8c9d1e1eacc3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (165, N'מטאטא', 19, N' ', 0.0000, 0, N'6e3a74a2-d957-4513-8a9b-82e3b621144c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (166, N'נרות שבת', 2, N' ', 0.0000, 0, N'cacec288-c80d-4392-b758-9dfce3c05375')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (167, N'מצות', 13, N' ', 0.0000, 0, N'b99c1e41-47bb-4c83-96ab-8217d7c24ba0')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (168, N'תבלינים', 11, N'אבקת שום בשקית,אורגנו', 7.0000, 1, N'7934ce2c-5ef4-404f-8647-832856ae88b5')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (169, N'קמח מצה', 6, N' ', 0.0000, 0, N'a517a244-23d3-4d50-a4e0-2bed580b9181')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (170, N'חסה', 1, N' ', 5.7900, 1, N'79c98eaf-a7b6-4835-87a5-91e13f06d891')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (171, N'גיל', 4, N' ', 0.0000, 0, N'9c2b01bf-248b-4330-8c73-71a1b0959bc3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (172, N'שקיות לבישול מהיר', 8, N'לחול5-6', 0.0000, 0, N'76f77623-a240-465c-a47a-d738f3ba2d8a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (173, N'גבינה משולשת', 4, N'חול 2-3', 0.0000, 0, N'1960cd20-a233-4545-bae4-c245f08183a4')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (174, N'פריכיות אורז', 5, N' ', 0.0000, 0, N'00abe93d-304c-4f48-bcef-567756775518')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (175, N'פיתות', 3, N'חבילה של 10', 12.5000, 1, N'0271d04d-ff44-4958-aff4-c14323e1d8f5')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (176, N'ירקות', 1, N' ', 0.0000, 0, N'fa178e88-f920-496f-88c6-b225a9c1548c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (177, N'גביעי גלידה', 18, N' ', 0.0000, 0, N'14c45744-dac5-4a62-a009-9488a74be301')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (178, N'שקיות סנדוויצים', 2, N'מחיר משוער', 10.0000, 0, N'ff60f07e-964c-4b92-bcee-e98154db37ff')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (179, N'פופאייס', 5, N' ', 0.0000, 0, N'0a04f02e-b9de-449b-bce5-d60542184deb')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (180, N'קופסת תירס', 10, N' ', 0.0000, 0, N'232967a7-483d-427f-add8-6f23b6c08a53')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (181, N'סירופ שוקולד', 6, N' ', 0.0000, 0, N'fa4dc5e7-ad09-4f02-b72c-174ec94bc544')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (182, N'אבקת פנקייק', 6, N' ', 0.0000, 0, N'8ff24df5-84a4-4905-81ff-c06c78324163')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (183, N'אבקת בלינצס', 6, N' ', 0.0000, 0, N'abbfc884-d411-4c5a-be30-0275ff7b67e3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (184, N'חמאה', 4, N'האריזה הגדולה', 6.0400, 1, N'bdc17f40-fc64-4f5d-b969-75fef19f0ab4')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (185, N'שמנת מתוקה', 4, N' ', 7.0000, 1, N'012af8fa-5ccd-46f6-a886-d3a5402a2609')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (186, N'ג''לטין', 6, N' ', 0.0000, 0, N'706be8c3-25ef-487e-9726-0c72cd6a53b5')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (187, N'ממתקים לטיול של שחר', 5, N'אור ושחר', 0.0000, 0, N'356780a9-0c16-4e44-aca5-5eb9ae78cc48')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (188, N'אבקת אפיה', 6, N' ', 0.0000, 0, N'2c363836-cdf5-4db3-94b7-b023457fa071')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (189, N'חד פעמי', 2, N'קעריות קטנות', 0.0000, 0, N'e20b225d-09f5-4cad-9d33-f699dcee8854')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (192, N'מסרק לתינוקות', 19, N' ', 0.0000, 0, N'66df8a4e-a1ac-4d06-b2d4-3076b0f1d3cb')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (193, N'מלבין כביסה', 2, N'קליה-תוספת למכונת כביסה', 0.0000, 0, N'9ad8028b-484f-4f3e-8b27-3b55d7e1d47b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (194, N'פרורי לחם', 6, N' ', 5.0000, 1, N'a333f255-2254-4655-bf3d-dd922e1b5aa3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (195, N'שתיה קלה', 1, N'מיץ תפוחים, מנגו, נסטי, קולה...', 6.0000, 1, N'73cc4271-db3a-4aca-b6e5-679dfc9d3717')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (196, N'לימון', 1, N' ', 0.0000, 0, N'c2a1185a-6fc5-4199-82a9-598272476079')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (197, N'חומר ניקוי לכלים', 2, N'עדין', 0.0000, 0, N'bd05a93b-d562-4bd6-bd46-5342e83e923d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (198, N'בקבוק דיאט', 1, N' ', 0.0000, 0, N'b0dd2253-7a33-4f4f-ba41-deb44dc98a24')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (199, N'נפה', 19, N'לקמח!', 0.0000, 0, N'e34baa65-3171-4a41-aa71-7f488e7d92d2')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (200, N'פלסטרים', 19, N'עם ציורים', 0.0000, 0, N'c0287e98-3a9b-4320-a153-e211fa6c742b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (201, N'תרכיז פטל', 1, N' ויטמינצ''יק גדול', 20.0000, 1, N'a43c5cbb-ee45-454a-963e-7777ca16cb8d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (202, N'רוטב פיצה', 8, N' ', 0.0000, 0, N'c83efd2a-b29e-44a5-ba43-120875211d64')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (203, N'אבטיח', 1, N' ', 0.0000, 0, N'05d1f11a-0dc7-4b40-b386-fcaeb7735730')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (204, N'סמרטוטים', 2, N' ', 0.0000, 0, N'0dba9332-d7c9-4840-8d63-ed2a80e1480c')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (205, N'פותחנים', 19, N' ', 0.0000, 0, N'66c0a7bd-14b3-4fe0-b2b7-00c2713f4380')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (206, N'אקונומיקה', 19, N' ', 0.0000, 0, N'4afaa89e-d39a-4758-8ed2-4ea55190b9eb')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (207, N'פטרוזיליה קפואה', 9, N' ', 0.0000, 0, N'10f54a06-60e4-4922-87cf-ad325e9187cc')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (208, N'כרוב', 1, N'מחיר משוער', 7.0000, 0, N'3fdd1103-f39b-4528-b7eb-8f01275f69d7')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (209, N'בורקס פיצה', 9, N' ', 0.0000, 0, N'111ffc41-556c-4421-8a2c-abd8548d1080')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (211, N'ברוקולי', 9, N' ', 0.0000, 0, N'c1d6a3c0-a32f-4f8a-a040-233546d9d64e')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (212, N'פריגת קפוא', 9, N'לשתיה קלה', 0.0000, 0, N'94428a68-bdcb-4f91-9321-b85553d75fae')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (213, N'מפיות', 19, N' ', 0.0000, 0, N'2081d42a-9a3a-454c-a7e4-d3ec08bff4af')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (214, N'תמצית וניל', 6, N' ', 0.0000, 0, N'e980eae8-76d6-425a-958e-7d9dc79a2dce')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (215, N'מלווח', 9, N' ', 0.0000, 0, N'ccb2db1a-a259-4b6a-99f2-64bb9e9838c9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (216, N'מטרנה', 19, N'שלב 2', 0.0000, 0, N'3498013d-ff6b-4326-9737-f3d3c45e9d19')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (217, N'חמוציות', 13, N'אם יש מיובשות -לסלט', 0.0000, 0, N'604f0e86-48b3-40d3-8d65-809f163f7aaf')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (218, N'שקיות פלייטקס', 7, N' ', 0.0000, 0, N'4b105cac-e7ed-4e65-8dc4-5d5167b2dd1e')
GO
print 'Processed 200 total records'
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (219, N'בקבוק פלייטקס', 7, N' ', 0.0000, 0, N'ce8507c6-630d-430f-beb6-d1efbcc091dc')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (220, N'נרות חנוכה', 13, N'ערכה/מצית+פתילות', 0.0000, 0, N'6520af36-b5a3-46b4-9c5c-626c0fa204a9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (221, N'שקדי מרק', 8, N' ', 0.0000, 0, N'5c90b55c-d47f-458e-9fac-f3259a9cbfe4')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (222, N'אטריות', 8, N' ', 0.0000, 0, N'f948f8c7-61e9-48d9-a141-f4bbc131cf0a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (224, N'רוטב אלף האיים', 8, N' ', 0.0000, 0, N'8f6637f5-59a6-4325-9761-25fe73dfbdb3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (225, N'נבטים', 1, N' ', 0.0000, 0, N'5e6bb852-b41e-423f-83be-1a7878e01eb0')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (226, N'קישוטי עוגה', 6, N'פרורי שוקולד, נרות לעוגה, זיקוקים', 0.0000, 0, N'583bb982-124b-4f17-abed-ec6b649ab127')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (227, N'צבעי מאכל', 6, N'שחור, אדום, צהוב', 0.0000, 0, N'158145f9-bd62-413d-a44b-eb260750b431')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (228, N'קרמבו', 5, N'גדול', 0.0000, 0, N'91672262-06a9-45ee-a37d-4a5222f097a1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (229, N'טישו קלינקס', 18, N' ', 0.0000, 0, N'd2f5d58a-d3f2-4df9-bdbf-202a0986696a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (230, N'מגב', 19, N' ', 0.0000, 0, N'3e4efd88-3a98-42b6-9bd3-1a353db4cce1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (231, N'פוליקוז', 7, N' ', 0.0000, 0, N'a7d21efd-789d-4488-8ac6-df4897766bc9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (232, N'משחת שיניים', 2, N' ', 10.5000, 0, N'ad6679ef-fb6f-4d78-a215-c2324873500a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (233, N'זעתר', 11, N' ', 0.0000, 0, N'c3f5d33f-46a0-4f9f-9a76-629a58bdb004')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (234, N'מלח', 13, N'גס', 6.0000, 1, N'38984cca-ea9d-4f42-9c4a-70bea2ece363')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (235, N'קרקרים', 17, N' ', 0.0000, 0, N'764f220b-811d-4888-b96b-1980ad0120db')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (236, N'דגנים- קפטן קרנצ''', 20, N' ', 15.9000, 0, N'c9885c10-1c66-49eb-bffd-c55ec8a78566')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (237, N'דגנים- צ''יריוס', 20, N'מולטי צ''יריוס', 25.0000, 1, N'86961f84-02e6-40bc-a5d5-1036bb608775')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (238, N'דגנים- ספיישל K', 20, N' ', 0.0000, 0, N'c743b7b2-54ea-40ac-846e-5fdfb9d0f96a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (239, N'שמנת חמוצה', 4, N' ', 2.1500, 1, N'35dc9137-0161-4f34-b12a-836f4dbed2cb')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (240, N'שעועית אפויה', 10, N' ', 4.9900, 0, N'a362084f-4d04-412e-b282-85ab504a85b3')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (241, N'סלמי (גליל)', 4, N' ', 22.5000, 0, N'66c08c9d-16c5-4995-8c4e-3ea4d5fd4137')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (242, N'מיץ בקרטון', 13, N' ', 3.8500, 0, N'edde9735-c56e-47a4-8705-6112a45c6747')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (243, N'ממרח שוקולד-השחר', 16, N' ', 12.0000, 1, N'da74218f-93e2-4f96-9cf4-9059682a8f2f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (244, N'עוף שלם', 21, N' ', 30.7200, 1, N'3ce23a85-765c-4663-a1ea-f67370d5ff25')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (245, N'אדממה', 9, N' ', 12.0000, 1, N'8e99156b-1f3b-4f22-8c50-f8289a01a5f1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (246, N'גריסי פנינה', 6, N' ', 5.4900, 0, N'8cfe2114-a99f-494f-9b7b-663d9d2d22b9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (247, N'תה צמחים', 14, N' ', 12.7900, 0, N'cb756a64-f443-4179-8f50-972de980a0df')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (248, N'חזה עוף', 21, N' ', 36.6400, 1, N'52be478a-129b-4bf0-b95f-5de6d67a8b4f')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (249, N'עדשים', 6, N'אדומים', 9.5000, 1, N'dedc08d2-b0d7-4a64-8e79-9538ee32bde2')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (250, N'מברשת שיניים', 2, N' ', 0.0000, 0, N'bf1608e9-39b0-479f-95d1-daa5e26e6237')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (251, N'כפפות גומי', 2, N' ', 0.0000, 0, N'8f21c95b-2715-468a-a57a-500622ccc2a9')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (252, N'יין קונקורד', 9, N'מחיר משוער', 20.0000, 1, N'd87ad781-fd1e-42c4-a34e-2f3352b9af8b')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (253, N'תפוחים', 1, N' ', 9.9000, 1, N'eb704ce8-9f1f-4b27-8fd5-3666968b30fe')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (254, N'מלח גס', 13, N' ', 1.4500, 0, N'391791d7-f7a7-44e8-8925-51f8bbf68fd8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (255, N'זיתים שחורים', 10, N'חתוכים', 7.9000, 0, N'767095e8-1758-41f3-894d-6eaac66131d1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (256, N'מיץ ענבים - קדם', 9, N' ', 20.0000, 1, N'29f90273-3570-4fa3-bf9e-3622632b4e90')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (257, N'קפה שחור', 14, N' ', 7.0000, 0, N'd0b9dd44-9f35-4d5f-90b3-7e00ed69cec8')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (258, N'חלה', 3, N' ', 15.0000, 0, N'72ea154b-fae9-4464-90c0-7aca8bcf8ac5')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (259, N'מוצרי היגיינה', 13, N'סגול', 19.7500, 1, N'f6e43724-9fad-4051-9a78-c503d360ff53')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (260, N'רסק עגבניות - פלסטיק', 10, N' ', 3.0000, 0, N'37b539ff-dd98-43ba-9c70-520cff54926d')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (262, N'שמרים יבשים', 6, N' ', 10.0000, 0, N'87937f52-4509-4c1e-8d41-5667a5694e3a')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (263, N'עגבניות שרי', 1, N'מחיר משוער', 13.0000, 0, N'3ac6f0f0-fc3b-4da3-b62e-a63176d02567')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (264, N'בזיליקום', 1, N'טרי - מחיר משוער', 10.0000, 0, N'dc5dce63-8201-47a6-870e-9fa8b9196a12')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (265, N'בירה', 1, N'מחיר משוער', 25.0000, 0, N'0175a0be-1584-4218-8009-95d42dd8faed')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (266, N'סבון נוזלי', 19, N'מחיר משוער', 10.0000, 0, N'e8f032ca-4480-4cb7-80ff-c8eb38fbf8d1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (268, N'דאודורנט', 13, N' ', 30.0000, 0, N'4c5c9262-46c1-4828-8a2a-ab5a01da2dcf')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (269, N'מנקי אוזניים', 13, N' ', 0.0000, 0, N'234c6588-fc8b-4e5f-a732-300eb513aa17')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (270, N'אפונה יבשה', 2, N' ', 10.0000, 0, N'ff0bd0cb-1897-4810-a327-2ef8c10e18d1')
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main], [guid]) VALUES (271, N'רפידות הנקה', 13, N' ', 10.0000, 0, N'27771698-9da7-4aff-bdc4-f2690a816edb')
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  View [dbo].[FullyJoinedProducts]    Script Date: 05/24/2013 08:41:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FullyJoinedProducts]
AS
SELECT     dbo.Products.Id,
		   dbo.Products.ProductName, 
		   dbo.Products.Price , 
		   dbo.Products.Main, 
		   dbo.Categories.Id AS CategoryId, 
		   dbo.Categories.Name CategoryName, 
		   dbo.CategorySorts.SortValue CategorySort, 
           dbo.Supermarkets.Name as SuperMarketName,
           dbo.Supermarkets.Id as SuperMarketId          
FROM       
		   dbo.Products
		   INNER JOIN dbo.Categories ON dbo.Categories.Id = dbo.Products.Id 
		   INNER JOIN dbo.CategorySorts ON CategorySorts.CategoryId = dbo.Categories.Id		    		  
		   INNER JOIN dbo.Supermarkets ON dbo.Supermarkets.Id = dbo.Categories.Id
GO
/****** Object:  Table [dbo].[ShopLists]    Script Date: 05/24/2013 08:41:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopLists](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[CustomerId] [int] NULL,
	[SuperMarketId] [int] NULL,
 CONSTRAINT [PK_ShopLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoplistItems]    Script Date: 05/24/2013 08:41:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoplistItems](
	[Id] [int] NOT NULL,
	[ShopListId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ItemsToBuy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[GetProductsBySupermarkrt]    Script Date: 05/24/2013 08:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetProductsBySupermarkrt] 
(	
	-- Add the parameters for the function here
	@SuperMarketId int
	
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT * 
	FROM FullyJoinedProducts
	WHERE FullyJoinedProducts.SuperMarketId = @SuperMarketId
)
GO
/****** Object:  View [dbo].[FullyJoinedShoppingLists]    Script Date: 05/24/2013 08:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FullyJoinedShoppingLists]
AS
SELECT     dbo.Products.Id,
		   dbo.Products.ProductName, 
		   dbo.Products.Price , 
		   dbo.Products.Main, 
		   dbo.Categories.Id AS CategoryId, 
		   dbo.Categories.Name CategoryName, 
		   dbo.CategorySorts.SortValue CategorySort, 		   
           dbo.ShoplistItems.Id AS ItemId, 
           dbo.ShoplistItems.Quantity, 
           dbo.ShopLists.Title ShopListTitle, 
           dbo.ShopLists.Date ShopListDate, 
           dbo.ShopLists.Id AS ShopListId,
           dbo.Supermarkets.Name as SuperMarketName,
           dbo.Supermarkets.Id as SuperMarketId,
           dbo.Customers.UserName as CustomerUserName,
           dbo.Customers.Id as CustomerId
FROM       
		   Products
		   INNER JOIN dbo.Categories ON dbo.Categories.Id = dbo.Products.Id 
		   INNER JOIN dbo.CategorySorts ON CategorySorts.CategoryId = dbo.Categories.Id
		   INNER JOIN dbo.ShoplistItems ON dbo.Products.Id = dbo.ShoplistItems.ProductId 
		   INNER JOIN dbo.ShopLists ON dbo.ShoplistItems.ShopListId = dbo.ShopLists.Id
		   INNER JOIN dbo.Supermarkets on dbo.Supermarkets.Id = dbo.ShopLists.SuperMarketId
										AND dbo.Supermarkets.Id = dbo.Categories.Id
		   INNER JOIN dbo.Customers on Customers.Id = dbo.ShopLists.CustomerId
GO
/****** Object:  Default [DF_Supermarkets_guid]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[Supermarkets] ADD  CONSTRAINT [DF_Supermarkets_guid]  DEFAULT (newid()) FOR [guid]
GO
/****** Object:  Default [DF_Categories_guid]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_guid]  DEFAULT (newid()) FOR [guid]
GO
/****** Object:  Default [DF_Products_guid]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_guid]  DEFAULT (newid()) FOR [guid]
GO
/****** Object:  ForeignKey [FK_Customers_UserTypes]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_UserTypes] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_UserTypes]
GO
/****** Object:  ForeignKey [FK_CategorySorts_Categories]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[CategorySorts]  WITH CHECK ADD  CONSTRAINT [FK_CategorySorts_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[CategorySorts] CHECK CONSTRAINT [FK_CategorySorts_Categories]
GO
/****** Object:  ForeignKey [FK_CategorySorts_Supermarkets]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[CategorySorts]  WITH CHECK ADD  CONSTRAINT [FK_CategorySorts_Supermarkets] FOREIGN KEY([SupermarketId])
REFERENCES [dbo].[Supermarkets] ([Id])
GO
ALTER TABLE [dbo].[CategorySorts] CHECK CONSTRAINT [FK_CategorySorts_Supermarkets]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 05/24/2013 08:41:44 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_ShopLists_Customers]    Script Date: 05/24/2013 08:41:45 ******/
ALTER TABLE [dbo].[ShopLists]  WITH CHECK ADD  CONSTRAINT [FK_ShopLists_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[ShopLists] CHECK CONSTRAINT [FK_ShopLists_Customers]
GO
/****** Object:  ForeignKey [FK_ShopLists_Supermarkets]    Script Date: 05/24/2013 08:41:45 ******/
ALTER TABLE [dbo].[ShopLists]  WITH CHECK ADD  CONSTRAINT [FK_ShopLists_Supermarkets] FOREIGN KEY([SuperMarketId])
REFERENCES [dbo].[Supermarkets] ([Id])
GO
ALTER TABLE [dbo].[ShopLists] CHECK CONSTRAINT [FK_ShopLists_Supermarkets]
GO
/****** Object:  ForeignKey [FK_ItemsToBuy_Products]    Script Date: 05/24/2013 08:41:45 ******/
ALTER TABLE [dbo].[ShoplistItems]  WITH CHECK ADD  CONSTRAINT [FK_ItemsToBuy_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ShoplistItems] CHECK CONSTRAINT [FK_ItemsToBuy_Products]
GO
/****** Object:  ForeignKey [FK_ItemsToBuy_ShopLists]    Script Date: 05/24/2013 08:41:45 ******/
ALTER TABLE [dbo].[ShoplistItems]  WITH CHECK ADD  CONSTRAINT [FK_ItemsToBuy_ShopLists] FOREIGN KEY([ShopListId])
REFERENCES [dbo].[ShopLists] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ShoplistItems] CHECK CONSTRAINT [FK_ItemsToBuy_ShopLists]
GO
