USE [WebApplicationDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07.06.2020 18:14:46 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [uniqueidentifier] NOT NULL,
	[Bin] [nvarchar](12) NULL,
	[Name] [nvarchar](256) NULL,
	[Fullname] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[FIO] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[Website] [nvarchar](256) NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[WorkPhone] [nvarchar](11) NULL,
	[Email] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[IIN] [nvarchar](12) NULL,
	[Fullname] [nvarchar](256) NULL,
	[Position] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[WorkPhone] [nvarchar](11) NULL,
	[Mobile] [nvarchar](11) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 07.06.2020 18:14:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[ShortName] [nvarchar](max) NULL,
	[DateAcceptance] [datetime] NOT NULL,
	[DateCompletion] [datetime] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[EmployeeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607062455_Initial', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607063106_DefaultDateCreated', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607063246_AddressLength', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607064452_StringLengh', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607075900_EployeeSorting', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607075957_EployeeSortingWithoutNull', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607103700_ProjectWithoutEmployee', N'3.1.3')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'71f9a0a7-d733-4aa2-a9a1-1d166a05c9c6', N'admin@test.com', N'ADMIN@TEST.COM', N'admin@test.com', N'ADMIN@TEST.COM', 1, N'AQAAAAEAACcQAAAAEFdz7Itr2tlTHVdYBE/t2Vi2fryLUycKqZAICHCLAd0OwMRdquGRGMpfsiF6Wxj0qA==', N'JPZODTRFFF3QIIJEVIEZUGMXYDALVMEV', N'f2292154-91b7-4daf-bfad-95040fa43366', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Customers] ([Id], [Bin], [Name], [Fullname], [City], [Address], [FIO], [Email], [Website], [DateCreated]) VALUES (N'a342c6a8-1c6c-43b6-a9b8-0b6261fa070c', N'10101010101', N'Мин оборона', N'Министерство обороны Казахстана', N'Нур-Султан', N'Достык 14', N'Канатов Арман Есимулы', N'a.kanatov@mod.gov.kz', N'mod.gov.kz', CAST(N'2020-06-07T12:46:59.033' AS DateTime))
INSERT [dbo].[Customers] ([Id], [Bin], [Name], [Fullname], [City], [Address], [FIO], [Email], [Website], [DateCreated]) VALUES (N'faed498b-46fc-4b55-ba36-0f3ba58ff029', N'10101010101', N'МОН', N'Министерство образования и науки Республики Казахстан', N'Нур-Султан', N'Мангилик ел 8', N'Жандарбекова Умит Кенесовна', N'u.zhandarbekova@edu.gov.kz', N'www.edu.gov.kz', CAST(N'2020-06-07T12:46:19.923' AS DateTime))
INSERT [dbo].[Customers] ([Id], [Bin], [Name], [Fullname], [City], [Address], [FIO], [Email], [Website], [DateCreated]) VALUES (N'8d6c34c6-15a1-4211-8593-547bebc11fac', N'20202020202', N'МЦРИАП', N'Министерство Цифрового развития, оборонной и аэрокосмической промышленности Республики Казахстан', N'Нур-Султан', N'Мангилик ел 8', N'Байжанов Рустем Ордабаев', N'r.baizhan@mdai.gov.kz', N'mdai.gov.kz/ru', CAST(N'2020-06-07T12:45:10.130' AS DateTime))
INSERT [dbo].[Customers] ([Id], [Bin], [Name], [Fullname], [City], [Address], [FIO], [Email], [Website], [DateCreated]) VALUES (N'bba81135-21b8-419e-9c50-6a6e66ebc247', N'22101010101', N'МИН', N'Министерство обороны Казахстана', NULL, NULL, N'Муратов Мурат Муратович 2', NULL, NULL, CAST(N'2020-06-07T16:41:57.383' AS DateTime))
INSERT [dbo].[Departments] ([Id], [Name], [WorkPhone], [Email], [Address], [DateCreated]) VALUES (N'f7638e97-afef-4381-8f8e-54b1e335c061', N'Научный отдел', N'701371', N'Enu01@enu.kz', N'Казахстан, г.Астана, ул. Сатпаева, 2, учебно-административный (главный) корпус ЕНУ', CAST(N'2020-06-07T12:31:23.183' AS DateTime))
INSERT [dbo].[Employees] ([Id], [IIN], [Fullname], [Position], [Email], [WorkPhone], [Mobile], [DateCreated], [DepartmentId], [Order]) VALUES (N'98585282-48d7-4a90-a121-a15e2a087ab9', N'920504304569', N'Мамаев Даулет Газизович', N'Ведущий специалист', N'Mamayev.d@gmail.com', N'701373', N'87052221223', CAST(N'2020-06-07T12:35:36.913' AS DateTime), N'f7638e97-afef-4381-8f8e-54b1e335c061', 2)
INSERT [dbo].[Employees] ([Id], [IIN], [Fullname], [Position], [Email], [WorkPhone], [Mobile], [DateCreated], [DepartmentId], [Order]) VALUES (N'81776aaf-7069-4529-a3b5-ecdf43e3c15a', N'940505652452', N'Сериков Едил Ергазиевич', N'Главный специалист', N'Serikov.e@gmail.com', N'701374', N'87754526512', CAST(N'2020-06-07T12:36:29.770' AS DateTime), N'f7638e97-afef-4381-8f8e-54b1e335c061', 3)
INSERT [dbo].[Employees] ([Id], [IIN], [Fullname], [Position], [Email], [WorkPhone], [Mobile], [DateCreated], [DepartmentId], [Order]) VALUES (N'5398e092-1e19-4329-9534-f95f8ec4b622', N'950718452365', N'Ескермесова Акбота Жаннатовна', N'Специалист', N'Yesskermes.a@gmail.com', N'701372', N'87074445566', CAST(N'2020-06-07T12:34:30.680' AS DateTime), N'f7638e97-afef-4381-8f8e-54b1e335c061', 1)
INSERT [dbo].[Projects] ([Id], [Code], [Name], [ShortName], [DateAcceptance], [DateCompletion], [DateCreated], [CustomerId], [EmployeeId]) VALUES (N'432bdbe7-8765-4de8-8c14-308ffbab8f5a', N'SD52365696', N'Разработка программного обеспечения для моделирлвания свойств композитных материалов беспилотных авиационных комплексов', NULL, CAST(N'2020-02-04T00:00:00.000' AS DateTime), CAST(N'2020-06-01T00:00:00.000' AS DateTime), CAST(N'2020-06-07T12:52:06.080' AS DateTime), N'8d6c34c6-15a1-4211-8593-547bebc11fac', N'5398e092-1e19-4329-9534-f95f8ec4b622')
INSERT [dbo].[Projects] ([Id], [Code], [Name], [ShortName], [DateAcceptance], [DateCompletion], [DateCreated], [CustomerId], [EmployeeId]) VALUES (N'fea1fc01-e2d8-46d7-b7c0-724bb7c0d3e3', N'AP56956356', N'Разработка программного обеспечения для школ РК

', NULL, CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-09-01T00:00:00.000' AS DateTime), CAST(N'2020-06-07T12:51:16.793' AS DateTime), N'faed498b-46fc-4b55-ba36-0f3ba58ff029', N'81776aaf-7069-4529-a3b5-ecdf43e3c15a')
INSERT [dbo].[Projects] ([Id], [Code], [Name], [ShortName], [DateAcceptance], [DateCompletion], [DateCreated], [CustomerId], [EmployeeId]) VALUES (N'e57df075-02d5-47bc-bb4c-9bde675a0f38', N'BR06951572', N'Техническое совершенствование и моделирование наноматериалов военной техники с применением композитных материалов

', NULL, CAST(N'2020-01-18T00:00:00.000' AS DateTime), CAST(N'2020-06-25T00:00:00.000' AS DateTime), CAST(N'2020-06-07T12:50:33.157' AS DateTime), N'a342c6a8-1c6c-43b6-a9b8-0b6261fa070c', N'98585282-48d7-4a90-a121-a15e2a087ab9')
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Department]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Customers]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Employees]
GO
