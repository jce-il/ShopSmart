USE [master]
GO
/****** Object:  Database [ShopSmart]    Script Date: 04/28/2013 21:22:49 ******/
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
/****** Object:  Table [dbo].[UserTypes]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  Table [dbo].[Supermarkets]    Script Date: 04/28/2013 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supermarkets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supermarkets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Supermarkets] ON
INSERT [dbo].[Supermarkets] ([Id], [Name]) VALUES (1, N'Default Supermarket')
INSERT [dbo].[Supermarkets] ([Id], [Name]) VALUES (2, N'רמי לוי - רב חן')
INSERT [dbo].[Supermarkets] ([Id], [Name]) VALUES (3, N'רמי לוי - גוש עציון')
SET IDENTITY_INSERT [dbo].[Supermarkets] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 04/28/2013 21:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'ירקות ופירות')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'כלי בית')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'לחם')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'מוצרי חלב')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'ממתקים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'מוצרי יסוד')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'סופר פארם')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'פסטות רוטבים מרקים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'קפואים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'שימורים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'תבלינים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'כללי')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (14, N'תה וקפה')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (15, N'פיצוחים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (16, N'דבש תמרים ממרחים')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (17, N'עוגיות וביגלה')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (18, N'מוצרי בריאות')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (19, N'כלי בית 2')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (20, N'קורנפלקסים ובריאות')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (21, N'בשרים')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 04/28/2013 21:22:50 ******/
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
INSERT [dbo].[Customers] ([Id], [CustomerId], [UserName], [Password], [UserTypeId]) VALUES (1, N'000000000', N'Administrator', N'', 1)
INSERT [dbo].[Customers] ([Id], [CustomerId], [UserName], [Password], [UserTypeId]) VALUES (2, N'1111111111', N'Default User', N'', 2)
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[CategorySorts]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 04/28/2013 21:22:50 ******/
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
 CONSTRAINT [PK_MainProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (1, N'חומר ניקוי רב תכליתי', 2, N'CIF - פנטסטיק', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (2, N'מגבונים לחים', 19, N'בקופסא', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (3, N'אורז', 6, N'לבן', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (4, N'מים מזוקקים', 19, N' ', 8.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (5, N'חיתולים', 19, N' ', 50.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (6, N'אבקת כביסה', 19, N'עדינה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (7, N'כמון', 11, N' ', 6.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (8, N'קמח', 6, N' ', 4.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (9, N'נייר טואלט', 19, N'החבילה הגדולה', 40.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (10, N'סבון אסלה', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (11, N'סוכר חום', 6, N' ', 8.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (12, N'עגבניות', 1, N' ', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (13, N'מלפפונים', 1, N' ', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (14, N'פירות', 1, N' ', 13.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (15, N'קישואים', 1, N'מחיר משוער', 12.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (16, N'בטטות', 1, N' ', 7.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (17, N'פתיתים', 8, N'מחיר משוער', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (18, N'פסטה', 8, N' ', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (19, N'פטריות בקופסה', 10, N' ', 8.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (21, N'תפוציפס', 5, N'גדול', 8.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (22, N'סוכריות', 5, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (23, N'מיץ ענבים', 9, N' ', 15.7400, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (24, N'תיבוליות', 11, N'פטריות', 6.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (25, N'מלפפונים חמוצים', 10, N' ', 5.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (26, N'גפרורים', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (27, N'זיתים', 10, N'שחורים חתוכים', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (29, N'לחם', 3, N'אחיד', 6.6900, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (30, N'לחמניות', 3, N'לשבת גם חלה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (31, N'ציפס קפוא', 9, N' ', 6.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (32, N'קציצות דג', 9, N' ', 19.8000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (33, N'גבינה צהובה', 4, N'אם יש כחולה', 6.0900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (34, N'נקניק', 4, N'גדול יבש', 0.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (35, N'חמאת בוטנים', 16, N'קטן', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (36, N'טבעול', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (37, N'סקוטצ', 2, N'לכלים', 5.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (39, N'ניילון נצמד', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (40, N'גומיות', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (41, N'חלב', 4, N' ', 5.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (42, N'מעדנים', 4, N',שבת, לנו', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (43, N'ביצים', 9, N' ', 18.1000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (44, N'קפה', 14, N' ', 7.2500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (45, N'קוטג', 4, N' ', 5.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (46, N'לבנה', 4, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (47, N'גבינת זיתים', 4, N' ', 8.3500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (48, N'גבינה לבנה', 4, N' ', 15.3000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (49, N'שקיות אשפה', 2, N'ענקיות', 22.9000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (50, N'חלב עמיד', 4, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (51, N'גרנולה 2', 18, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (52, N'דגנים- קורנפלקס', 20, N'אם יש זול ממש -קנה גם אותו', 15.9900, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (53, N'מטבוחה', 4, N'רק אם  אתה רוצה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (54, N'חומוס', 4, N' ', 13.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (55, N'שוקו', 4, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (56, N'גלידה - קרמיסימו', 9, N' ', 17.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (57, N'שמן', 6, N' ', 10.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (58, N'טונה', 10, N'בשמן (המחיר לשלישיה)', 12.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (59, N'סוכר', 6, N' ', 3.1500, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (60, N'צימוקים', 15, N' ', 10.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (61, N'גריסים', 6, N' ', 2.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (62, N'חיטה', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (63, N'אבקת מרק', 8, N'בצל', 22.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (64, N'אפונה וגזר', 10, N' ', 3.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (65, N'מרקים', 8, N' ', 4.2500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (66, N'קוסקוס', 6, N' ', 6.2000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (67, N'סולת', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (68, N'תה ירוק', 14, N'תה קינמון', 14.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (69, N'אבוקדו', 1, N' ', 5.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (70, N'בצל', 1, N' ', 1.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (71, N'תפו"א', 1, N'שק', 5.1700, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (72, N'ירקות למרק', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (73, N'ופלים', 17, N'יש וופלות?', 2.6500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (74, N'ביסקוויטים', 17, N' ', 8.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (75, N'במבה', 5, N'חטיפים כלשהם', 5.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (76, N'עוגיות', 17, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (77, N'עוגה', 17, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (78, N'שום', 1, N' ', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (79, N'מגב קטן', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (80, N'פופקורן', 6, N' ', 3.3000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (81, N'שוקולדציפס', 6, N' ', 9.2500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (82, N'גבינה מלוחה', 4, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (83, N'ירקות קפואים', 9, N' ', 15.6500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (84, N'בשר טחון', 21, N'טחון', 40.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (85, N'סילאן', 16, N' ', 20.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (86, N'שוקולד עם עדשים', 5, N' ', 3.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (87, N'שמן זית', 10, N' ', 40.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (88, N'קובה', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (89, N'עוף', 21, N' ', 30.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (90, N'מרכך כביסה', 2, N' ', 18.9900, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (91, N'נייר כסף', 2, N' ', 10.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (92, N'נקנקיות', 4, N'נקניקיות עוף (בשקית כתומה)- לא הודו!', 20.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (93, N'רסק עגבניות', 10, N'פלסטיק (מחיר משוער)', 5.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (94, N'עגבניות מרוסקות', 10, N' ', 4.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (95, N'ממרח שוקולד- נוטלה', 16, N' ', 11.4000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (96, N'דני', 4, N'מעדנים לדניאל-', 3.2000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (98, N'חלבה', 16, N' ', 6.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (99, N'מרגרינה', 4, N' ', 2.6400, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (100, N'תמרים', 15, N' ', 7.2500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (104, N'רוטב לעוף של שבת', 8, N' ', 10.2500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (105, N'אבקת חלב פרווה', 11, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (106, N'מנג''טים', 2, N'מס'' 2', 4.7000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (107, N'נייר אפיה', 2, N' ', 3.7000, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (108, N'טחינה גולמית', 8, N' ', 9.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (109, N'צנוברים', 15, N'מחיר משוער', 20.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (110, N'גרעינים', 15, N'צנוברים', 2.5000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (111, N'חוויאג''', 11, N' ', 5.8000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (112, N'קינמון', 11, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (113, N'שקדים', 15, N' ', 16.5000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (114, N'דבש', 16, N' ', 31.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (115, N'קטשופ', 8, N' ', 9.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (116, N'גזר', 1, N' ', 5.1700, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (117, N'דלעת', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (118, N'פלפלים', 1, N'גמבה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (119, N'כרובית', 1, N'תלוי במחיר', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (120, N'אינסטנט וניל', 6, N' ', 4.7500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (121, N'קצפת ריצ''', 4, N' ', 7.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (122, N'גמדים', 4, N'לשתיה', 13.1700, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (123, N'קמח מלא', 6, N' ', 4.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (124, N'מטליות מטבח - גלגל', 2, N' ', 20.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (125, N'מגבות נייר', 19, N'(מחיר משוער)', 15.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (126, N'טישויים פשוטים', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (127, N'קקאו לבישול', 14, N' ', 8.4000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (128, N'בייגלה', 17, N' ', 7.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (129, N'מנות חמות', 8, N' ', 3.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (132, N'סלמון', 4, N'לסלט', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (133, N'קשים', 2, N'לשתיה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (134, N'קרקר זהב', 17, N' ', 25.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (136, N'שמפו לשיער', 19, N' ', 15.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (137, N'סבון לילדים', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (138, N'דג לשבת', 9, N' ', 29.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (139, N'דגנים- קינמונים', 20, N' ', 24.9000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (140, N'שניצל תירס', 9, N' ', 25.4500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (141, N'תמרים לחים', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (142, N'תבנית חד פעמית', 2, N'בינוני- מחיר משוער', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (143, N'מרכך שיער', 19, N'עדיף הגדול של ד"ר פישר', 20.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (144, N'סבון', 19, N' סבונים קשים', 2.6500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (145, N'שוקולית', 14, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (146, N'בקבוקי מים גדולים', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (147, N'בקבוקי מים קטנים', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (148, N'ריבת תות', 16, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (149, N'עוגיות חיות', 5, N'לגן של שחר', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (151, N'חצילים', 4, N' ', 5.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (152, N'שוקולד', 5, N'מריר,', 4.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (153, N'גבינה נפוליון', 4, N'משלוחי מנות', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (155, N'צלחות חד פעמיות', 2, N'רגילות', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (157, N'משמשים מיובשים', 15, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (158, N'אוזני המן', 17, N'משלוחי מנות', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (159, N'חטיפי אנרג''י', 18, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (161, N'חרדל', 8, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (162, N'מיונז', 8, N' ', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (163, N'רסס וכבס', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (164, N'חוט דנטלי לשיניים', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (165, N'מטאטא', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (166, N'נרות שבת', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (167, N'מצות', 13, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (168, N'תבלינים', 11, N'אבקת שום בשקית,אורגנו', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (169, N'קמח מצה', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (170, N'חסה', 1, N' ', 5.7900, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (171, N'גיל', 4, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (172, N'שקיות לבישול מהיר', 8, N'לחול5-6', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (173, N'גבינה משולשת', 4, N'חול 2-3', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (174, N'פריכיות אורז', 5, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (175, N'פיתות', 3, N'חבילה של 10', 12.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (176, N'ירקות', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (177, N'גביעי גלידה', 18, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (178, N'שקיות סנדוויצים', 2, N'מחיר משוער', 10.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (179, N'פופאייס', 5, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (180, N'קופסת תירס', 10, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (181, N'סירופ שוקולד', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (182, N'אבקת פנקייק', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (183, N'אבקת בלינצס', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (184, N'חמאה', 4, N'האריזה הגדולה', 6.0400, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (185, N'שמנת מתוקה', 4, N' ', 7.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (186, N'ג''לטין', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (187, N'ממתקים לטיול של שחר', 5, N'אור ושחר', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (188, N'אבקת אפיה', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (189, N'חד פעמי', 2, N'קעריות קטנות', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (192, N'מסרק לתינוקות', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (193, N'מלבין כביסה', 2, N'קליה-תוספת למכונת כביסה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (194, N'פרורי לחם', 6, N' ', 5.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (195, N'שתיה קלה', 1, N'מיץ תפוחים, מנגו, נסטי, קולה...', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (196, N'לימון', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (197, N'חומר ניקוי לכלים', 2, N'עדין', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (198, N'בקבוק דיאט', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (199, N'נפה', 19, N'לקמח!', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (200, N'פלסטרים', 19, N'עם ציורים', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (201, N'תרכיז פטל', 1, N' ויטמינצ''יק גדול', 20.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (202, N'רוטב פיצה', 8, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (203, N'אבטיח', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (204, N'סמרטוטים', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (205, N'פותחנים', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (206, N'אקונומיקה', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (207, N'פטרוזיליה קפואה', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (208, N'כרוב', 1, N'מחיר משוער', 7.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (209, N'בורקס פיצה', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (211, N'ברוקולי', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (212, N'פריגת קפוא', 9, N'לשתיה קלה', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (213, N'מפיות', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (214, N'תמצית וניל', 6, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (215, N'מלווח', 9, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (216, N'מטרנה', 19, N'שלב 2', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (217, N'חמוציות', 13, N'אם יש מיובשות -לסלט', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (218, N'שקיות פלייטקס', 7, N' ', 0.0000, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (219, N'בקבוק פלייטקס', 7, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (220, N'נרות חנוכה', 13, N'ערכה/מצית+פתילות', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (221, N'שקדי מרק', 8, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (222, N'אטריות', 8, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (224, N'רוטב אלף האיים', 8, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (225, N'נבטים', 1, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (226, N'קישוטי עוגה', 6, N'פרורי שוקולד, נרות לעוגה, זיקוקים', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (227, N'צבעי מאכל', 6, N'שחור, אדום, צהוב', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (228, N'קרמבו', 5, N'גדול', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (229, N'טישו קלינקס', 18, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (230, N'מגב', 19, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (231, N'פוליקוז', 7, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (232, N'משחת שיניים', 2, N' ', 10.5000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (233, N'זעתר', 11, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (234, N'מלח', 13, N'גס', 6.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (235, N'קרקרים', 17, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (236, N'דגנים- קפטן קרנצ''', 20, N' ', 15.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (237, N'דגנים- צ''יריוס', 20, N'מולטי צ''יריוס', 25.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (238, N'דגנים- ספיישל K', 20, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (239, N'שמנת חמוצה', 4, N' ', 2.1500, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (240, N'שעועית אפויה', 10, N' ', 4.9900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (241, N'סלמי (גליל)', 4, N' ', 22.5000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (242, N'מיץ בקרטון', 13, N' ', 3.8500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (243, N'ממרח שוקולד-השחר', 16, N' ', 12.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (244, N'עוף שלם', 21, N' ', 30.7200, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (245, N'אדממה', 9, N' ', 12.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (246, N'גריסי פנינה', 6, N' ', 5.4900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (247, N'תה צמחים', 14, N' ', 12.7900, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (248, N'חזה עוף', 21, N' ', 36.6400, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (249, N'עדשים', 6, N'אדומים', 9.5000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (250, N'מברשת שיניים', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (251, N'כפפות גומי', 2, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (252, N'יין קונקורד', 9, N'מחיר משוער', 20.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (253, N'תפוחים', 1, N' ', 9.9000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (254, N'מלח גס', 13, N' ', 1.4500, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (255, N'זיתים שחורים', 10, N'חתוכים', 7.9000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (256, N'מיץ ענבים - קדם', 9, N' ', 20.0000, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (257, N'קפה שחור', 14, N' ', 7.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (258, N'חלה', 3, N' ', 15.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (259, N'מוצרי היגיינה', 13, N'סגול', 19.7500, 1)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (260, N'רסק עגבניות - פלסטיק', 10, N' ', 3.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (262, N'שמרים יבשים', 6, N' ', 10.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (263, N'עגבניות שרי', 1, N'מחיר משוער', 13.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (264, N'בזיליקום', 1, N'טרי - מחיר משוער', 10.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (265, N'בירה', 1, N'מחיר משוער', 25.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (266, N'סבון נוזלי', 19, N'מחיר משוער', 10.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (268, N'דאודורנט', 13, N' ', 30.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (269, N'מנקי אוזניים', 13, N' ', 0.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (270, N'אפונה יבשה', 2, N' ', 10.0000, 0)
INSERT [dbo].[Products] ([Id], [ProductName], [CategoryID], [Notes], [Price], [Main]) VALUES (271, N'רפידות הנקה', 13, N' ', 10.0000, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  View [dbo].[FullyJoinedProducts]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  Table [dbo].[ShopLists]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  Table [dbo].[ShoplistItems]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  UserDefinedFunction [dbo].[GetProductsBySupermarkrt]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  View [dbo].[FullyJoinedShoppingLists]    Script Date: 04/28/2013 21:22:50 ******/
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
/****** Object:  ForeignKey [FK_Customers_UserTypes]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_UserTypes] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_UserTypes]
GO
/****** Object:  ForeignKey [FK_CategorySorts_Categories]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[CategorySorts]  WITH CHECK ADD  CONSTRAINT [FK_CategorySorts_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[CategorySorts] CHECK CONSTRAINT [FK_CategorySorts_Categories]
GO
/****** Object:  ForeignKey [FK_CategorySorts_Supermarkets]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[CategorySorts]  WITH CHECK ADD  CONSTRAINT [FK_CategorySorts_Supermarkets] FOREIGN KEY([SupermarketId])
REFERENCES [dbo].[Supermarkets] ([Id])
GO
ALTER TABLE [dbo].[CategorySorts] CHECK CONSTRAINT [FK_CategorySorts_Supermarkets]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_ShopLists_Customers]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[ShopLists]  WITH CHECK ADD  CONSTRAINT [FK_ShopLists_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[ShopLists] CHECK CONSTRAINT [FK_ShopLists_Customers]
GO
/****** Object:  ForeignKey [FK_ShopLists_Supermarkets]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[ShopLists]  WITH CHECK ADD  CONSTRAINT [FK_ShopLists_Supermarkets] FOREIGN KEY([SuperMarketId])
REFERENCES [dbo].[Supermarkets] ([Id])
GO
ALTER TABLE [dbo].[ShopLists] CHECK CONSTRAINT [FK_ShopLists_Supermarkets]
GO
/****** Object:  ForeignKey [FK_ItemsToBuy_Products]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[ShoplistItems]  WITH CHECK ADD  CONSTRAINT [FK_ItemsToBuy_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ShoplistItems] CHECK CONSTRAINT [FK_ItemsToBuy_Products]
GO
/****** Object:  ForeignKey [FK_ItemsToBuy_ShopLists]    Script Date: 04/28/2013 21:22:50 ******/
ALTER TABLE [dbo].[ShoplistItems]  WITH CHECK ADD  CONSTRAINT [FK_ItemsToBuy_ShopLists] FOREIGN KEY([ShopListId])
REFERENCES [dbo].[ShopLists] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ShoplistItems] CHECK CONSTRAINT [FK_ItemsToBuy_ShopLists]
GO
