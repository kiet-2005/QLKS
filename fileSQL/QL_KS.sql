USE [master]
GO
/****** Object:  Database [QL_KS]    Script Date: 7/25/2024 10:35:43 AM ******/
CREATE DATABASE [QL_KS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_KS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_KS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_KS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_KS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_KS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_KS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_KS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_KS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_KS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_KS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_KS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_KS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_KS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_KS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_KS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_KS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_KS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_KS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_KS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_KS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_KS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_KS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_KS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_KS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_KS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_KS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_KS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_KS] SET  MULTI_USER 
GO
ALTER DATABASE [QL_KS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_KS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_KS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_KS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_KS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_KS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_KS] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_KS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_KS]
GO
/****** Object:  User [thinh]    Script Date: 7/25/2024 10:35:43 AM ******/
CREATE USER [thinh] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Datphong]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datphong](
	[NgDat] [date] NOT NULL,
	[NgXuat] [date] NOT NULL,
	[MaDatPHG] [nvarchar](50) NOT NULL,
	[MaPHG] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatPHG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dichvu]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dichvu](
	[MaDV] [nvarchar](50) NOT NULL,
	[TenDV] [nvarchar](255) NOT NULL,
	[GiaDV] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[sdtKH] [nvarchar](15) NOT NULL,
	[CCCD] [nvarchar](20) NOT NULL,
	[DiachiKH] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](255) NOT NULL,
	[Ngsinh] [date] NOT NULL,
	[sdtNV] [nvarchar](15) NOT NULL,
	[DiachiNV] [text] NOT NULL,
	[Gioitinh] [nvarchar](10) NOT NULL,
	[Luong] [float] NOT NULL,
	[Mk] [nvarchar](30) NOT NULL,
	[MaVaitro] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPHG] [nvarchar](50) NOT NULL,
	[LoaiPHG] [nvarchar](50) NOT NULL,
	[GiaPHG] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPHG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SudungDV]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SudungDV](
	[Soluong] [int] NOT NULL,
	[MaDatPHG] [nvarchar](50) NOT NULL,
	[MaDV] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatPHG] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaitro]    Script Date: 7/25/2024 10:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaitro](
	[MaVaitro] [nvarchar](50) NOT NULL,
	[TenVaitro] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVaitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-01' AS Date), CAST(N'2024-07-05' AS Date), N'DP01', N'PHG01', N'KH01', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-03' AS Date), CAST(N'2024-07-07' AS Date), N'DP02', N'PHG02', N'KH02', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-10' AS Date), CAST(N'2024-07-15' AS Date), N'DP03', N'PHG03', N'KH03', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-11' AS Date), CAST(N'2024-07-12' AS Date), N'DP04', N'PHG01', N'KH04', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-12' AS Date), CAST(N'2024-07-13' AS Date), N'DP05', N'PHG02', N'KH05', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-13' AS Date), CAST(N'2024-07-14' AS Date), N'DP06', N'PHG03', N'KH06', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-14' AS Date), CAST(N'2024-07-15' AS Date), N'DP07', N'PHG01', N'KH07', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-15' AS Date), CAST(N'2024-07-16' AS Date), N'DP08', N'PHG02', N'KH08', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-16' AS Date), CAST(N'2024-07-17' AS Date), N'DP09', N'PHG03', N'KH09', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-17' AS Date), CAST(N'2024-07-18' AS Date), N'DP10', N'PHG01', N'KH10', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-18' AS Date), CAST(N'2024-07-19' AS Date), N'DP11', N'PHG02', N'KH11', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-19' AS Date), CAST(N'2024-07-20' AS Date), N'DP12', N'PHG03', N'KH12', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-20' AS Date), CAST(N'2024-07-21' AS Date), N'DP13', N'PHG01', N'KH13', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-21' AS Date), CAST(N'2024-07-22' AS Date), N'DP14', N'PHG02', N'KH14', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-22' AS Date), CAST(N'2024-07-23' AS Date), N'DP15', N'PHG03', N'KH15', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-23' AS Date), CAST(N'2024-07-24' AS Date), N'DP16', N'PHG01', N'KH16', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-24' AS Date), CAST(N'2024-07-25' AS Date), N'DP17', N'PHG02', N'KH17', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-25' AS Date), CAST(N'2024-07-26' AS Date), N'DP18', N'PHG03', N'KH18', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-26' AS Date), CAST(N'2024-07-27' AS Date), N'DP19', N'PHG01', N'KH19', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-27' AS Date), CAST(N'2024-07-28' AS Date), N'DP20', N'PHG02', N'KH20', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-28' AS Date), CAST(N'2024-07-29' AS Date), N'DP21', N'PHG03', N'KH21', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-29' AS Date), CAST(N'2024-07-30' AS Date), N'DP22', N'PHG01', N'KH22', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-07-30' AS Date), CAST(N'2024-07-31' AS Date), N'DP23', N'PHG02', N'KH23', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-01' AS Date), CAST(N'2024-08-02' AS Date), N'DP24', N'PHG03', N'KH24', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-02' AS Date), CAST(N'2024-08-03' AS Date), N'DP25', N'PHG01', N'KH25', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-03' AS Date), CAST(N'2024-08-04' AS Date), N'DP26', N'PHG02', N'KH26', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-04' AS Date), CAST(N'2024-08-05' AS Date), N'DP27', N'PHG03', N'KH27', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-05' AS Date), CAST(N'2024-08-06' AS Date), N'DP28', N'PHG01', N'KH28', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-06' AS Date), CAST(N'2024-08-07' AS Date), N'DP29', N'PHG02', N'KH29', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-07' AS Date), CAST(N'2024-08-08' AS Date), N'DP30', N'PHG03', N'KH30', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-08' AS Date), CAST(N'2024-08-09' AS Date), N'DP31', N'PHG01', N'KH31', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-09' AS Date), CAST(N'2024-08-10' AS Date), N'DP32', N'PHG02', N'KH32', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-10' AS Date), CAST(N'2024-08-11' AS Date), N'DP33', N'PHG03', N'KH33', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-11' AS Date), CAST(N'2024-08-12' AS Date), N'DP34', N'PHG01', N'KH34', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-12' AS Date), CAST(N'2024-08-13' AS Date), N'DP35', N'PHG02', N'KH35', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-13' AS Date), CAST(N'2024-08-14' AS Date), N'DP36', N'PHG03', N'KH36', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-14' AS Date), CAST(N'2024-08-15' AS Date), N'DP37', N'PHG01', N'KH37', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-15' AS Date), CAST(N'2024-08-16' AS Date), N'DP38', N'PHG02', N'KH38', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-16' AS Date), CAST(N'2024-08-17' AS Date), N'DP39', N'PHG03', N'KH39', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-17' AS Date), CAST(N'2024-08-18' AS Date), N'DP40', N'PHG01', N'KH40', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-18' AS Date), CAST(N'2024-08-19' AS Date), N'DP41', N'PHG02', N'KH41', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-19' AS Date), CAST(N'2024-08-20' AS Date), N'DP42', N'PHG03', N'KH42', N'NV02')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-20' AS Date), CAST(N'2024-08-21' AS Date), N'DP43', N'PHG01', N'KH43', N'NV03')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-21' AS Date), CAST(N'2024-08-22' AS Date), N'DP44', N'PHG02', N'KH44', N'NV04')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-22' AS Date), CAST(N'2024-08-23' AS Date), N'DP45', N'PHG03', N'KH45', N'NV05')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-23' AS Date), CAST(N'2024-08-24' AS Date), N'DP46', N'PHG01', N'KH46', N'NV06')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-24' AS Date), CAST(N'2024-08-25' AS Date), N'DP47', N'PHG02', N'KH47', N'NV07')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-25' AS Date), CAST(N'2024-08-26' AS Date), N'DP48', N'PHG03', N'KH48', N'NV08')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-26' AS Date), CAST(N'2024-08-27' AS Date), N'DP49', N'PHG01', N'KH49', N'NV01')
