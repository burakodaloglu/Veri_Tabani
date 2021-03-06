USE [master]
GO
/****** Object:  Database [ödev]    Script Date: 7.12.2020 12:00:11 ******/
CREATE DATABASE [ödev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ödev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BURAK\MSSQL\DATA\ödev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ödev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BURAK\MSSQL\DATA\ödev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ödev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ödev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ödev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ödev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ödev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ödev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ödev] SET ARITHABORT OFF 
GO
ALTER DATABASE [ödev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ödev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ödev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ödev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ödev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ödev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ödev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ödev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ödev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ödev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ödev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ödev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ödev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ödev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ödev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ödev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ödev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ödev] SET RECOVERY FULL 
GO
ALTER DATABASE [ödev] SET  MULTI_USER 
GO
ALTER DATABASE [ödev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ödev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ödev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ödev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ödev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ödev] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ödev', N'ON'
GO
ALTER DATABASE [ödev] SET QUERY_STORE = OFF
GO
USE [ödev]
GO
/****** Object:  Table [dbo].[Borç]    Script Date: 7.12.2020 12:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borç](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AD] [nvarchar](40) NULL,
	[Borç] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İstTakimlari]    Script Date: 7.12.2020 12:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İstTakimlari](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Şehir] [nvarchar](40) NULL,
	[Borç] [char](20) NULL,
	[SüperLigTakımları] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ödenmezse_cezalar]    Script Date: 7.12.2020 12:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ödenmezse_cezalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AD] [nvarchar](30) NOT NULL,
	[Ceza] [char](100) NOT NULL,
	[Borç] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuperLigTakımları]    Script Date: 7.12.2020 12:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperLigTakımları](
	[Id] [int] NOT NULL,
	[AD] [nvarchar](30) NOT NULL,
	[Şehir] [nvarchar](10) NULL,
	[Kuruluş] [char](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Borç] ON 

INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (1, N'Beşiktaş', N'2 milyar 961 milyon 902 bin 493 TL')
INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (2, N'Fenerbahçe', N'2 milyar 171 milyon lira')
INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (3, N'Galatasaray', N'1 milyar 808,6 milyon lira')
INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (4, N'Başakşehir', N'Bilinmiyor')
INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (5, N'Fatih Karagümrük', N'Bilinmiyor')
INSERT [dbo].[Borç] ([Id], [AD], [Borç]) VALUES (6, N'Kasımpaşa', N'87 milyon 500 bin Türk ')
SET IDENTITY_INSERT [dbo].[Borç] OFF
GO
SET IDENTITY_INSERT [dbo].[İstTakimlari] ON 

INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (1, N'İstanbul', NULL, 1)
INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (2, N'İstanbul', NULL, 2)
INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (3, N'İstanbul', NULL, 3)
INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (4, N'İstanbul', NULL, 4)
INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (5, N'İstanbul', NULL, 5)
INSERT [dbo].[İstTakimlari] ([Id], [Şehir], [Borç], [SüperLigTakımları]) VALUES (6, N'İstanbul', NULL, 6)
SET IDENTITY_INSERT [dbo].[İstTakimlari] OFF
GO
SET IDENTITY_INSERT [dbo].[ödenmezse_cezalar] ON 

INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (1, N'Beşiktaş', N'Avrupa kupalarından men                                                                             ', N'2 milyar 961 milyon 902 bin 493 TL')
INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (2, N'Fenerbahçe', N'Avrupa kupalarından men                                                                             ', N'2 milyar 171 milyon lira')
INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (3, N'Galatasaray', N'Transfer yasağı                                                                                     ', N'1 milyar 808,6 milyon lira')
INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (4, N'Başakşehir', N'Açıklama bekleniyor                                                                                 ', N'Bilinmiyor')
INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (5, N'Fatih Karagümrük', N'Açıklama bekleniyor                                                                                 ', N'Bilinmiyor')
INSERT [dbo].[ödenmezse_cezalar] ([Id], [AD], [Ceza], [Borç]) VALUES (6, N'Kasımpaşa', N'TFF den Transfer yasağı                                                                             ', N'87 milyon 500 bin Türk ')
SET IDENTITY_INSERT [dbo].[ödenmezse_cezalar] OFF
GO
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (1, N'Beşiktaş', N'İstanbul', N'1903')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (2, N'Fenerbahçe', N'İstanbul', N'1907')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (3, N'Galatasaray', N'İstanbul', N'1905')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (4, N'İstanbul Başakşehir', N'İstanbul', N'2010')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (5, N'Fatih Karagümrük', N'İstanbul', N'1926')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (6, N'Kasımpaş', N'İstanbul', N'1921')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (7, N'Kayserispor', N'Kayseri', N'1966')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (8, N'Alanyaspor', N'Antalya', N'1948')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (9, N'Antalyaspor', N'Antalya', N'1966')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (10, N'Göztepe SK', N'İzmir', N'1925')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (11, N'BtcTurk Yeni Malatyaspor', N'Malatya', N'1938')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (12, N'Trabzonspor', N'Trabzon', N'1967')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (13, N'Sivasspor', N'Sivas', N'1967')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (14, N'Konyaspor', N'Konya', N'1922')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (15, N'MKE Ankaragücü', N'Ankara', N'1977')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (16, N'Gençlerbirliği', N'Ankara', N'1988')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (17, N'Çaykur Rizespor', N'Rize', N'1953')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (18, N'BB Erzurumspor', N'Erzurum', N'2010')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (19, N'Gaziantep Futbol Kulübü', N'Gaziantep', N'1988')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (20, N'Hatayspor', N'Hatay', N'1967')
INSERT [dbo].[SuperLigTakımları] ([Id], [AD], [Şehir], [Kuruluş]) VALUES (21, N'Denizlispor', N'Denizli', N'1966')
GO
USE [master]
GO
ALTER DATABASE [ödev] SET  READ_WRITE 
GO
