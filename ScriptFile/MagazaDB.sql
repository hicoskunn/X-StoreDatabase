USE [master]
GO
/****** Object:  Database [MagazaDB]    Script Date: 22.05.2022 15:20:42 ******/
CREATE DATABASE [MagazaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MagazaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagazaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MagazaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagazaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MagazaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MagazaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MagazaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MagazaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MagazaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MagazaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MagazaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MagazaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MagazaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MagazaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MagazaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MagazaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MagazaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MagazaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MagazaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MagazaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MagazaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MagazaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MagazaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MagazaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MagazaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MagazaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MagazaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MagazaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MagazaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MagazaDB] SET  MULTI_USER 
GO
ALTER DATABASE [MagazaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MagazaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MagazaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MagazaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MagazaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MagazaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MagazaDB] SET QUERY_STORE = OFF
GO
USE [MagazaDB]
GO
/****** Object:  Table [dbo].[MagazaÜrünDetay]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MagazaÜrünDetay](
	[MagazaID] [int] NOT NULL,
	[ÜrünID] [int] NOT NULL,
	[Stok] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MagazaÜrünDetay] PRIMARY KEY CLUSTERED 
(
	[MagazaID] ASC,
	[ÜrünID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müşteri]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müşteri](
	[MusteriID] [int] NOT NULL,
	[MusteriAdi] [nvarchar](50) NULL,
	[MüsteriSoyadi] [nvarchar](50) NOT NULL,
	[MüsteriEmail] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[OdemeYontemi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Müşteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MüşteriKimlik]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MüşteriKimlik](
	[MusteriID] [int] NOT NULL,
	[MusteriTCKN] [nvarchar](50) NOT NULL,
	[SeriNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MüşteriKimlik] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelID] [int] NOT NULL,
	[PersonelTCKN] [nvarchar](50) NOT NULL,
	[PersonelAdi] [nvarchar](50) NOT NULL,
	[PersonelSoyadi] [nvarchar](50) NOT NULL,
	[MagazaID] [int] NOT NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisID] [int] NOT NULL,
	[MusteriID] [int] NULL,
	[SiparisTarihi] [date] NULL,
	[SevkTarihi] [date] NULL,
	[SiparisTutari] [int] NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetay]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetay](
	[SiparisID] [int] NOT NULL,
	[ÜrünID] [int] NOT NULL,
	[SiparisTutari] [int] NOT NULL,
	[Beden] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SiparisDetay] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC,
	[ÜrünID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ürün]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ürün](
	[ÜrünID] [int] NOT NULL,
	[ÜrünAdi] [nvarchar](50) NOT NULL,
	[Ürünözellikleri] [nvarchar](50) NOT NULL,
	[StokDurumu] [int] NOT NULL,
	[BedenNo] [nvarchar](50) NOT NULL,
	[Kategori] [nvarchar](50) NOT NULL,
	[EtiketFiyati] [nvarchar](50) NOT NULL,
	[Barkod] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ürün] PRIMARY KEY CLUSTERED 
(
	[ÜrünID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[X-Store]    Script Date: 22.05.2022 15:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X-Store](
	[MagazaID] [int] NOT NULL,
	[BulunduguSehir] [nvarchar](50) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[PersonelSayisi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Magaza] PRIMARY KEY CLUSTERED 
(
	[MagazaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Müşteri] ([MusteriID], [MusteriAdi], [MüsteriSoyadi], [MüsteriEmail], [Telefon], [Adres], [OdemeYontemi]) VALUES (1, N'hasan', N'hüseyin', N'alkdgjkl', N'0531548215', N'yakacık', N'kart')
INSERT [dbo].[Müşteri] ([MusteriID], [MusteriAdi], [MüsteriSoyadi], [MüsteriEmail], [Telefon], [Adres], [OdemeYontemi]) VALUES (2, N'melih', N'ciguli', N'hegwuqıe', N'0555555555', N'kartal', N'nakit')
GO
INSERT [dbo].[Siparis] ([SiparisID], [MusteriID], [SiparisTarihi], [SevkTarihi], [SiparisTutari]) VALUES (1, 1, NULL, NULL, NULL)
INSERT [dbo].[Siparis] ([SiparisID], [MusteriID], [SiparisTarihi], [SevkTarihi], [SiparisTutari]) VALUES (2, 2, NULL, NULL, NULL)
INSERT [dbo].[Siparis] ([SiparisID], [MusteriID], [SiparisTarihi], [SevkTarihi], [SiparisTutari]) VALUES (3, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[MagazaÜrünDetay]  WITH CHECK ADD  CONSTRAINT [FK_MagazaÜrünDetay_Magaza] FOREIGN KEY([MagazaID])
REFERENCES [dbo].[X-Store] ([MagazaID])
GO
ALTER TABLE [dbo].[MagazaÜrünDetay] CHECK CONSTRAINT [FK_MagazaÜrünDetay_Magaza]
GO
ALTER TABLE [dbo].[MagazaÜrünDetay]  WITH CHECK ADD  CONSTRAINT [FK_MagazaÜrünDetay_Ürün] FOREIGN KEY([ÜrünID])
REFERENCES [dbo].[Ürün] ([ÜrünID])
GO
ALTER TABLE [dbo].[MagazaÜrünDetay] CHECK CONSTRAINT [FK_MagazaÜrünDetay_Ürün]
GO
ALTER TABLE [dbo].[MüşteriKimlik]  WITH CHECK ADD  CONSTRAINT [FK_MüşteriKimlik_Müşteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Müşteri] ([MusteriID])
GO
ALTER TABLE [dbo].[MüşteriKimlik] CHECK CONSTRAINT [FK_MüşteriKimlik_Müşteri]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Magaza] FOREIGN KEY([MagazaID])
REFERENCES [dbo].[X-Store] ([MagazaID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Magaza]
GO
ALTER TABLE [dbo].[Siparis]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Müşteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Müşteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Siparis] CHECK CONSTRAINT [FK_Siparis_Müşteri]
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Siparis] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparis] ([SiparisID])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Siparis]
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Ürün] FOREIGN KEY([ÜrünID])
REFERENCES [dbo].[Ürün] ([ÜrünID])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Ürün]
GO
USE [master]
GO
ALTER DATABASE [MagazaDB] SET  READ_WRITE 
GO
