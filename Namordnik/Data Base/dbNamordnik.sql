USE [dbNamordnik]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeAgentID] [int] NOT NULL,
	[TitleAgent] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [char](50) NOT NULL,
	[Logo] [nvarchar](1000) NOT NULL,
	[IndexAddress] [nvarchar](100) NULL,
	[Address] [nvarchar](1000) NOT NULL,
	[Priority] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[INN] [nvarchar](50) NOT NULL,
	[KPP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Characteristic]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characteristic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Length] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Heigth] [int] NOT NULL,
	[ShippingWeight] [int] NOT NULL,
	[WeightWithoutPackaging] [int] NOT NULL,
	[Certificate] [varchar](1000) NULL,
	[Standard] [char](30) NOT NULL,
 CONSTRAINT [PK_Characteristic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[PassportNumber] [char](4) NOT NULL,
	[PassportSeria] [char](6) NOT NULL,
	[BankAccount] [char](16) NOT NULL,
	[IsDisabled] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryAgentEmployee]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryAgentEmployee](
	[ID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[DateEdit] [date] NOT NULL,
 CONSTRAINT [PK_HistoryAgentEmployee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryProvider]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryProvider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[DateOfDelivery] [date] NOT NULL,
 CONSTRAINT [PK_HistoryProvider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TitleProduct] [nvarchar](100) NOT NULL,
	[TypeMaterialID] [int] NOT NULL,
	[AmountInPackage] [int] NOT NULL,
	[UnitOfMeasurement] [char](2) NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[MinimumPossibleBalance] [int] NOT NULL,
	[Cost] [float] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [int] NOT NULL,
	[TitleProduct] [nvarchar](100) NOT NULL,
	[MinimumCostForAnAgent] [float] NOT NULL,
	[Picture] [nvarchar](1000) NULL,
	[TypeProductID] [int] NOT NULL,
	[NumberOfPeopleForProduction] [int] NOT NULL,
	[WorkshopNumberForPeoduct] [int] NOT NULL,
	[CharacteristicID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[RequiredAmountOfMaterial] [int] NOT NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[DateOfRelease] [date] NOT NULL,
	[CountProduct] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[TypeID] [int] NOT NULL,
	[INN] [char](100) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stocktaking]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocktaking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[DateGet] [date] NOT NULL,
	[Count] [int] NOT NULL,
	[TotalCost] [float] NOT NULL,
 CONSTRAINT [PK_Stocktaking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMaterial]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 6/2/2021 11:17:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (1, N'Вата серый 1x1', 1, 7, N' м', 191, 34, 6009)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (2, N'Ткань белый 2x2', 2, 10, N' м', 713, 18, 13742)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (4, N'Силикон серый 1x1', 4, 2, N' м', 981, 12, 2343)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (7, N'Ткань серый 0x3', 2, 10, N' м', 965, 17, 15210)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (9, N'Металлический стержень белый 2x2', 3, 9, N' м', 65, 36, 36753)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (10, N'Ткань синий 3x3', 2, 5, N' м', 387, 39, 32910)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (11, N'Ткань белый 3x2', 2, 9, N' м', 398, 25, 782)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (12, N'Вата розовый 1x0', 1, 3, N' м', 589, 32, 35776)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (14, N'Ткань розовый 0x0', 2, 3, N' м', 654, 29, 41101)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (15, N'Металлический стержень цветной 3x1', 3, 4, N' м', 988, 49, 55742)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (17, N'Металлический стержень цветной 1x2', 3, 8, N' м', 173, 26, 26137)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (18, N'Ткань цветной 2x1', 2, 2, N' м', 993, 34, 15628)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (19, N'Силикон белый 2x0', 4, 10, N' м', 851, 38, 22538)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (20, N'Силикон зеленый 3x1', 4, 2, N' м', 776, 46, 17312)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (24, N'Ткань синий 2x0', 2, 4, N' м', 146, 16, 19507)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (25, N'Металлический стержень зеленый 2x2', 3, 4, N' м', 478, 34, 32205)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (26, N'Резинка зеленый 0x0', 5, 7, N' м', 594, 19, 42640)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (28, N'Ткань зеленый 2x2', 2, 4, N' м', 692, 7, 55083)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (29, N'Металлический стержень синий 0x1', 3, 9, N' м', 259, 20, 19715)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (30, N'Резинка белый 3x3', 5, 1, N' м', 586, 26, 35230)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (32, N'Ткань белый 1x3', 2, 8, N' м', 492, 9, 38232)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (33, N'Силикон цветной 1x0', 4, 10, N' м', 843, 28, 34664)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (35, N'Вата серый 0x1', 1, 8, N' м', 25, 38, 42948)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (36, N'Металлический стержень белый 3x1', 3, 9, N' м', 749, 30, 9136)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (38, N'Металлический стержень синий 3x1', 3, 6, N' м', 336, 24, 26976)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (39, N'Силикон белый 1x2', 4, 2, N' м', 793, 30, 33801)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (40, N'Резинка цветной 1x1', 5, 8, N' м', 347, 13, 26244)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (41, N'Силикон розовый 1x3', 4, 9, N' м', 997, 25, 33874)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (42, N'Резинка синий 3x2', 5, 5, N' м', 284, 31, 44031)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (43, N'Резинка розовый 1x0', 5, 1, N' м', 265, 21, 36574)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (45, N'Резинка цветной 0x1', 5, 8, N' м', 290, 32, 47198)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (46, N'Вата розовый 3x3', 1, 10, N' м', 536, 31, 2517)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (47, N'Резинка цветной 0x2', 5, 10, N' м', 189, 31, 55495)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (49, N'Резинка серый 3x3', 5, 4, N' м', 373, 8, 51550)
INSERT [dbo].[Material] ([ID], [TitleProduct], [TypeMaterialID], [AmountInPackage], [UnitOfMeasurement], [QuantityInStock], [MinimumPossibleBalance], [Cost]) VALUES (50, N'Резинка серый 0x0', 5, 7, N' м', 395, 20, 43414)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58375, N'Респиратор 3M 8101 противоаэрозольный', 149, N'\products\5fb128cc87b90.jpg', 4, 1, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58376, N'Респиратор 3M 8112 противоаэрозольный с клапаном выдоха', 299, N'\products\5fb128cc84474.jpg', 4, 3, 1, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58431, N'Держатели предфильтра для масок и полумасок "3М" серии 6000', 264, N'\products\5fb128cd80a06.jpg', 9, 1, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58445, N'Респиратор 3M 8122', 299, N'\products\5fb128ccb1958.jpg', 4, 3, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58466, N'Респиратор 3M 8102 противоаэрозольный', 199, N'\products\5fb128ccae21a.jpg', 4, 3, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58568, N'Респиратор с клапаном 9926', 699, N'\products\5fb128cca9d9b.jpg', 4, 3, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58584, N'Респиратор "Алина" АВ', 249, N'\products\5fb128ccd133c.jpg', 4, 2, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58796, N'Респиратор противоаэрозольный 9322', 449, N'\products\5fb128cca6910.jpg', 4, 4, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58825, N'Респиратор "Алина" П', 290, N'\products\5fb128cccdbee.jpg', 4, 4, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58826, N'Респиратор "Алина" 200', 149, N'\products\5fb128ccc9a9e.jpg', 4, 4, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58827, N'Респиратор "Алина" 100', 99, N'\products\5fb128cc8f4dd.jpg', 4, 2, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58850, N'Респиратор "Алина" 310', 490, N'\products\5fb128ccf3dd2.jpg', 4, 5, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58917, N'Предфильтры для масок и полумасок "3М" серии 6000', 409, N'\products\5fb128cd8818d.jpg', 10, 5, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58953, N'Респиратор У-2К', 95, N'\products\5fb128cc7941f.jpg', 3, 2, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (58974, N'Респиратор-полумаска "3М" серия 6000', 3490, N'\products\5fb128cd2ab69.jpg', 1, 5, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59043, N'Респиратор противоаэрозольный 9312', 399, N'\products\5fb128cc80a10.jpg', 4, 4, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59253, N'Сменный патрон с фильтром 6059 для масок и полумасок "3М" серии 6000', 2290, N'\products\5fb128cd4c99d.jpg', 7, 2, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59271, N'Сменный патрон с фильтром 6054 для масок и полумасок "3М" серии 6000', 1890, N'\products\5fb128cd4672c.jpg', 6, 4, 2, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59324, N'Респиратор "Алина" 110', 129, N'\products\5fb128cc8b750.jpg', 4, 3, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59334, N'Респиратор-полумаска Исток 300/400', 490, N'\products\5fb128cd2ef7a.jpg', 1, 4, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59470, N'Респиратор "Юлия" 209', 179, N'\products\5fb128cce7971.jpg', 4, 2, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59471, N'Респиратор "Юлия" 319', 490, N'\products\5fb128cd08e3f.jpg', 4, 4, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59472, N'Респиратор "Юлия" 119', 149, N'\products\5fb128cc9bd36.jpg', 4, 3, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59473, N'Респиратор "Юлия" 215', 349, N'\products\5fb128cce39fa.jpg', 4, 3, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59474, N'Респиратор "Юлия" 109', 129, N'\products\5fb128cc97ff4.jpg', 4, 4, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59475, N'Респиратор "Юлия" 219', 249, N'\products\5fb128cce0042.jpg', 4, 4, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59708, N'Запасные фильтры (пара) АВЕ1 к полумаскам "Адвантейдж"', 1490, N'\products\5fb128cd71db3.jpg', 8, 2, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59735, N'Респиратор "Нева" 200', 79, N'\products\5fb128ccd8ff6.jpg', 4, 2, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59736, N'Респиратор "Нева" 210', 109, N'\products\5fb128ccd5dc2.jpg', 4, 1, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59739, N'Респиратор "Нева" 310', 289, N'\products\5fb128cd0544b.jpg', 4, 4, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59898, N'Респиратор "Нева" 109', 129, N'\products\5fb128cc9414b.jpg', 4, 4, 1, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59916, N'Запасные фильтры к полумаске "Elipse" (Элипс) ABEK1', 2590, N'\products\5fb128cd6e4ee.jpg', 8, 3, 10, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59917, N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', 2190, N'\products\5fb128cd6a2b6.jpg', 8, 1, 3, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59918, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', 1390, N'\products\5fb128cd66df6.jpg', 8, 4, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59919, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3 (анти-запах)', 1690, N'\products\5fb128cd63666.jpg', 8, 4, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59920, N'Полумаска "Elipse" (Элипс) ABEK1', 5690, N'\products\5fb128cd268bf.jpg', 1, 2, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59921, N'Полумаска "Elipse" (Элипс) A1P3', 5690, N'\products\5fb128cd2215f.jpg', 1, 3, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59922, N'Полумаска "Moon" (Элипс) P3', 2690, N'\products\5fb128cd1e2b9.jpg', 1, 5, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (59923, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', 2790, N'\products\5fb128cd19baa.jpg', 1, 1, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (60360, N'Лицевая маска Elipse Integra (Элипс интегра) P3 (анти-запах)', 7590, N'\products\5fb128cd3e7e4.jpg', 5, 2, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (67660, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка А', 110, N'\products\5fb128cd78fce.jpg', 8, 3, 1, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (67661, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка В', 110, N'\products\5fb128cd7518c.jpg', 8, 5, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (4958039, N'Предфильтр Р2 (4 шт) 6020 JETA', 380, N'\products\5fb128cd8417e.jpg', 9, 1, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (4958040, N'Сменный фильтр 6541 ABEK1 JETA', 1290, N'\products\5fb128cd5ff78.jpg', 7, 4, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (4958041, N'Держатель предфильтра 5101 JETA', 199, N'\products\5fb128cd7d2cd.jpg', 8, 1, 7, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (4958042, N'Полнолицевая маска 5950 JETA', 11490, N'\products\5fb128cd41ece.jpg', 5, 1, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (4969295, N'Комплект для защиты дыхания J-SET 6500 JETA', 2490, N'\products\5fb128cd331c4.jpg', 1, 4, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5026662, N'Респиратор 9101 FFP1', 189, N'\products\5fb128cc7d798.jpg', 4, 5, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027238, N'Респиратор полумаска НРЗ-0102 FFP2 NR D', 149, N'\products\5fb128ccdca1e.jpg', 4, 4, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027921, N'Запасные фильтры к полумаске Elipse (Элипс) А1', 1290, N'\products\5fb128cd5bb7d.jpg', 8, 3, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027958, N'Полумаска "Elipse" (Элипс) А1', 3190, N'\products\5fb128cd157f9.jpg', 1, 2, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027961, N'Запасные фильтры к полумаске Elipse A2P3', 2590, N'\products\5fb128cd5838d.jpg', 8, 2, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027965, N'Полумаска "Elipse" (Элипс) A2P3', 4490, N'\products\5fb128cd10ec2.jpg', 1, 4, 2, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027978, N'Запасные фильтры к полумаске Elipse ABEK1P3', 2990, N'\products\5fb128cd5433e.jpg', 7, 3, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5027980, N'Полумаска "Elipse" (Элипс) ABEK1P3', 4990, N'\products\5fb128cd0d0b1.jpg', 4, 2, 1, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028048, N'Респиратор 3M 9152 FFP2', 390, N'\products\5fb128cca31d9.jpg', 4, 2, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028197, N'Сменный фильтр 6510 A1 JETA', 990, N'\products\5fb128cd50a70.jpg', 7, 5, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028229, N'Повязка санитарно–гигиеническая многоразовая с принтом', 49, N'\products\picture.png', 2, 2, 10, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028247, N'Маска одноразовая трехслойная из нетканого материала, нестерильная', 6, N'\products\5fb128cc69235.jpg', 2, 3, 2, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028272, N'Повязка санитарно–гигиеническая многоразовая черная', 59, N'\products\picture.png', 2, 4, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5028556, N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', 49, N'\products\picture.png', 2, 5, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5029091, N'Лицевая маска Elipse Integra P3', 7490, N'\products\5fb128cd3af5c.jpg', 5, 5, 9, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5029610, N'Лицевая маска Elipse Integra А1P3', 9890, N'\products\5fb128cd3674d.jpg', 1, 2, 10, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5029784, N'Маска из нетканого материала с клапаном KN95', 79, N'\products\5fb128cc753e3.jpg', 3, 3, 4, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030020, N'Респиратор RK6020', 129, N'\products\5fb128ccbd227.jpg', 4, 3, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030022, N'Респиратор RK6030', 390, N'\products\5fb128ccef256.jpg', 4, 3, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030026, N'Респиратор RK6021', 290, N'\products\5fb128ccb97a0.jpg', 4, 5, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030062, N'Респиратор Алина 211', 290, N'\products\5fb128ccc4a86.jpg', 4, 1, 6, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030072, N'Респиратор Алина 210', 290, N'\products\5fb128ccc1592.jpg', 4, 1, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5030981, N'Маска из нетканого материала KN95', 59, N'\products\5fb128cc719a6.jpg', 3, 3, 5, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5031919, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', 349, N'\products\5fb128ccb4e8c.jpg', 4, 2, 8, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5031924, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', 490, N'\products\5fb128cceae7c.jpg', 4, 5, 2, NULL)
INSERT [dbo].[Product] ([Article], [TitleProduct], [MinimumCostForAnAgent], [Picture], [TypeProductID], [NumberOfPeopleForProduction], [WorkshopNumberForPeoduct], [CharacteristicID]) VALUES (5033136, N'Респиратор 3M с клапаном 9162', 349, N'\products\5fb128cc9f069.jpg', 4, 2, 9, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (1, 31, 43, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (2, 29, 30, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (3, 4, 30, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (6, 6, 43, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (8, 5, 20, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (9, 49, 20, 13)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (10, 6, 20, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (11, 42, 20, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (12, 37, 4, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (14, 23, 12, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (16, 3, 14, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (17, 31, 14, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (18, 25, 14, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (19, 5, 14, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (21, 44, 14, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (25, 2, 15, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (26, 44, 24, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (31, 13, 25, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (32, 5, 28, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (34, 21, 49, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (36, 35, 15, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (37, 38, 49, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (38, 11, 42, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (40, 40, 42, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (41, 32, 38, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (42, 23, 38, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (43, 24, 26, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (44, 28, 1, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (45, 35, 50, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (46, 8, 26, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (47, 50, 50, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (48, 2, 35, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (52, 16, 32, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (54, 9, 45, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (55, 9, 32, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (56, 3, 45, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (58, 45, 45, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (61, 12, 17, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (63, 49, 35, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (64, 36, 11, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (65, 23, 36, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (66, 24, 29, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (67, 37, 29, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (70, 25, 36, 7)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (71, 27, 29, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (72, 29, 36, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (73, 20, 41, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (74, 30, 36, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (75, 1, 41, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (76, 44, 29, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (78, 10, 29, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (80, 15, 9, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (81, 17, 11, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (83, 22, 11, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (85, 41, 19, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (87, 5, 7, 7)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (88, 23, 33, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (90, 22, 2, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (91, 15, 7, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (92, 12, 47, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (93, 26, 7, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (94, 10, 7, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (95, 48, 33, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (96, 48, 46, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (97, 35, 47, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (98, 39, 7, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ProductID], [MaterialID], [RequiredAmountOfMaterial]) VALUES (100, 40, 2, 8)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([ID], [Title]) VALUES (1, N'МКК')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (2, N'ОАО')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (3, N'ООО')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (4, N'ЗАО')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (5, N'МФО')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (6, N'ПАО')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (7, N'ИП')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (8, N'Самозанятый')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (9, N'ОА')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeMaterial] ON 

INSERT [dbo].[TypeMaterial] ([ID], [Title]) VALUES (1, N' Вата')
INSERT [dbo].[TypeMaterial] ([ID], [Title]) VALUES (2, N' Ткань')
INSERT [dbo].[TypeMaterial] ([ID], [Title]) VALUES (3, N' Стержень')
INSERT [dbo].[TypeMaterial] ([ID], [Title]) VALUES (4, N' Силикон')
INSERT [dbo].[TypeMaterial] ([ID], [Title]) VALUES (5, N' Резинка')
SET IDENTITY_INSERT [dbo].[TypeMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (1, N'Полумаски')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (2, N'Повязки')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (3, N'Маски')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (4, N'Респираторы')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (5, N'На лицо')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (6, N'Полнолицевые')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (7, N'Сменные части')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (8, N'Запасные части')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (9, N'Держители')
INSERT [dbo].[TypeProduct] ([ID], [Title]) VALUES (10, N'Предфильтры')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Type] FOREIGN KEY([TypeAgentID])
REFERENCES [dbo].[Type] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Type]
GO
ALTER TABLE [dbo].[HistoryAgentEmployee]  WITH CHECK ADD  CONSTRAINT [FK_HistoryAgentEmployee_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[HistoryAgentEmployee] CHECK CONSTRAINT [FK_HistoryAgentEmployee_Agent]
GO
ALTER TABLE [dbo].[HistoryAgentEmployee]  WITH CHECK ADD  CONSTRAINT [FK_HistoryAgentEmployee_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[HistoryAgentEmployee] CHECK CONSTRAINT [FK_HistoryAgentEmployee_Employee]
GO
ALTER TABLE [dbo].[HistoryProvider]  WITH CHECK ADD  CONSTRAINT [FK_HistoryProvider_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[HistoryProvider] CHECK CONSTRAINT [FK_HistoryProvider_Material]
GO
ALTER TABLE [dbo].[HistoryProvider]  WITH CHECK ADD  CONSTRAINT [FK_HistoryProvider_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ID])
GO
ALTER TABLE [dbo].[HistoryProvider] CHECK CONSTRAINT [FK_HistoryProvider_Provider]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_TypeMaterial] FOREIGN KEY([TypeMaterialID])
REFERENCES [dbo].[TypeMaterial] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_TypeMaterial]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FK_Provider_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([ID])
GO
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FK_Provider_Type]
GO
ALTER TABLE [dbo].[Stocktaking]  WITH CHECK ADD  CONSTRAINT [FK_Stocktaking_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Stocktaking] CHECK CONSTRAINT [FK_Stocktaking_Employee]
GO
ALTER TABLE [dbo].[Stocktaking]  WITH CHECK ADD  CONSTRAINT [FK_Stocktaking_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[Stocktaking] CHECK CONSTRAINT [FK_Stocktaking_Material]
GO
