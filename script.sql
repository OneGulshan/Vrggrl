USE [Vrggrl]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27-12-2022 00:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 27-12-2022 00:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 27-12-2022 00:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductImage] [nvarchar](max) NULL,
	[ProductPrice] [int] NOT NULL,
	[ProductSize] [nvarchar](max) NULL,
	[ProductColor] [nvarchar](max) NULL,
	[ProductQuantity] [int] NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 27-12-2022 00:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (1, N'New Summer', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (2, N'New Winter', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (3, N'New Dresses', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (4, N'New Tops', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (5, N'New Skirts', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (6, N'New Pants', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (7, N'New Accessories', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (8, N'Tees', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (9, N'Camis/Tanks', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (10, N'Knit Tops', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (11, N'Tie Front Tops', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (12, N'Strapless Tops', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (13, N'Long Sleeve Tops', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (14, N'Jumpers / Sweaters', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (15, N'Bandanas', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (16, N'Vests', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (17, N'Corsets/Bustiers', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (18, N'Mini Dresses', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (19, N'Midi Dresses', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (20, N'Maxi Dresses', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (21, N'Knit Dresses', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (22, N'Formal Dresses', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (23, N'Skirts +', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (24, N'Playsuits / Jumpsuits', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (25, N'Pants', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (26, N'Jeans', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (27, N'Shorts', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (28, N'Sets', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (29, N'Jumpers/Sweaters', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (30, N'Jackets', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (31, N'Knitwear +', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (32, N'Swim', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (33, N'Shop by Collection', 7)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (34, N'Shop by Occasion', 7)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (35, N'Home', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (36, N'Jewellery  +', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (37, N'Hair Accessories +', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (38, N'Shoes +', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (39, N'Bags', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (40, N'Sale Tops', 9)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (41, N'Sale Dresses / Playsuits', 9)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (42, N'Sale Accessories', 9)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (43, N'Sale Bottoms', 9)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [MenuId]) VALUES (44, N'Sale Outerwear', 9)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (1, N'New')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (2, N'Most Loved')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (3, N'Tops')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (4, N'Dresses')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (5, N'Clothing')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (6, N'Back In Stock')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (7, N'Shop By')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (8, N'Accessories')
INSERT [dbo].[Menus] ([MenuId], [MenuName]) VALUES (9, N'Sale')
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (1, N'Wedding Guest Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (2, N'Vintage Inspired', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (3, N'Party Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (4, N'Festival Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (5, N'White Party', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (6, N'Linen Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (7, N'Summer Vacation Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (8, N'WorkWear Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (9, N'Denim Edit', 33, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (10, N'Take The Style Quiz', 34, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (11, N'Vintage Cool Girl', 34, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (12, N'Modern Music', 34, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId], [MenuId]) VALUES (13, N'Everyday It Girl', 34, 7)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
