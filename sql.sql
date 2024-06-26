USE [Restaurant]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [float] NULL,
	[Unit] [nvarchar](20) NULL,
	[Weight] [float] NULL,
	[IsActive] [bit] NULL,
	[Ingredients] [nvarchar](500) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDish]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDish](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[MenuID] [int] NULL,
	[StageID] [int] NULL,
 CONSTRAINT [PK_OrderDish] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderTime] [smalldatetime] NULL,
	[TableNumber] [int] NULL,
	[WaiterID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stages]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](40) NULL,
 CONSTRAINT [PK_Stages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 12.04.2024 13:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
	[FirstName] [nvarchar](50) NULL,
	[SecondName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[RoleID] [int] NULL,
	[Photo] [nvarchar](600) NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (1, N'Селёдка под шубой', 500, N'грамм', 300, 1, N'Селдь, Картошка, свекла')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (2, N'Блины со сметаной', 300, N'грамм', 250, 1, N'Блины, сметана')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (3, N'Дораро на гриле', 750, N'грамм', 300, 1, N'Дорадо, лимон')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (4, N'Стейк стриплойн', 1000, N'грамм', 400, 1, N'Филе говядины, соус перечный')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (5, N'Буррата с помидорами', 250, N'грамм', 200, 1, N'Сыр буратта, томаты, микс салатов')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (6, N'Мидии', 200, N'грамм', 150, 0, N'Мидии')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (7, N'Тартар из говядины', 600, N'грамм', 200, 1, N'Говядина, лук, каперсы')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (8, N'Удон с курицей', 400, N'грамм', 300, 1, N'Лапша, филе, перец, морковь')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (9, N'Поке с креветкой', 850, N'грамм', 500, 1, N'Рис, огурцы, авокадо, креветки')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (10, N'Грибной суп', 400, N'грамм', 300, 1, N'Грибы, лук, картофель, сливки')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (11, N'Сок яблочный', 250, N'миллилитр', 200, 1, N'Яблоки')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (12, N'Спагетти карбонара', 360, N'грамм', 350, 1, N'Спагетти, бекон, сливки, сыр')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (13, N'Пельмени', 200, N'грамм', 300, 1, N'Фарш, тесто, сметана')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (14, N'Кофе', 250, N'миллилитр', 200, 1, N'Кофе, вода')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (15, N'Бургер', 700, N'грамм', 300, 1, N'Булочка, котлета,томаты,огурцы')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (16, N'Вода', 100, N'миллилитр', 500, 1, N'Вода')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (17, N'Кесадилия', 400, N'грамм', 200, 0, N'Лепёшка, филе, томаты, сыр')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (18, N'Пицца пепперони', 300, N'грамм', 500, 1, N'Пепперони, сыр, кинза')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (19, N'Картофель фри', 250, N'грамм', 300, 1, N'Картофель , чеснок')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (20, N'Татаки из тунца', 650, N'грамм', 200, 1, N'Тунец, соус понзу, лимон')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (21, N'Морс', 300, N'миллилитр', 250, 1, N'Ягоды, вода, сахар')
INSERT [dbo].[Menu] ([ID], [Name], [Cost], [Unit], [Weight], [IsActive], [Ingredients]) VALUES (22, N'Чесночные гренки', 200, N'грамм', 200, 1, N'Хлеб, чеснок')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Name]) VALUES (1, N'Шеф-повар')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (2, N'Су-шеф')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (3, N'Повар')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (4, N'Администратор зала')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (5, N'Бармен')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (6, N'Официант')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (1, N'Отменён')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (2, N'Создан')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (3, N'Принят')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (4, N'Заготовка')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (5, N'В работе')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (6, N'На оформнении')
INSERT [dbo].[Stages] ([ID], [Name]) VALUES (7, N'Выдан')
GO
SET IDENTITY_INSERT [dbo].[Workers] ON 

INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (1, N'Milana123', N'Pass159', N'Евсеева', N'Милана', N'Кирилловна', N'+7 (992) 236-57-65', 4, N'1.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (2, N'KirillTop', N'85157612', N'Дьяконов', N'Кирилл', N'Васильевич', N'+7 (958) 913-91-73', 1, N'2.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (3, N'Maaaks1991', N'lopast448!', N'Козлов', N'Максим', N'Романович', N'+7 (954) 433-58-65', 2, N'3.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (4, N'Login4Name', N'qwer123', N'Архипов', N'Дмитрий', N'Александрович', N'+7 (982) 553-70-48', 3, N'4.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (5, N'LLldan444', N'aWD54wd', N'Жданов', N'Марсель', N'Максимович', N'+7 (982) 553-70-48', 3, N'5.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (6, N'Zaic888', N'5aWD4585', N'Зайцева', N'Елена', N'Викторовна', N'+7 (953) 601-27-87', 3, N'6.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (7, N'HivkaTop', N'!W4daw4A', N'Хавка', N'Сергей', N'Олегович', N'+7 (955) 461-62-32', 3, N'7.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (8, N'MaksKril', N'4w5a4f', N'Крылов', N'Максим', N'Вячеславович', N'+7 (938) 327-21-89', 5, N'8.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (9, N'Morozova', N'AD54g5sW', N'Морозова', N'Дарья', N'Семёновна', N'+7 (950) 836-55-79', 5, N'9.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (10, N'Rakova', N'Fwadf45A', N'Ракова', N'Вера', N'Григорьевна', N'+7 (993) 639-63-47', 5, N'10.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (11, N'Tonimy', N'4f5a45sFF', N'Шиасон', N'Стефан', N'', N'+7 (972) 778-50-78', 6, N'11.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (12, N'AvroraBest', N'AWD45s', N'Родионова', N'Аврора', N'Артёмовна', N'+7 (925) 767-45-62', 6, N'12.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (13, N'Guseva', N'AWSd54D', N'Гусева', N'Аделина', N'Ильинична', N'+7 (952) 454-59-88', 6, N'13.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (14, N'Solovei', N'!!!145E', N'Соловьев', N'Николай', N'Маркович', N'+7 (956) 274-87-29', 6, N'14.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (15, N'Balachova', N'AWD145dxs', N'Балашова', N'Дарья', N'Георгиевна', N'+7 (983) 364-86-75', 6, N'15.png')
INSERT [dbo].[Workers] ([ID], [Login], [Password], [FirstName], [SecondName], [MiddleName], [Phone], [RoleID], [Photo]) VALUES (16, N'Usova', N'1AD5DwdW', N'Усова', N'Полина', N'Александровна', N'+7 (991) 614-95-43', 6, N'16.png')
SET IDENTITY_INSERT [dbo].[Workers] OFF
GO
ALTER TABLE [dbo].[OrderDish]  WITH CHECK ADD  CONSTRAINT [FK_OrderDish_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[OrderDish] CHECK CONSTRAINT [FK_OrderDish_Menu]
GO
ALTER TABLE [dbo].[OrderDish]  WITH CHECK ADD  CONSTRAINT [FK_OrderDish_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDish] CHECK CONSTRAINT [FK_OrderDish_Orders]
GO
ALTER TABLE [dbo].[OrderDish]  WITH CHECK ADD  CONSTRAINT [FK_OrderDish_Stages] FOREIGN KEY([StageID])
REFERENCES [dbo].[Stages] ([ID])
GO
ALTER TABLE [dbo].[OrderDish] CHECK CONSTRAINT [FK_OrderDish_Stages]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Workers] FOREIGN KEY([WaiterID])
REFERENCES [dbo].[Workers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Workers]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Roles]
GO
