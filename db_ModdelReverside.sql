USE [master]
GO
/****** Object:  Database [ModelReverside]    Script Date: 25/12/2022 10:32:31 PM ******/
CREATE DATABASE [ModelReverside]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ModelReverside', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ModelReverside.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ModelReverside_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ModelReverside_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ModelReverside] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ModelReverside].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ModelReverside] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ModelReverside] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ModelReverside] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ModelReverside] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ModelReverside] SET ARITHABORT OFF 
GO
ALTER DATABASE [ModelReverside] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ModelReverside] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ModelReverside] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ModelReverside] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ModelReverside] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ModelReverside] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ModelReverside] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ModelReverside] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ModelReverside] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ModelReverside] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ModelReverside] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ModelReverside] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ModelReverside] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ModelReverside] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ModelReverside] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ModelReverside] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ModelReverside] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ModelReverside] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ModelReverside] SET  MULTI_USER 
GO
ALTER DATABASE [ModelReverside] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ModelReverside] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ModelReverside] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ModelReverside] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ModelReverside] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ModelReverside] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ModelReverside] SET QUERY_STORE = OFF
GO
USE [ModelReverside]
GO
/****** Object:  User [admin]    Script Date: 25/12/2022 10:32:31 PM ******/
CREATE USER [admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Icon] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NOT NULL,
	[Create_Date] [date] NULL,
	[Status] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[Phone_Number] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Detail]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](10, 2) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_variations]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_variations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[value] [varchar](255) NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Price] [decimal](12, 2) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Stock] [int] NOT NULL,
	[Discount] [int] NULL,
	[Category_Id] [varchar](10) NOT NULL,
	[Subcategory_Id] [varchar](20) NOT NULL,
	[Image3] [varchar](50) NULL,
	[Image4] [varchar](50) NULL,
 CONSTRAINT [PK__Products__3214EC07D144F311] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Variations]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Variations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Value] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategories]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategories](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Category_Id] [varchar](10) NOT NULL,
	[Icon] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](30) NULL,
	[Email] [varchar](40) NOT NULL,
	[Fullname] [nvarchar](40) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [int] NULL,
	[Introduce] [nvarchar](300) NULL,
	[Status] [bit] NULL,
	[Activate_Code] [varchar](40) NULL,
	[Forgot_Password_Code] [varchar](40) NULL,
	[Avatar] [varchar](40) NULL,
	[Role_Id] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variations]    Script Date: 25/12/2022 10:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variations](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Name], [Icon]) VALUES (N'AM', N'Mô Hình Anime', N'ghost.png')