INSERT [dbo].[Datphong] ([NgDat], [NgXuat], [MaDatPHG], [MaPHG], [MaKH], [MaNV]) VALUES (CAST(N'2024-08-27' AS Date), CAST(N'2024-08-28' AS Date), N'DP50', N'PHG02', N'KH50', N'NV02')
GO
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV01', N'Spa', 300000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV02', N'Gym', 150000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV03', N'Buffet sáng', 200000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV04', N'Karaoke', 250000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV05', N'B? boi', 100000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV06', N'Massage', 350000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV07', N'T?m hoi', 200000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV08', N'Thuê xe', 500000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV09', N'Gi?t là', 150000)
INSERT [dbo].[Dichvu] ([MaDV], [TenDV], [GiaDV]) VALUES (N'DV10', N'Wifi', 50000)
GO
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH01', N'Pham Minh D', N'0934567890', N'0011223344', N'123 Le Duan, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH02', N'Nguyen Thi E', N'0945678901', N'0055667788', N'456 Nguyen Hue, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH03', N'Tran Van F', N'0956789012', N'0099887766', N'789 Hai Phong, Hai Phong')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH04', N'Le Thi I', N'0989012345', N'0012345678', N'123 Bach Dang, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH05', N'Tran Van J', N'0901234561', N'0023456789', N'456 Pham Van Dong, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH06', N'Nguyen Thi K', N'0912345672', N'0034567890', N'789 Nguyen Thi Minh Khai, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH07', N'Le Van L', N'0923456783', N'0045678901', N'123 Truong Dinh, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH08', N'Pham Thi M', N'0934567894', N'0056789012', N'456 Le Loi, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH09', N'Tran Van N', N'0945678905', N'0067890123', N'789 Le Van Luong, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH10', N'Nguyen Thi O', N'0956789016', N'0078901234', N'123 Nguyen Trai, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH11', N'Le Van P', N'0967890127', N'0089012345', N'456 Bach Mai, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH12', N'Pham Thi Q', N'0978901238', N'0090123456', N'789 Ba Trieu, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH13', N'Tran Van R', N'0989012349', N'0101234567', N'123 Hoang Hoa Tham, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH14', N'Nguyen Thi S', N'0901234570', N'0112345678', N'456 Kim Ma, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH15', N'Le Van T', N'0912345681', N'0123456789', N'789 Hai Ba Trung, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH16', N'Pham Thi U', N'0923456792', N'0134567890', N'123 Tran Hung Dao, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH17', N'Tran Van V', N'0934567803', N'0145678901', N'456 Le Hong Phong, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH18', N'Nguyen Thi W', N'0945678914', N'0156789012', N'789 Dien Bien Phu, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH19', N'Le Van X', N'0956789025', N'0167890123', N'123 Le Van Sy, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH20', N'Pham Thi Y', N'0967890136', N'0178901234', N'456 Xo Viet Nghe Tinh, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH21', N'Tran Van Z', N'0978901247', N'0189012345', N'789 Pham Ngoc Thach, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH22', N'Nguyen Thi AA', N'0989012358', N'0190123456', N'123 Vo Thi Sau, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH23', N'Le Van AB', N'0901234569', N'0201234567', N'456 Nguyen Thi Dinh, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH24', N'Pham Thi AC', N'0912345678', N'0212345678', N'789 Hoang Dieu, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH25', N'Tran Van AD', N'0923456787', N'0223456789', N'123 An Duong Vuong, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH26', N'Nguyen Thi AE', N'0934567896', N'0234567890', N'456 Nguyen Tat Thanh, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH27', N'Le Van AF', N'0945678905', N'0245678901', N'789 Le Van Huu, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH28', N'Pham Thi AG', N'0956789014', N'0256789012', N'123 Ton Duc Thang, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH29', N'Tran Van AH', N'0967890123', N'0267890123', N'456 Nguyen Dinh Chieu, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH30', N'Nguyen Thi AI', N'0978901232', N'0278901234', N'789 Dinh Tien Hoang, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH31', N'Le Van AJ', N'0989012341', N'0289012345', N'123 Hai Ba Trung, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH32', N'Pham Thi AK', N'0901234550', N'0290123456', N'456 Nguyen Van Troi, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH33', N'Tran Van AL', N'0912345661', N'0301234567', N'789 Hoang Sa, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH34', N'Nguyen Thi AM', N'0923456772', N'0312345678', N'123 Truong Sa, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH35', N'Le Van AN', N'0934567883', N'0323456789', N'456 Vo Van Kiet, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH36', N'Pham Thi AO', N'0945678994', N'0334567890', N'789 Vo Chi Cong, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH37', N'Tran Van AP', N'0956789005', N'0345678901', N'123 Kim Ma, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH38', N'Nguyen Thi AQ', N'0967890116', N'0356789012', N'456 Le Duan, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH39', N'Le Van AR', N'0978901227', N'0367890123', N'789 Nguyen Thi Minh Khai, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH40', N'Pham Thi AS', N'0989012338', N'0378901234', N'123 Le Loi, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH41', N'Tran Van AT', N'0901234449', N'0389012345', N'456 Nguyen Hue, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH42', N'Nguyen Thi AU', N'0912345550', N'0390123456', N'789 Ba Trieu, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH43', N'Le Van AV', N'0923456661', N'0401234567', N'123 Hai Phong, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH44', N'Pham Thi AW', N'0934567772', N'0412345678', N'456 Bach Dang, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH45', N'Tran Van AX', N'0945678883', N'0423456789', N'789 Pham Van Dong, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH46', N'Nguyen Thi AY', N'0956789994', N'0434567890', N'123 Nguyen Van Cu, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH47', N'Le Van AZ', N'0967890105', N'0445678901', N'456 Tran Quang Khai, Hanoi')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH48', N'Pham Thi BA', N'0978901216', N'0456789012', N'789 Dinh Tien Hoang, Da Nang')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH49', N'Tran Van BB', N'0989012327', N'0467890123', N'123 Le Duan, HCMC')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [sdtKH], [CCCD], [DiachiKH]) VALUES (N'KH50', N'Nguyen Thi BC', N'0901233438', N'0478901234', N'456 Nguyen Hue, Hanoi')
GO
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV01', N'Nguyen Van A', CAST(N'1990-01-01' AS Date), N'0901234567', N'123 Nguyen Trai, Hanoi', N'Nam', 10000000, N'password1', N'VT01')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV02', N'Tran Thi B', CAST(N'1992-02-02' AS Date), N'0912345678', N'456 Le Loi, HCMC', N'Nu', 8000000, N'password2', N'VT02')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV03', N'Le Van C', CAST(N'1994-03-03' AS Date), N'0923456789', N'789 Tran Hung Dao, Da Nang', N'Nam', 7000000, N'password3', N'VT03')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV04', N'Pham Thi D', CAST(N'1991-04-04' AS Date), N'0934567890', N'123 Hai Ba Trung, Hanoi', N'Nu', 9000000, N'password4', N'VT01')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV05', N'Le Van E', CAST(N'1993-05-05' AS Date), N'0945678901', N'456 Vo Thi Sau, HCMC', N'Nam', 8500000, N'password5', N'VT02')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV06', N'Tran Thi F', CAST(N'1995-06-06' AS Date), N'0956789012', N'789 Nguyen Van Cu, Da Nang', N'Nu', 7500000, N'password6', N'VT03')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV07', N'Hoang Van G', CAST(N'1990-07-07' AS Date), N'0967890123', N'123 Dinh Tien Hoang, Hanoi', N'Nam', 9500000, N'password7', N'VT01')
INSERT [dbo].[Nhanvien] ([MaNV], [TenNV], [Ngsinh], [sdtNV], [DiachiNV], [Gioitinh], [Luong], [Mk], [MaVaitro]) VALUES (N'NV08', N'Nguyen Thi H', CAST(N'1992-08-08' AS Date), N'0978901234', N'456 Tran Quang Khai, HCMC', N'Nu', 8000000, N'password8', N'VT02')
GO
INSERT [dbo].[Phong] ([MaPHG], [LoaiPHG], [GiaPHG]) VALUES (N'PHG01', N'Standard', 500000)
INSERT [dbo].[Phong] ([MaPHG], [LoaiPHG], [GiaPHG]) VALUES (N'PHG02', N'Deluxe', 1000000)
INSERT [dbo].[Phong] ([MaPHG], [LoaiPHG], [GiaPHG]) VALUES (N'PHG03', N'Suite', 2000000)
GO
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP01', N'DV01')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP02', N'DV02')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP03', N'DV03')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (3, N'DP04', N'DV04')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP05', N'DV05')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP06', N'DV06')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP07', N'DV07')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP08', N'DV08')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP09', N'DV09')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (3, N'DP10', N'DV10')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP11', N'DV01')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP12', N'DV02')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (3, N'DP13', N'DV03')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP14', N'DV04')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP15', N'DV05')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (3, N'DP16', N'DV06')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP17', N'DV07')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (1, N'DP18', N'DV08')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (3, N'DP19', N'DV09')
INSERT [dbo].[SudungDV] ([Soluong], [MaDatPHG], [MaDV]) VALUES (2, N'DP20', N'DV10')
GO
INSERT [dbo].[Vaitro] ([MaVaitro], [TenVaitro]) VALUES (N'VT01', N'Qu?n lý')
INSERT [dbo].[Vaitro] ([MaVaitro], [TenVaitro]) VALUES (N'VT02', N'Nhân viên l? tân')
INSERT [dbo].[Vaitro] ([MaVaitro], [TenVaitro]) VALUES (N'VT03', N'Nhân viên ph?c v?')
GO
ALTER TABLE [dbo].[Datphong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[Datphong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[Nhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[Datphong]  WITH CHECK ADD FOREIGN KEY([MaPHG])
REFERENCES [dbo].[Phong] ([MaPHG])
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD FOREIGN KEY([MaVaitro])
REFERENCES [dbo].[Vaitro] ([MaVaitro])
GO
ALTER TABLE [dbo].[SudungDV]  WITH CHECK ADD FOREIGN KEY([MaDatPHG])
REFERENCES [dbo].[Datphong] ([MaDatPHG])
GO
ALTER TABLE [dbo].[SudungDV]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[Dichvu] ([MaDV])
GO
USE [master]
GO
ALTER DATABASE [QL_KS] SET  READ_WRITE 
GO
