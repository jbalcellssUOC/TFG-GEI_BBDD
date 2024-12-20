USE [master]
GO
/****** Object:  Database [UOCTFG_codis365]    Script Date: 03/12/2024 23:26:14 ******/
CREATE DATABASE [UOCTFG_codis365]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UOCTFG_codis365', FILENAME = N'/var/opt/mssql/data/UOCTFG_codis365.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UOCTFG_codis365_log', FILENAME = N'/var/opt/mssql/data/UOCTFG_codis365_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UOCTFG_codis365] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UOCTFG_codis365].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UOCTFG_codis365] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET ARITHABORT OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UOCTFG_codis365] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [UOCTFG_codis365] SET AUTO_UPDATE_STATISTICS OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UOCTFG_codis365] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UOCTFG_codis365] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UOCTFG_codis365] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET RECOVERY FULL 
GO
ALTER DATABASE [UOCTFG_codis365] SET  MULTI_USER 
GO
ALTER DATABASE [UOCTFG_codis365] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UOCTFG_codis365] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UOCTFG_codis365] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UOCTFG_codis365] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UOCTFG_codis365] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UOCTFG_codis365] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UOCTFG_codis365] SET QUERY_STORE = OFF
GO
USE [UOCTFG_codis365]
GO
/****** Object:  Table [dbo].[AppCBDynamic]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppCBDynamic](
	[UserId] [uniqueidentifier] NOT NULL,
	[BarcodeId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](135) NULL,
	[CBType] [nvarchar](15) NULL,
	[CBValue] [nvarchar](max) NULL,
	[CBShortLink] [nvarchar](max) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_AppCBDynamic] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[BarcodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppCBStatic]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppCBStatic](
	[UserId] [uniqueidentifier] NOT NULL,
	[BarcodeId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](135) NULL,
	[CBType] [nvarchar](15) NULL,
	[CBValue] [nvarchar](max) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_AppCBStatic] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[BarcodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppChats]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppChats](
	[UserId] [uniqueidentifier] NOT NULL,
	[IdxSec] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Source] [bit] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_AppChat] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[IdxSec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppLogger]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppLogger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Message] [nvarchar](max) NULL,
	[MessageType] [nvarchar](15) NULL,
	[MessageDetails] [nvarchar](max) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_sysCustomLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppProducts]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppProducts](
	[UserId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Reference] [nvarchar](35) NULL,
	[Category] [nvarchar](35) NULL,
	[Description] [nvarchar](135) NULL,
	[Price] [money] NULL,
	[CBType] [nvarchar](15) NULL,
	[CBValue] [nvarchar](max) NULL,
	[CBShortLink] [nvarchar](max) NULL,
	[ActionId] [nvarchar](15) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_appProducts] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[UserId] [uniqueidentifier] NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](35) NOT NULL,
	[Surname] [nvarchar](125) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[Is2FAEnabled] [bit] NULL,
	[IsBlocked] [bit] NULL,
	[TokenID] [nvarchar](max) NULL,
	[TokenIssuedUTC] [datetime] NULL,
	[TokenExpiresUTC] [datetime] NULL,
	[TokenIsValid] [bit] NULL,
	[Retries] [int] NULL,
	[APIToken] [nvarchar](max) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsersRoles]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsersRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Role] [nvarchar](35) NOT NULL,
 CONSTRAINT [PK_user_roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsersStats]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsersStats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[SRconnectionId] [nvarchar](max) NULL,
	[SRconnected] [bit] NULL,
	[IPv6] [varchar](128) NULL,
	[IPv4] [varchar](32) NULL,
	[Location] [nvarchar](max) NULL,
	[DevId] [nvarchar](max) NULL,
	[DevName] [nvarchar](max) NULL,
	[DevOS] [nvarchar](max) NULL,
	[DevBrowser] [nvarchar](max) NULL,
	[DevBrand] [nvarchar](max) NULL,
	[DevBrandName] [nvarchar](max) NULL,
	[DevType] [nvarchar](max) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_sysUserConn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysActionTypes]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysActionTypes](
	[ActionId] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_sysActionTypes] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysCodeTypes]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysCodeTypes](
	[CodeId] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_sysCodeTypes] PRIMARY KEY CLUSTERED 
(
	[CodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysLogger]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysLogger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Level] [nvarchar](10) NULL,
	[Message] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[Logger] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK__sysLogger__3214EC075E654400] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoles]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoles](
	[Role] [nvarchar](35) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_sysRoles] PRIMARY KEY CLUSTERED 
(
	[Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysValues]    Script Date: 03/12/2024 23:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysValues](
	[Setting] [nvarchar](35) NOT NULL,
	[Value] [nvarchar](135) NULL,
	[Description] [nvarchar](135) NULL,
	[IsoDateC] [datetime] NULL,
	[IsoDateM] [datetime] NULL,
 CONSTRAINT [PK_sysValues] PRIMARY KEY CLUSTERED 
(
	[Setting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppCBDynamic] ADD  CONSTRAINT [DF_AppCBDynamic_IdBarcode]  DEFAULT (newid()) FOR [BarcodeId]
GO
ALTER TABLE [dbo].[AppCBDynamic] ADD  CONSTRAINT [DF_AppCBDynamic_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppCBDynamic] ADD  CONSTRAINT [DF_AppCBDynamic_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppCBStatic] ADD  CONSTRAINT [DF_AppCBStatic_IdBarcode]  DEFAULT (newid()) FOR [BarcodeId]
GO
ALTER TABLE [dbo].[AppCBStatic] ADD  CONSTRAINT [DF_AppCBStatic_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppCBStatic] ADD  CONSTRAINT [DF_AppCBStatic_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppChats] ADD  CONSTRAINT [DF_AppChats_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppChats] ADD  CONSTRAINT [DF_AppChats_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppLogger] ADD  CONSTRAINT [DF_AppLogger_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppLogger] ADD  CONSTRAINT [DF_AppLogger_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppProducts] ADD  CONSTRAINT [DF_AppProducts_ProductId]  DEFAULT (newid()) FOR [ProductId]
GO
ALTER TABLE [dbo].[AppProducts] ADD  CONSTRAINT [DF_AppProducts_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppProducts] ADD  CONSTRAINT [DF_AppProducts_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_users_Id]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_appUsers_isAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_appUsers_2FAEnabled]  DEFAULT ((0)) FOR [Is2FAEnabled]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_TokenIsValid]  DEFAULT ((0)) FOR [TokenIsValid]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_Retries]  DEFAULT ((0)) FOR [Retries]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppUsersStats] ADD  CONSTRAINT [DF_AppUsersStats_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[AppUsersStats] ADD  CONSTRAINT [DF_AppUsersStats_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[SysLogger] ADD  CONSTRAINT [DF_SysLogger_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SysLogger] ADD  CONSTRAINT [DF_SysLogger_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[SysLogger] ADD  CONSTRAINT [DF_SysLogger_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[SysValues] ADD  CONSTRAINT [DF_SysValues_IsoDateC]  DEFAULT (getdate()) FOR [IsoDateC]
GO
ALTER TABLE [dbo].[SysValues] ADD  CONSTRAINT [DF_SysValues_IsoDateM]  DEFAULT (getdate()) FOR [IsoDateM]
GO
ALTER TABLE [dbo].[AppCBDynamic]  WITH CHECK ADD  CONSTRAINT [FK_AppCBDynamic_AppUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppCBDynamic] CHECK CONSTRAINT [FK_AppCBDynamic_AppUsers]
GO
ALTER TABLE [dbo].[AppCBStatic]  WITH CHECK ADD  CONSTRAINT [FK_AppCBStatic_AppUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppCBStatic] CHECK CONSTRAINT [FK_AppCBStatic_AppUsers]
GO
ALTER TABLE [dbo].[AppChats]  WITH CHECK ADD  CONSTRAINT [FK_AppChats_AppUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppChats] CHECK CONSTRAINT [FK_AppChats_AppUsers]
GO
ALTER TABLE [dbo].[AppLogger]  WITH CHECK ADD  CONSTRAINT [FK_sysCustomLog_appUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppLogger] CHECK CONSTRAINT [FK_sysCustomLog_appUsers]
GO
ALTER TABLE [dbo].[AppProducts]  WITH CHECK ADD  CONSTRAINT [FK_appProducts_appUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppProducts] CHECK CONSTRAINT [FK_appProducts_appUsers]
GO
ALTER TABLE [dbo].[AppProducts]  WITH CHECK ADD  CONSTRAINT [FK_appProducts_sysActionTypes] FOREIGN KEY([ActionId])
REFERENCES [dbo].[SysActionTypes] ([ActionId])
GO
ALTER TABLE [dbo].[AppProducts] CHECK CONSTRAINT [FK_appProducts_sysActionTypes]
GO
ALTER TABLE [dbo].[AppUsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_appUsersRoles_sysRoles] FOREIGN KEY([Role])
REFERENCES [dbo].[SysRoles] ([Role])
GO
ALTER TABLE [dbo].[AppUsersRoles] CHECK CONSTRAINT [FK_appUsersRoles_sysRoles]
GO
ALTER TABLE [dbo].[AppUsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_usersRoles_users] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppUsersRoles] CHECK CONSTRAINT [FK_usersRoles_users]
GO
ALTER TABLE [dbo].[AppUsersStats]  WITH CHECK ADD  CONSTRAINT [FK_sysUserConn_appUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserId])
GO
ALTER TABLE [dbo].[AppUsersStats] CHECK CONSTRAINT [FK_sysUserConn_appUsers]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode unique identification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'BarcodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'CBType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'CBValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode shortlink' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'CBShortLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBDynamic', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode unique Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'BarcodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'CBType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'CBValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppCBStatic', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row seq' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'IdxSec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chat username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message source (0-origin, 1-destination)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'Source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'Datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppChats', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message of the warning or error' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of the message (Warning, Info, Debug, Error...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'MessageType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Message additional info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'MessageDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppLogger', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product unique Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'Reference'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product category' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'CBType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'CBValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Barcode shortlink' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'CBShortLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product ActionType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'ActionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Users Products table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User unique Id (GUID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User login email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Login'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User surname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Surname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Internal user comments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if user is Admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'IsAdmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if user has 2FA login activated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Is2FAEnabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if user is blocked' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'IsBlocked'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JWT Login token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'TokenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Token issued datetime (UTC)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'TokenIssuedUTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Token expire datetime (UTC)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'TokenExpiresUTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if token is valid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'TokenIsValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User login retries' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'Retries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'JWT API Token (Secret)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'APIToken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application User table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role auto Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersRoles', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersRoles', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersRoles', @level2type=N'COLUMN',@level2name=N'Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicaction Roles table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersRoles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row auto Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SignalR connection Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'SRconnectionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if user is connected' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'SRconnected'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Connection IPv6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'IPv6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Connection IPv4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'IPv4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User location' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device OS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device browser' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevBrowser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevBrand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device brand name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevBrandName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Device type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'DevType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppUsersStats', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Action Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysActionTypes', @level2type=N'COLUMN',@level2name=N'ActionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Action description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysActionTypes', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product actions types availables' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysActionTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code type Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysCodeTypes', @level2type=N'COLUMN',@level2name=N'CodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysCodeTypes', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product codes availables' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysCodeTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLogger', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLogger', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code of the authorization role' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoles', @level2type=N'COLUMN',@level2name=N'Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoles', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Roles available table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Setting Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues', @level2type=N'COLUMN',@level2name=N'Setting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Seeting Value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key-Value description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row creation datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues', @level2type=N'COLUMN',@level2name=N'IsoDateC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row update datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues', @level2type=N'COLUMN',@level2name=N'IsoDateM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Settings and Configuration values table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysValues'
GO
USE [master]
GO
ALTER DATABASE [UOCTFG_codis365] SET  READ_WRITE 
GO