INSERT [dbo].[Categories] ([Id], [Name], [Icon]) VALUES (N'CT', N'Mô Hình Custom', N'console.png')
INSERT [dbo].[Categories] ([Id], [Name], [Icon]) VALUES (N'MV', N'Mô Hình Movie', N'shield.png')
INSERT [dbo].[Categories] ([Id], [Name], [Icon]) VALUES (N'TFM', N'Mô Hình Transformer', N'gundam.png')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (1, N'vuongAD', CAST(N'2022-12-13' AS Date), 1, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (2, N'vuong123', CAST(N'2022-12-13' AS Date), 0, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (31, N'vuong123', CAST(N'2022-12-24' AS Date), 2, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (32, N'vuong123', CAST(N'2022-12-24' AS Date), 1, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (33, N'vuong123', CAST(N'2022-12-25' AS Date), NULL, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (34, N'hung123', CAST(N'2022-12-13' AS Date), NULL, N'Hồ Chí Minh', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (35, N'hung123', CAST(N'2022-12-13' AS Date), NULL, N'Hà Nội', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (36, N'hung123', CAST(N'2022-12-13' AS Date), NULL, N'Hà Nội', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (37, N'hung123', CAST(N'2022-12-13' AS Date), NULL, N'Hà Nội', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (38, N'hung123', CAST(N'2022-12-13' AS Date), NULL, N'Hà Nội', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (39, N'khoa123', CAST(N'2022-12-13' AS Date), 1, N'Đà Nẵng', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (40, N'khoa123', CAST(N'2022-12-13' AS Date), NULL, N'Đà Nẵng', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (41, N'khoa123', CAST(N'2022-12-13' AS Date), NULL, N'Đà Nẵng', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (42, N'tien123', CAST(N'2022-12-13' AS Date), NULL, N'Bình Dương', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (43, N'tien123', CAST(N'2022-12-13' AS Date), NULL, N'Bình Dương', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (44, N'phat123', CAST(N'2022-12-13' AS Date), NULL, N'Đồng Nai', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (45, N'phat123', CAST(N'2022-12-13' AS Date), NULL, N'Hải Dương', N'0123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (46, N'vuong123', CAST(N'2022-12-25' AS Date), NULL, N'Hồ chí minh', N'123456789')
INSERT [dbo].[Orders] ([Id], [Username], [Create_Date], [Status], [Address], [Phone_Number]) VALUES (47, N'vuong123', CAST(N'2022-12-25' AS Date), NULL, N'ưdadadasda', N'898524485')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_Detail] ON 

INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (2, 31, 4, 1, CAST(3520000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (3, 31, 3, 1, CAST(7500000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (4, 32, 8, 1, CAST(3800000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (5, 33, 2, 1, CAST(3500000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (8, 34, 8, 1, CAST(3800000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (11, 35, 2, 1, CAST(3500000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (12, 46, 3, 1, CAST(7500000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders_Detail] ([Id], [Order_Id], [Product_Id], [Quantity], [Price], [Status]) VALUES (13, 47, 4, 1, CAST(3520000.00 AS Decimal(10, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Orders_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (1, N'Mô hình The Ultimate Fight Madara ', N'29735647ac9723bbced73f01dbc912e1c15f164214dd6814c07170cc.jpg', N'0f0d6135dad5ce6b3fc24fc53e6b1663862923965002c10d68f6ee8d.jpg', CAST(8200000.00 AS Decimal(12, 2)), N'Tỷ lệ 1/7  : 38cm ( L ) x 38cm ( D ) x 45cm( H ) ', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (2, N'Mô hình Akatsuki Series Pain Bust Statue', N'9e0700d560f311026a3cf69350d956cb7b522ccce94716b696d14adf.jpg', N'78ea3631e8939b5d58ec9f53b23937f632b92cabe400fd875a7b5864.jpg', CAST(3500000.00 AS Decimal(12, 2)), N'Tỷ lệ 1/7  : (H)40cm, (W)30cm, (L)35cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (3, N'Mô hình Akatsuki Itachi', N'NRT1.jpg', N'NRT2.jpg', CAST(7500000.00 AS Decimal(12, 2)), N'(Scale 1/4) : 50cm(H) x 26cm(W) x 22cm(D)', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (4, N'Mô hình Obito Uchiha ', N'2b085c45506924de3c3d50259e8e9054b2d875180b69f06eebaa410f.jpg', N'4ab157a05b5a8ccd31269a5cb991189464251ac58187d22d0e41f788.jpg', CAST(3520000.00 AS Decimal(12, 2)), N'Tỷ lệ 1/7  : (H)40cm, (W)30cm, (L)35cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (5, N' Scale Gate ofMô hình Might Guy with LED', N'NRT7.jpg', N'NRT8.jpg', CAST(7200000.00 AS Decimal(12, 2)), N'Kích thước: Cao ~60cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (6, N'Mô hình Sasuke Time Line', N'03491ada7618b0975634d6909930903de03cfc3e4e5f828dda0338de.jpg', N'f01d4df4716add7e637eb9eb3176a8d220db7f9241adbc275007990c.jpg', CAST(12000000.00 AS Decimal(12, 2)), N'Kích thước: H55 * W38 * L52cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (7, N'Mô hình Namikaze Minato ', N'95aa0ec84aab105efa0f3ef0376f11fe53863adabcd79ecbe914ae82.jpg', N'02b6b8afdae241cf7334f11cda0eedf6e9783aa6f50e3eaaee9a0fde.jpg', CAST(10200000.00 AS Decimal(12, 2)), N'Kích thước:42cm x35cm x30cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (8, N'Mô Hình Uchiha Obito', N'a1e2435414f2c31f843dd12a5910c4032299d3a4e08849d229ccda5a.jpg', N'2eea6b1e723fba046580546e475bc4c1948384aef1db5ef8a1685dce.jpg', CAST(3800000.00 AS Decimal(12, 2)), N'Kích thước: (H)35.5cm x (W)26cm x (D)23.5cm', 5, 10, N'AM', N'NRT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (9, N'Mô hình Monkey D Luffy', N'7f0281a773d0e1fe9e5994b1f0204ef68f91547c723ebaea97b1c401.jpg', N'fa46e20cf0691bd2fd8070db0b11bdb22b4bf36cc655619a86bca298.jpg', CAST(1570000.00 AS Decimal(12, 2)), N'Tỷ lệ: 1/4 và 1/6', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (10, N'Mô hình Zoro Wano', N'c37f2a305680d7f6b3b7e83ce2ce9447f72aedd576c15d46b107650b.jpg', N'c74a8fa3fe7eebffc81f0fa0eaee299317a93068405fd1ce6b039852.jpg', CAST(1230000.00 AS Decimal(12, 2)), N'Tỷ lệ: 1/6', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (11, N'Mô hình Edward Newgate (Râu Trắng)', N'b87d42025399f8c3531e37a6554a00be989e31e58628f6f3502bab80.jpg', N'06c595be560e4e45404aa1c16bd3cb41773540ac0a6930eb67d39051.jpg', CAST(8000000.00 AS Decimal(12, 2)), N'Kích thước:26.5cm x15cm x13.5cm', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (12, N'Mô hình Sabo - Jimei Palace ', N'eb2ab19c9d8b46804f995110c109d8255209b1946b449d506d2e7243.jpg', N'9f663c0dd87a1686f7ac110314c088d34472d908d1db20847f37d381.jpg', CAST(10500000.00 AS Decimal(12, 2)), N'Kích thước: 43cm x30cm x38cm ', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (13, N'Mô hình Vinsmoke Sanji ', N'e05c522e84676c4dec119a6370655f72c09af5187262fa4e65ca0799.jpg', N'2840b4bf21ec3822920ea281ac408b5205ff2d770ed3b65fc54bdeaa.jpg', CAST(6500000.00 AS Decimal(12, 2)), N'Kích thước: 40cm 26cm 30cm', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (14, N'Mô hình Ace & Râu trắng ', N'b750bde7e256d540bd250e6f9cb4b0275ceb39c74237d278e55248cc.jpg', N'ca0857152cc272cb1d012237edec4f7330283c86ebd347e3c33b978d.jpg', CAST(10500000.00 AS Decimal(12, 2)), N'Kích thước:68cm 48cm 35cm (1/6)', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (15, N'Mô hình Marco', N'c213b1710f343485c768ea75249257e2a68f02b32e4db383b8b9731d.jpg', N'a1bfb7f2591abe447b78273779f8415e41237b32f00fc64cda6b8536.jpg', CAST(12000000.00 AS Decimal(12, 2)), N'Kích thước:68cm 48cm 35cm (1/6)', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (16, N'Mô hình Nika Luffy Bust', N'058fc5cb1fd157173d974188413119818b14ce140136fc3de1da0064.jpg', N'1243995852f6f39a273948b7da34613f483558ca1c34d75e8142d130.jpg', CAST(13000000.00 AS Decimal(12, 2)), N'Kích thước:  23 cm (cao)', 5, 10, N'AM', N'OP', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (19, N'Mô Hình DragonBall - Goku body silicon', N'drg1.jpg', N'drg2.jpg', CAST(14990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (20, N'Mô Hình Dragon Ball Trunks Resin Statue', N'drg3.jpg', N'drg4.jpg', CAST(15990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (21, N'Mô Hình Vegeta and Trunks', N'drg5.jpg', N'drg6.jpg', CAST(17990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (22, N'Mô Hình Bust Goku', N'drg7.jpg', N'drg8.jpg', CAST(17990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (23, N'Mô Hình Shenron Dragon Meeting Goku', N'drg9.jpg', N'drg10.jpg', CAST(18590000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (24, N'Mô Hình Samurai SS3 Goku', N'drg11.jpg', N'drg12.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (25, N'Mô Hình Dragon Ball Gogeta', N'drg13.jpg', N'drg14.jpg', CAST(20990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (26, N'Mô Hình Spirit Bomb Son Goku', N'drg15.jpg', N'drg16.jpg', CAST(23490000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'AM', N'DRG', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (27, N'Mô Hình Okkotsu Yuta with Cursed Rika', N'jk1.jpg', N'jk2.jpg', CAST(24390000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (29, N'Mô Hình Okkotsu Yuta with Cursed Rika', N'jk3.jpg', N'jk4.jpg', CAST(14990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (30, N'Mô Hình Gojo - Sun Studio', N'jk5.jpg', N'jk6.jpg', CAST(15990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (31, N'Mô Hình Kento Nanami - eStream', N'jk7.jpg', N'jk8.jpg', CAST(17990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (32, N'Mô Hình Satoru Gojo - FREEing', N'jk9.jpg', N'jk10.jpg', CAST(17990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (33, N'Mô Hình Suguru Geto - FREEing', N'jk11.jpg', N'jk12.jpg', CAST(18590000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (34, N'Mô Hình Toge Inumaki - eStream', N'jk13.jpg', N'jk14.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (35, N'Mô Hình Shibuya Scramble', N'jk15.jpg', N'jk16.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'AM', N'JK', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (37, N'Mô hình Iron Men', N'2933a3395d6525169e1c51f4acaa2429aa2c813ff74d4d09e153991a.jpg', N'2933a3395d6525169e1c51f4acaa2429aa2c813ff74d4d09e153991a.jpg', CAST(1000000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (38, N'Mô hình Spider Men', N'2a6a05c7d32e20a5088122297ab84efe9f07df8ec4d450cb0f12e977.jpg', N'a0e69e1bf3ac7ab399c43b56a0f37e186e71746b423122b7d25c2e25.jpg', CAST(1500000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (40, N'Mô hình Báo đen', N'617ddf04081fd9a0177e79f8c3c85ab300f57a457c4350301945e790.jpg', N'b7ac2299bad39768d0165192b745bce26e15f917b1651c7f3892b345.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (41, N'Mô hình Loki', N'de9fb228c6cac6a51e0ec328a1abf242e12c54791dc2ece692823f53.jpg', N'dd43636069e62ed671cc7a971252fc8d37d27ded0ec45dfafb80b628.jpg', CAST(1250000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (42, N'Mô hình Wonder Women', N'974fcbbe4d0f3853e190c3086461dff55025807aa815ee72b83acdcc.jpg', N'9a8c451aeddb6e07eb6ad5694818fe575db65a297a1c41a62f244a16.jpg', CAST(2150000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (43, N'Mô hình Deadpool', N'6d1833eb2af10473eb49d00dd72eedb5691d9fcf1194f76924c6728d.jpg', N'7d25543be275ad344aa1fb17c7054fafc607a915e6534d4624416ba0.jpg', CAST(2000000.00 AS Decimal(12, 2)), N'Laptop gaming tốt nhất phân khúc', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (44, N'Mô Hình AQUAMAN ', N'f4d2db9ec302c2ace707433e9c720116b184713d86a4f49b803067dd.jpg', N'331c2623e8153031d9bf7ca72094c3a7d54b58ff5d980ba3173ce263.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Mô Hình DC', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (45, N'Mô hình Batman and The Joker ', N'3a5cfc73b6ad80f3c8b9500607ca13c7e7db7e23c823c5916d11d990.jpg', N'1586bf57bbda9fc881cbd8c842fb3af75f2eec85993ea44cc85e6872.jpg', CAST(10500000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/8, chiều cao: 47cm', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (46, N'Mô hình Batman Knightmare Statue', N'0bd4063aeac3f9b1b6c0b14286f0ac810d6cbd2c69a72a4965ba6d7c.jpg', N'b483e22e7b25a758125f6b2cc79b4d522ea0e3b85dfdb3a1eadcc93f.jpg', CAST(6500000.00 AS Decimal(12, 2)), N'Tỉ lệ: 1/6 33cm (cao)', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (47, N'Mô hình Black Adam (DX30)', N'ab7e46a0d34515a92617f00dc05028ecff40d6cffea45ce0a6be6f61.jpg', N'25a441dedb123d8d56af75894f4215f668c28e533b8a1ad6c5c18196.jpg', CAST(7000000.00 AS Decimal(12, 2)), N'Tỉ lệ: 1/6 33cm (cao)', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (48, N'Mô hình Harley Quinn VGM41', N'e3292349b9831d40caba308617b9ab51393ba9be2987929720d59b80.jpg', N'06c108d585f67b47231e9426b696616d7254bbc5daa0cc1bf13448b5.jpg', CAST(7500000.00 AS Decimal(12, 2)), N'Tỉ lệ: 1/6 29.5cm (cao)', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (49, N'Mô hìnhPrime 1 Studio 1/3 Punchline', N'd6da181fcb4c190e8b54358885d1b8e8ab1942bf03cb72670d9bd171.jpg', N'a02e46482bc166fab7d148a4fb30db630923c863f0be37d5bcf9473f.jpg', CAST(1000000.00 AS Decimal(12, 2)), N'Tỉ lệ 1/3, (H)85cm * (W)50cm * (D)35cm', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (50, N'Mô hình Xmen Phoenix Statues', N'9d1cb9f247da68b4c0ac34155dab791be5e70605a3819aa18f51d8e9.jpg', N'59703c0f8df1411c29385cf0005fc7b875d8c573e3be4a27c9740422.jpg', CAST(12000000.00 AS Decimal(12, 2)), N' Tỉ lệ 1/10', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (51, N'Mô hình 
Batgirl VGM40', N'4b7693f63adfc6b7615c22bd66dabb35a05e1a98d1d358cfc82045cd.jpg', N'b3a586ded61a1ee57b97dc875d38f7be129659fc0bd02e81fb6a85f2.jpg', CAST(5500000.00 AS Decimal(12, 2)), N'Tỉ lệ: 1/6 30cm (cao)', 5, 10, N'MV', N'DC', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (68, N'Mô hình Nendoroid Gaara', N'CT1.jpg', N'CT2.jpg', CAST(1500000.00 AS Decimal(12, 2)), N'Kích thước: 20cm, 15cm, 15cm', 5, 10, N'CT', N'CT', N'gara3.jpg', N'gara4jpg')
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (69, N'Nendoroid Kakashi Hatake', N'CT3.jpg', N'CT4.jpg', CAST(2750000.00 AS Decimal(12, 2)), N'Kích thước: 20cm, 15cm, 15cm', 5, 10, N'CT', N'CT', N'gara3.jpg', N'gara4jpg')
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (70, N'POP UP PARADE Rei Ayanami', N'CT5.jpg', N'CT6.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Kích thước:  20.5 cm (cao)', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (71, N'Rengoku - Demon Slayer Kimetsu no Yaiba', N'CT7.jpg', N'CT8.jpg', CAST(2180000.00 AS Decimal(12, 2)), N'Kích thước: H20cm * L17cm * D15cm', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (72, N'Mô hình My Hero Academia The Evil Villains Vol 4 ', N'CT9.png', N'CT10.png', CAST(5000000.00 AS Decimal(12, 2)), N'Kích thước:  30 cm (cao), 23 cm (rộng)', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (73, N'Sakura Miko - hololive production', N'CT11.png', N'CT12.jpg', CAST(9800000.00 AS Decimal(12, 2)), N'Phát hành giới hạn 150 bản', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (74, N'Mô hình My Hero Academia', N'CT13.jpg', N'CT14.jpg', CAST(3300000.00 AS Decimal(12, 2)), N'kích thước : 27.5cm ×18.5cm ×21.5cm', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (75, N'Mô hình My Hero Academia Break Time ', N'CT15.png', N'CT16.jpg', CAST(7500000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (76, N'POP UP PARADE Zero Two - DARLING in the FRANXX', N'CT17.jpg', N'CT18.jpg', CAST(13200000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (77, N'Mobile Doll May (Gundam Build Divers Re: RISE) ', N'CT19.jpg', N'CT20.jpg', CAST(18990000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (87, N'POP UP PARADE Usada Pekora', N'CT21.jpg', N'CT22.jpg', CAST(1230000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (88, N'Nendoroid Lappland - Arknights', N'CT23.jpg', N'CT24.png', CAST(12500000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (89, N'Nendoroid Minato Aqua - hololive', N'CT25.jpg', N'CT26.jpg', CAST(3150000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (90, N'Nendoroid UMP9 - Girls'' Frontline', N'CT27.jpg', N'CT28.jpg', CAST(3400000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (91, N'Lacus Clyne Gundam Seed - Figure-rise Standard', N'CT29.png', N'CT30.jpg', CAST(2700000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (92, N'Nendoroid Harry Potter', N'CT31.jpg', N'CT32.jpg', CAST(1230000.00 AS Decimal(12, 2)), N'Kích thước:  WCF', 5, 10, N'CT', N'CT', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (93, N'Mô hình Doctor Strange', N'ca9c3c761119a1ac71e01748d15bdc0b3852c42c06d80ca871258516.jpg', N'8d32d694a8a370f4d79349bf8d21a2a87b602b22cf801410fe56b7a8.jpg', CAST(1200000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (94, N'Mô hình Hawkeye Kate Bishop', N'bc41811fe29917a4ca1527e2a25c6baba0c0e95b653b7164cf9d4e83.jpg', N'2db327052e17085aebef95a3243fde89a8d12e07bb544cc6e3df0269.jpg', CAST(1000000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (95, N'Mô hình Black Widow', N'04f950538ec98070015bda528db8d500a1ac4918b28371fd64d85ea1.jpg', N'12f8090a20dc11e9cc67363f8b62edf44354420e8a312269bee0c14f.jpg', CAST(1100000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (96, N'Mô hình Venom', N'7015a7e90702a5a530a2d8f83bd90b94113d4b2162f0526f4c69563f.jpg', N'1d790342d323e9f1f670853c297b91e2fb3d45877d76ab1ec0b814bb.jpg', CAST(1500000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (97, N'Mô hình Wolverine (1973 Version)', N'864d2f07525ea907b98b9f083f49f70223ab7a2121052a88d57da7a6.jpg', N'8547c562bb16e2853ee5a1da30b756f7c38403007059de207e46947b.jpg', CAST(1130000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (98, N'Mô hình Iron Patriot MMS547D34', N'f7462ee974e7a48df58b69314de38e3d3c9afc5c85f56ae6fa8ed540.jpg', N'03d89a7e84e6b0b80240dede789ce7e833e1e2491fead422472c3828.jpg', CAST(1400000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (99, N'Mô hình The Vision TMS037', N'ef34252b2eee8e9968bc597ef3a9b00dc6559421ad52ae43a3d7fe78.jpg', N'c8ec7e654ec9007416af772fadb7c79c2238a7b17bda3f89641c16d1.jpg', CAST(1300000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (100, N'Mô hình Captain America', N'67699ed56627e11530f8f54e66786d50bbdcd7bb30e779051720a6d3.jpg', N'74291bb16ff998bc8ca518ca85c162b7ad7709454e23f60b3e06ad08.jpg', CAST(1200000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (101, N'Mô hình Venom ', N'd9f8768e3a94650fe32413cbe4d3a5d1bf06d6d0c07f91704e816a13.jpg', N'860ccdbc5ca690c54b1d8d8ce3f38d7e9ee53f4845e60b01b47d50ef.jpg', CAST(1200000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (102, N'Mô hình Captain Carter', N'085e74b84cd9fe90820051b8d508a858d45b60927042a073eab434d3.jpg', N'3a724151635233324192a457b161cd18bd8e43e3ce608367fed8697a.jpg', CAST(1100000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (103, N'Mô hình The Vision TMS054', N'304a01cb2682c94897d04d3651e981aefdc6d9626e71221bd1081c89.jpg', N'e149d5c320202e20b52fa6d16d7dc58a6fbdb9d7318714d625d91871.jpg', CAST(1550000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (104, N'Mô hình Rocket', N'af59a61182ae14ecf69211f27a9ad6204b617c9d4bd377ec61c0ba8c.jpg', N'c5cf20f6386c111c272a88c7c9ca1fcd8db86978cb3f9b722c4f26f8.jpg', CAST(1400000.00 AS Decimal(12, 2)), N'Mô hình Mavel', 5, 10, N'MV', N'MAL', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (105, N'Mô hình Optimus Prime ', N'A1.jpg', N'A2.jpg', CAST(1200000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (106, N'Mô hình Megatron', N'B1.jpg', N'B2.jpg', CAST(1550000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (107, N'Mô hình Lu Bu', N'C1.jpg', N'C2.jpg', CAST(2000000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (108, N'Mô hình Threezero Panzer World Galient', N'D1.jpg', N'D2.jpg', CAST(2500000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (109, N'Mô hình BLACKOUT (TRANSFORMERS)', N'E1.jpg', N'E2.jpg', CAST(2650000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (110, N'Mô hình Sentinel Prime', N'F1.jpg', N'F2.jpg', CAST(2400000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (111, N'Mô hình Megatron Threezero', N'G1.jpg', N'G2.jpg', CAST(2600000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image1], [Image2], [Price], [Description], [Stock], [Discount], [Category_Id], [Subcategory_Id], [Image3], [Image4]) VALUES (112, N'Mô hình Tarn - AzureSea Studio', N'H1.jpg', N'H2.jpg', CAST(5000000.00 AS Decimal(12, 2)), N'Mô hình Transformers', 5, 10, N'TFM', N'TF', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Administrators')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'SADMIN', N'Super Administrators')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'SHIPPER', N'Shipper')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'USER', N'Users')
GO
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'CT', N'Mô hình Custom', N'CT', NULL)
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'DC', N'Mô Hình DC', N'MV', NULL)
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'DRG', N'Mô Hình Dragon Ball', N'AM', N'')
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'JK', N'Mô Hình Jutsu Kaisen', N'AM', N'')
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'MAL', N'Mô Hình Marvel', N'MV', NULL)
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'NRT', N'Mô Hình Naruto', N'AM', N'')
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'OP', N'Mô Hình One Pie', N'AM', N'')
INSERT [dbo].[Subcategories] ([Id], [Name], [Category_Id], [Icon]) VALUES (N'TF', N'Mô Hình Transformer', N'TFM', N'')
GO
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'hung123', N'123456', N'hung123@fpt.edu.vn', N'Võ Thịnh Hưng', N'Đường Đông Bắc, Quận 12', 337429181, N'Hưng', 1, N'0123456789', N'0123456789', N'user.png', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'khoa123', N'123456', N'khoa123@fpt.edu.vn', N'Lê Đăng Khoa', N'Đường Đông Bắc, Quận 12', 337429184, N'khoa', 1, N'0123456789', N'0123456789', N'user.png', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'phat123', N'123456', N'phat123@fpt.edu.vn', N'Nguyễn Đức Phát', N'Đường Đông Bắc, Quận 12', 337429180, N'Phát', 1, N'0123456789', N'0123456789', N'user.png', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'tien123', N'123456', N'tien123@fpt.edu.vn', N'Lê Việt Tiến', N'Đường Đông Bắc, Quận 12', 337429182, N'Tiến', 1, N'0123456789', N'0123456789', N'user.png', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'user', N'123456', N'vuong123@gamil.com', N'vuong', NULL, NULL, NULL, 1, NULL, NULL, NULL, N'USER')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'vuong123', N'123456', N'vuong123@fpt.edu.vn', N'Vũ Phi Ưng Vương', N'Đường Đông Bắc, Quận 12', 337429183, N'vuong', 1, N'0123456789', N'0123456789', N'user.png', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'vuongAD', N'123456', N'vuong123@fpt.edu.vn', N'Vũ Phi Ưng Vương', NULL, NULL, N'vuong', 1, N'vuongADnT1leBTZ', N'vuongADvR9OitJM4', N'a3.jpg', N'SADMIN')
INSERT [dbo].[Users] ([Username], [Password], [Email], [Fullname], [Address], [Phone], [Introduce], [Status], [Activate_Code], [Forgot_Password_Code], [Avatar], [Role_Id]) VALUES (N'vuongAD1', N'123456', N'vuong123@fpt.edu.vn', N'Vũ Phi Ưng Vương', NULL, NULL, N'vuong', 0, N'vuongAD1eQ0L4j8s', N'vuongAD1qI4zDUV3A', N'user.png', N'SADMIN')
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Orders_Detail]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetail_Orders] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Orders_Detail] CHECK CONSTRAINT [FK_OrdersDetail_Orders]
GO
ALTER TABLE [dbo].[Orders_Detail]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetail_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders_Detail] CHECK CONSTRAINT [FK_OrdersDetail_Products]
GO
ALTER TABLE [dbo].[Orders_Detail]  WITH CHECK ADD  CONSTRAINT [FKg9ar77rwmbwbablvscd6qt8hh] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders_Detail] CHECK CONSTRAINT [FKg9ar77rwmbwbablvscd6qt8hh]
GO
ALTER TABLE [dbo].[Orders_Detail]  WITH CHECK ADD  CONSTRAINT [FKgic892mhh720sx9wmoq4cjtgp] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Orders_Detail] CHECK CONSTRAINT [FKgic892mhh720sx9wmoq4cjtgp]
GO
ALTER TABLE [dbo].[product_variations]  WITH CHECK ADD  CONSTRAINT [FKtopipc5x691v9hjrughkfn6ff] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[product_variations] CHECK CONSTRAINT [FKtopipc5x691v9hjrughkfn6ff]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Subcategories] FOREIGN KEY([Subcategory_Id])
REFERENCES [dbo].[Subcategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Subcategories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FKappm930ygdfv4qkkhc05pbr5s] FOREIGN KEY([Subcategory_Id])
REFERENCES [dbo].[Subcategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FKappm930ygdfv4qkkhc05pbr5s]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
ALTER TABLE [dbo].[Products_Variations]  WITH CHECK ADD  CONSTRAINT [FK_ProductsVariations_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Products_Variations] CHECK CONSTRAINT [FK_ProductsVariations_Products]
GO
ALTER TABLE [dbo].[Subcategories]  WITH CHECK ADD  CONSTRAINT [FKiborb6ptvy1t1n3v6klb56l5s] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Subcategories] CHECK CONSTRAINT [FKiborb6ptvy1t1n3v6klb56l5s]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FKp56c1712k691lhsyewcssf40f] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FKp56c1712k691lhsyewcssf40f]
GO
USE [master]
GO
ALTER DATABASE [ModelReverside] SET  READ_WRITE 
GO
