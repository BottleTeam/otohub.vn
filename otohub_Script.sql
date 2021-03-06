﻿USE [master]
GO
/****** Object:  Database [otohub]    Script Date: 01/05/2018 12:59:53 PM ******/
CREATE DATABASE [otohub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'otohub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\otohub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'otohub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\otohub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [otohub] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [otohub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [otohub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [otohub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [otohub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [otohub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [otohub] SET ARITHABORT OFF 
GO
ALTER DATABASE [otohub] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [otohub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [otohub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [otohub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [otohub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [otohub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [otohub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [otohub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [otohub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [otohub] SET  ENABLE_BROKER 
GO
ALTER DATABASE [otohub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [otohub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [otohub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [otohub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [otohub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [otohub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [otohub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [otohub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [otohub] SET  MULTI_USER 
GO
ALTER DATABASE [otohub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [otohub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [otohub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [otohub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [otohub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [otohub] SET QUERY_STORE = OFF
GO
USE [otohub]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [otohub]
GO
/****** Object:  Table [dbo].[OTO]    Script Date: 01/05/2018 12:59:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTO](
	[maXe] [varchar](10) NOT NULL,
	[maHangXe] [varchar](10) NOT NULL,
	[maThanhVien] [varchar](10) NOT NULL,
	[tenXe] [nvarchar](50) NOT NULL,
	[congSuat] [int] NOT NULL,
	[gia] [int] NOT NULL,
	[kieuDang] [nvarchar](50) NOT NULL,
	[xuatXu] [nvarchar](50) NOT NULL,
	[nhienLieu] [nvarchar](50) NOT NULL,
	[loaiHopSo] [nvarchar](50) NOT NULL,
	[mauSac] [nvarchar](50) NOT NULL,
	[soCua] [int] NOT NULL,
	[soCho] [int] NOT NULL,
	[ngayDangBan] [date] NULL,
	[anh] [varchar](50) NULL,
	[daBan] [bit] NOT NULL,
 CONSTRAINT [PK__OTO__DB07D8C2BB6C6CA1] PRIMARY KEY CLUSTERED 
(
	[maXe] ASC,
	[maHangXe] ASC,
	[maThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 01/05/2018 12:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[maThanhVien] [varchar](10) NOT NULL,
	[tenDangNhap] [varchar](50) NOT NULL,
	[matKhau] [varchar](50) NOT NULL,
	[loaiSalon] [nvarchar](10) NOT NULL,
	[tenThanhVien] [nvarchar](100) NULL,
	[email] [varchar](30) NOT NULL,
	[soDienThoai] [varchar](15) NOT NULL,
	[quanHuyen] [nvarchar](50) NULL,
	[tinhThanhPho] [nvarchar](50) NULL,
	[diaChi] [nvarchar](500) NULL,
	[anhDaiDien] [varchar](30) NOT NULL,
	[anhTongQuan] [varchar](30) NOT NULL,
 CONSTRAINT [PK__THANHVIE__53586E49FBA4807A] PRIMARY KEY CLUSTERED 
(
	[maThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[OTO+THANHVIEN_Client]    Script Date: 01/05/2018 12:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OTO+THANHVIEN_Client]
AS
SELECT        dbo.OTO.maXe AS [Mã xe], dbo.OTO.tenXe AS [Tên xe], dbo.OTO.congSuat AS [Công suất], dbo.OTO.gia AS Giá, dbo.OTO.kieuDang AS [Kiểu dáng], dbo.OTO.xuatXu AS [Xuất xứ], dbo.OTO.nhienLieu AS [Nhiên liệu], 
                         dbo.OTO.loaiHopSo AS [Hộp số], dbo.OTO.mauSac AS [Màu sắc], dbo.OTO.soCua AS [Số cửa], dbo.OTO.soCho AS [Số chỗ], dbo.OTO.ngayDangBan AS [Ngày đăng bán], dbo.OTO.anh AS Ảnh, dbo.OTO.daBan AS [Đã bán], 
                         dbo.THANHVIEN.tenThanhVien AS [Tên người bán], dbo.THANHVIEN.loaiSalon AS [Loại salon], dbo.THANHVIEN.tinhThanhPho AS [Tỉnh/Thành phố]
FROM            dbo.OTO INNER JOIN
                         dbo.THANHVIEN ON dbo.OTO.maThanhVien = dbo.THANHVIEN.maThanhVien
GO
/****** Object:  View [dbo].[OTO+THANHVIEN_Admin]    Script Date: 01/05/2018 12:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OTO+THANHVIEN_Admin]
AS
SELECT        dbo.OTO.maXe, dbo.OTO.tenXe, dbo.OTO.congSuat, dbo.OTO.gia, dbo.OTO.kieuDang, dbo.OTO.xuatXu, dbo.OTO.nhienLieu, dbo.OTO.mauSac, dbo.OTO.soCua, dbo.OTO.loaiHopSo, dbo.OTO.soCho, dbo.OTO.ngayDangBan, 
                         dbo.OTO.anh, dbo.OTO.daBan, dbo.THANHVIEN.tenThanhVien
FROM            dbo.OTO INNER JOIN
                         dbo.THANHVIEN ON dbo.OTO.maThanhVien = dbo.THANHVIEN.maThanhVien
GO
/****** Object:  View [dbo].[OTO_View_Admin]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OTO_View_Admin]
AS
SELECT        dbo.OTO.maXe, dbo.OTO.tenXe, dbo.OTO.xuatXu, dbo.OTO.ngayDangBan, 
                         dbo.OTO.anh, dbo.HANGXE.tenHangXe, dbo.THANHVIEN.maThanhVien
FROM            (dbo.OTO INNER JOIN
                         dbo.THANHVIEN ON dbo.OTO.maThanhVien = dbo.THANHVIEN.maThanhVien) INNER JOIN HANGXE ON HANGXE.maHangXe=OTO.maHangXe
GO
/****** Object:  Table [dbo].[HANGXE]    Script Date: 01/05/2018 12:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGXE](
	[maHangXe] [varchar](10) NOT NULL,
	[tenHangXe] [nvarchar](50) NOT NULL,
	[moTa] [nvarchar](500) NOT NULL,
	[logo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHangXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H002', N'AC', N'Một trong những hãng xe lâu đời của Anh', N'AC.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H003', N'Acura', N'Acura là một nhãn hiệu xe cao cấp của hãng sản xuất Honda, Nhật Bản', N'Acura.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H004', N'Aixam', N'Hãng xe của Pháp', N'Aixam.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H005', N'Alfa Romeo', N'Hãng xe của Ý', N'Alfa Romeo.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H006', N'Arriena', N'Hãng xe Ba Lan, tiền thân là hãng sản xuất xe đua Hussarya GT', N'Arriena.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H007', N'Aston Martin', N'Nhà sản xuất xe hơi thể thao hàng đầu nước Anh', N'Aston Martin.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H008', N'Audi', N'Hãng sản xuất ô tô hạng sang của Đức, là công ty con của Volkswagen', N'Audi.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H009', N'Bentley', N'Nhà sản xuất ô tô hạng sang của Anh', N'Bentley.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H010', N'BMW', N'Công ty sản xuất xe hơi và xe máy quan trọng của Đức', N'BMW.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H011', N'Bugatti', N'Thương hiệu xe hơi Pháp, chuyên sản xuất xe hơi thể thao công suất lớn', N'Bugatti.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H012', N'Buick', N'Nhãn hiệu xe sang của General Motors', N'Buick.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H013', N'Cadillac', N'Là một nhãn hiệu của General Motors, chuyên sản xuất xe hơi hang sạng cho toàn thế giới', N'Cadillac.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H014', N'Caterham', N'Hãng xe hơi kiểu dáng cổ của Anh', N'Caterham.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H015', N'Chevrolet', N'Một bộ phận chuyên sản xuaất ô tô tại Mỹ của General Motors', N'Chevrolet.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H016', N'Chrysler', N'Một thương hiệu xe chuyên sản xuất sedan và các dòng xe minivan của Mỹ', N'Chrysler.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H017', N'Citroen', N'Hãng sản xuất xe hơi Pháp', N'Citroen.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H018', N'Corvette', N'Một thương hiệu xe hơi thể thao  của Chevrolet', N'Corvette.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H019', N'Dacia', N'Hãng xe Romania chuyên sản xuất xe tải cỡ nhỏ', N'Dacia.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H020', N'Daihatsu', N'Công ty sản xuất xe hơi của Nhật Bản', N'Daihatsu.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H021', N'Deawoo', N'Một công ty sản xuất xe hơi của Hàn Quốc', N'Deawoo.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H022', N'Dodge', N'Hãng xe Mỹ, kết hợp của 2 công ty Fiat và Chrysler', N'Dodge.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H023', N'Elfin', N'Công ty sản xuất xe hơi thể thao của Úc, thành lập bới Garrie Cooper', N'Elfin.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H024', N'Ferrari', N'Công ty sản xuất siêu xe thể thao của Ý', N'Ferrari.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H025', N'Fiat', N'Một hãng ô tô của Ý', N'Fiat.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H026', N'Ford', N'Nhà sản xuất xe hơi lớn thứ 5 thế giới', N'Ford.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H027', N'Gaz', N'Nhà sản xuất xe ô tô lớn nhất ở Nga', N'Gaz.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H028', N'Geely', N'Công ty sản xuất xe hơi đa dụng của Trung Quốc', N'Geely.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H029', N'Gillet', N'Công ty xe hơi của Bỉ', N'Gillet.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H030', N'Ginetta', N'Một hãng sản xuất chuyên về xe hơi thể thao và xe đua của Anh', N'Ginetta.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H031', N'GMC', N'Một thương hiệu của General Motors, chuyên các loại xe bán tải', N'GMC.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H032', N'Great Wall', N'Nhà sản xuất xe SUV và xe bán tải lớn nhất Trung Quốc', N'Great Wall.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H033', N'Gumpert', N'Công ty sản xuất siêu xe của Đức', N'Gumpert.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H034', N'Hennessey', N'Hãng sán xuất xe và độ xe nổi tiếng tại Mỹ', N'Hennessey.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H035', N'Holden', N'Công ty sản xuất và nhập khẩu xe hơi của Úc', N'Holden.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H036', N'Honda', N'Nhà sản xuất động cơ lớn nhất thế giới', N'Honda.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H037', N'Hummer', N'Một thương hiệu xe tải và SUV nổi tiếng ', N'Hummer.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H038', N'Huyndai', N'Tập đoàn đa quốc gia và công ty sản xuất ô tô lớn nhất tại Hàn Quốc', N'Huyndai.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H039', N'Infiniti', N'Một thương hiệu xe siêu sang của hãng xe hơi Nhật Nissan', N'Infiniti.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H040', N'Isuzu', N'Công ty sản xuất ô tô của Nhật bản, chuyên các dòng xe tải cỡ trung bình đến hạng nặng', N'Isuzu.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H041', N'Jaguar', N'Nhãn hiệu xe siêu sang của Anh', N'Jaguar.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H042', N'Jeep', N'Thương hiệu ô tô Mỹ, thuộc Chrysler Group', N'Jeep.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H043', N'Kia', N'Công ty sản xuất ô tô của Hàn Quốc, đứng thứ 2 sau Huyndai', N'Kia.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H044', N'Koenigsegg', N'Chuyên sản xuất các loại xe hơi thể thao cao cấp', N'Koenigsegg.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H045', N'Lada', N'Hãng xe hơi huyền thoại của Nga', N'Lada.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H046', N'Lamborghini', N'Nhà sản xuất siêu xe cao cấp của Ý', N'Lamborghini.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H047', N'Lancia', N'Nhà sản xuất xe hơi di sản của Ý', N'Lancia.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H048', N'Land Rover', N'Thương hiệu ô tô chuyên xe 2 cầu', N'Land Rover.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H049', N'Lexus', N'Thương hiệu xe sang của Toyota', N'Lexus.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H050', N'Lincoln', N'Một bộ phận của hãng Ford, chuyên bán xe hạng sang nhãn hiệu Lincoln', N'Lincoln.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H051', N'Lotus', N'Một công ty sản xuất xe hơi thể thao và xe đua của Anh', N'Lotus.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H052', N'Luxgen', N'Hãng xe đến từ Đài Loan', N'Luxgen.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H053', N'Mahidra', N'Tập đoàn sản xuất xe hơi đa dụng của Ấn Độ', N'Mahidra.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H054', N'Maserati', N'Nhà sản xuất xe hơi hạng sang của Ý', N'Maserati.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H055', N'Maybach', N'Nhà sản xuất ô tô siêu sang của Đức', N'Maybach.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H056', N'Mazda', N'Công ty sản xuất xe hơi của Nhật Bản, đứng thứ 15 thế giới', N'Mazda.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H057', N'McLaren', N'Hãng sản xuất xe của Anh chuyên về xe thể thao siêu sang', N'McLaren.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H058', N'Mercedes-Benz', N'Hãng xe Đức, chuyên sản xuất xe ô tô, xe buýt, xe du lịch và xe tải', N'Mercedes-Benz.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H059', N'Mini', N'Một thương hiệu con của BMW', N'Mini.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H060', N'Mitsubishi', N'Công ty đa quốc gia với số lượng xe sản xuất đứng thứ 6 tại Nhật và thứ 5 toàn thế giới', N'Mitsubishi.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H061', N'Morgan Motor', N'Một nhà sản xuất xe của Anh, thuộc sở hữu của 1 gia đình', N'Morgan Motor.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H062', N'Mosler', N'Hãng siêu xe của Mỹ', N'Mosler.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H063', N'Mustang', N'Một thương hiệu xe thể thao của Ford', N'Mustang.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H064', N'Nissan', N'Nhà sản xuất ô tô của Nhật Bản, một trong những nhà sản xuất ô tô lớn nhất thế giới', N'Nissan.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H065', N'Noble', N'Hãng sản xuất xe thể thao của Anh', N'Noble.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H066', N'Opel', N'Hãng sản xuất ô tô có trụ sở tại Đức, chuyên phân phối các dòng xe thương mại hạng nhẹ', N'Opel.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H067', N'Pagani', N'Hãng xe hơi Ý chuyên sản xuất siêu xe và các vật liệu từ sợi các bon', N'Pagani.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H068', N'Panoz', N'Nhà sản xuất xe hơi Mỹ, chuyên về các loại xe thể thao công suất cao', N'Panoz.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H069', N'Perodua', N'Hãng sản xuất xe hơi lớn nhất của Malaysia', N'Perodua.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H070', N'Peugeot', N'Công ty sản xuất xe của Pháp', N'Peugeot.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H071', N'Piaggio', N'Hãng xe Ý chuyên các dòng xe 2 bánh và mô tơ công suất cao', N'Piaggio.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H072', N'Pininfarina', N'Hãng xe của Ý ', N'Pininfarina.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H073', N'Porsche', N'Hãng xe Đức, chuyên sản xuất các loại xe thể thao công suất cao, xe SUV và sedan.', N'Porsche.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H074', N'Proton', N'Công ty sản xuất xe hơi của Malaysia, đứng sau Perodua', N'Proton.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H075', N'Renault', N'Một hãng xe của Pháp, liên minh với Nissan', N'Renault.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H076', N'Reva', N'Một dòng xe thể thao 2 chỗ', N'Reva.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H077', N'Rimac Automobili', N'Một nhà sản xuất xe hơi của Croatia, chuyên siêu xe chạy điện', N'Rimac Automobili.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H078', N'Rolls Royce', N'Một hãng xe siêu sang nổi tiếng của Anh', N'Rolls Royce.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H079', N'Rover', N'Hãng xe hơi của Anh, tiền thân là công ty sản xuất xe đạp', N'Rover.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H080', N'Ruf Automobile', N'Nhà sản xuất xe hơi của Đức', N'Ruf Automobile.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H081', N'Saab', N'Nhà sản xuất xe hơi thành lập tại Thụy Điển', N'Saab.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H082', N'Scania', N'Công ty chuyên sản xuất xe tải, xe buýt ', N'Scania.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H083', N'Scion', N'Một thương hiệu xe cũ của Toyota', N'Scion.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H084', N'Seat', N'CÔng ty sản xuất xe hơi Tây Ban Nha', N'Seat.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H085', N'Shelby Mustang', N'Dòng xe công suất cao của Ford Mustang', N'Shelby Mustang.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H086', N'Skoda', N'Hãng xe của Cộng Hòa Séc', N'Skoda.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H087', N'Smart', N'Hãng xe con của Mercedes-Benz', N'Smart.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H088', N'Spyker', N'Một dòng xe thể thao của Hà Lan', N'Spyker.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H089', N'SsangYong', N'Công ty sản xuất xe ô tô lớn thứ 4 Hàn Quốc', N'SsangYong.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H090', N'Subaru', N'Bộ phận sản xuất ô tô của tập đoàn Fuji Heavy Industries', N'Subaru.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H091', N'Suzuki', N'Công ty đa quốc gia của Nhật chuyên sản xuất xe hơi, xe máy, xe địa hình, thuyền máy, xe lăn và các loại động cơ', N'Suzuki.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H092', N'Tata', N'Công ty sản xuất xe hơi của Ấn Độ', N'Tata.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H093', N'Tesla', N'Công ty Mỹ chuyên sản xuất, phân phối sản phẩm ô tô điện và linh kiện cho các phương tiện chạy điện', N'Tesla.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H094', N'Toyota', N'Một trong những nhà sản xuất xe lớn nhất thế giới, có trụ sở tại Nhật Bản', N'Toyota.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H095', N'Vector Motors', N'Hãng xe hơi Mỹ', N'Vector Motors.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H096', N'Venturi', N'Hãng xe Pháp kết hợp với Monaco, chuyên thiết kế, sản xuất và bán các dòng xe điện hạng sang', N'Venturi.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H097', N'Viper', N'Dòng siêu xe thể thao sản xuất bới Dodge', N'Viper.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H098', N'Volkswagen', N'Hãng sản xuất ô tô Đức, một trong những công ty sản xuất xe hơi lớn nhất thế giới', N'Volkswagen.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H099', N'Volvo', N'Nhà sản xuất ô tô Thụy Điển, hiện thuộc sở hữu của Trung Quốc', N'Volvo.png')
INSERT [dbo].[HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (N'H100', N'Zagato', N'Công ty thiết kế và gia công xe hơi của Ý', N'Zagato.png')
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A001', N'H026', N'TK002', N'Ranger', 320, 950000, N'Pickup', N'Nhập khẩu', N'Dầu 2.2L', N'Sàn 5 cấp', N'Trắng', 4, 6, CAST(N'2018-01-05' AS Date), N'A001.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A002', N'H015', N'TK069', N'2018 Chevrolet', 200, 1000000, N'Sedan', N'Nhập khẩu', N'Dầu', N'Sàn 5 cấp', N'Trắng', 4, 7, CAST(N'2018-01-05' AS Date), N'A002.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A003', N'H026', N'TK070', N'2016 Ranger XLS 2.2', 200, 577000, N'Pickup', N'Nhập khẩu', N'Dầu 2.2L', N'Sàn 5 cấp', N'Đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A003.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A004', N'H090', N'TK040', N'2017 Subaru Forester 2.0', 190, 990000, N'SUV/Crossover', N'Nhập khẩu', N'Dầu', N'Sàn 5 cấp', N'Trắng', 4, 4, CAST(N'2018-01-05' AS Date), N'A004.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A005', N'H090', N'TK077', N'2017 Subaru Outback', 300, 1732000, N'SUV/Crossover', N'Nhập khẩu', N'Xăng', N'Sàn 5 cấp', N'Xanh', 4, 4, CAST(N'2018-01-05' AS Date), N'A005.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A006', N'H058', N'TK012', N'2015 Mercedes benz', 290, 560000, N'Sedan', N'Nhập khẩu', N'Xăng', N'Tự động vô cấp', N'Xám', 4, 6, CAST(N'2018-01-05' AS Date), N'A006.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A007', N'H038', N'TK013', N'2017 Hyundai Grand i10', 100, 390000, N'Hatchback', N'Nhập khẩu', N'Dầu', N'Sàn 4 cấp', N'Đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A007.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A008', N'H038', N'TK014', N'2017 Hyundai Elantra 1.6', 200, 689000, N'Sedan', N'Nhập khẩu', N'Dầu', N'Sàn 4 cấp', N'Đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A008.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A009', N'H094', N'TK045', N'2017 Toyota Innova 2.0', 200, 710000, N'SUV/Crossover', N'Nhập khẩu', N'Dầu', N'Sàn 4 cấp', N'Xám', 4, 4, CAST(N'2018-01-05' AS Date), N'A009.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A010', N'H036', N'TK016', N'2017 Honda City 1.5', 200, 559000, N'Sedan', N'Nhập khẩu', N'Dầu', N'Sàn 5 cấp', N'Trắng', 4, 4, CAST(N'2018-01-05' AS Date), N'A010.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A011', N'H010', N'TK017', N'BMW 2017 2.2', 230, 1300000, N'Sedan', N'Nhập khẩu', N'Dầu', N'Tự động 4 cấp', N'Đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A011.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A012', N'H098', N'TK018', N'Volkswagen 2017  LX 2.2', 200, 4500000, N'Minivan', N'Nhập khẩu', N'Xăng', N'Sàn 4 cấp', N'Vàng', 4, 4, CAST(N'2018-01-05' AS Date), N'A012.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A013', N'H036', N'TK090', N'Honda Civic 2015', 120, 3000000, N'Sedan', N'Nhập khẩu', N'Xăng', N'Sàn 5 cấp', N'Đen', 4, 7, CAST(N'2018-01-05' AS Date), N'A013.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A014', N'H038', N'TK001', N'2017 Huyndai i10 1.2 HatchBack', 122, 400000, N'Hatchback', N'Trong nước', N'Xăng 1,2L', N'Tự động 4 cấp', N'Trắng', 5, 5, CAST(N'2018-01-05' AS Date), N'A014.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A015', N'H015', N'TK053', N'2018 Chevrolet Cruze LT', 134, 599000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Tự động vô cấp', N'Nâu', 4, 5, CAST(N'2018-01-05' AS Date), N'A015.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A016', N'H036', N'TK016', N'2018 Honda City 1.5 TOP', 154, 589000, N'Sedan', N'Trong nước', N'Xăng 1.6L', N'Sàn 5 cấp', N'Trắng', 4, 5, CAST(N'2018-01-05' AS Date), N'A016.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A017', N'H094', N'TK013', N'2018 Toyota Camry', 122, 977000, N'Sedan', N'Trong nước', N'Xăng 2.0L', N'Tự động 6 cấp', N'Đen', 4, 5, CAST(N'2018-01-05' AS Date), N'A017.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A018', N'H038', N'TK076', N'2017 Huyndai SantaFe 2.4 4WD', 123, 898000, N'SUV/Crossover', N'Trong nước', N'Xăng 2.4L', N'Tự động 6 cấp', N'Đen', 5, 7, CAST(N'2018-01-05' AS Date), N'A018.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A019', N'H026', N'TK022', N'2010 Ford Focus 1.8 AT', 110, 390000, N'Hatchback', N'Trong nước', N'Xăng 1.8L', N'Tự động 6 cấp', N'Xanh Dương', 5, 5, CAST(N'2018-01-05' AS Date), N'A019.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A020', N'H026', N'TK023', N'2013 Ford Ranger WildTrak 2.2 4x2 AT', 150, 585000, N'Pickup', N'Nhập khẩu', N'Dầu 2.2L', N'Tự động 6 cấp', N'Cam', 4, 5, CAST(N'2018-01-05' AS Date), N'A020.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A021', N'H036', N'TK024', N'2008 Honda Accord EX', 167, 510000, N'Sedan', N'Nhập khẩu', N'Xăng 2.4L', N'Tự động 5 cấp', N'Đen', 4, 5, CAST(N'2018-01-05' AS Date), N'A021.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A022', N'H026', N'TK025', N'2011 Ford Everest 2.5', 188, 575000, N'SUV/Crossover', N'Trong nước', N'Dầu 2.5L', N'Sàn 6 cấp', N'Bạc', 4, 7, CAST(N'2018-01-05' AS Date), N'A022.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A023', N'H015', N'TK026', N'2018 Chevrolet Cruze LTZ', 145, 699000, N'Sedan', N'Trong nước', N'Xăng 1.8L', N'Tự động 6 cấp', N'Bạc', 4, 5, CAST(N'2018-01-05' AS Date), N'A023.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A024', N'H038', N'TK030', N'2018 HUYNDAI GRAND I10 1.0 BASE', 100, 315000, N'hatchback', N'Trong nước', N'Xăng 1.0L', N'Sàn 5 cấp', N'Trắng', 5, 5, CAST(N'2018-01-05' AS Date), N'A024.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A025', N'H026', N'TK045', N'2017 FORD FIESTA 1.5 AT SPORT', 111, 520000, N'hatchback', N'Trong nước', N'Xăng 1.5L', N'Tự động 6 cấp', N'Đỏ', 5, 5, CAST(N'2018-01-05' AS Date), N'A025.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A026', N'H026', N'TK071', N'2018 FORD EVEREST 2.2 AT TITANIUM', 160, 1245000, N'SUV/Crossover', N'Nhập khẩu', N'Dầu 2.2L', N'Tự động 6 cấp', N'Trắng', 5, 7, CAST(N'2018-01-05' AS Date), N'A026.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A027', N'H043', N'TK066', N'2018 KIA RONDO GAT', 159, 603000, N'Wagon/Van/ Minivan/MPV', N'Nhập khẩu', N'Xăng 2.2L', N'Tự động 6 cấp', N'Xanh dương', 5, 7, CAST(N'2018-01-05' AS Date), N'A027.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A028', N'H070', N'TK060', N'2018 PEUGEOT 5008 1.6L TURBO', 167, 1399000, N'SUV/Crossover', N'Trong nước', N'Xăng 1.6L', N'Tự động 6 cấp', N'Đen', 5, 7, CAST(N'2018-01-05' AS Date), N'A028.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A029', N'H036', N'TK050', N'2017 HONDA CITY 1.5 CVT', 118, 559000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Tự động vô cấp', N'Trắng', 4, 5, CAST(N'2018-01-05' AS Date), N'A029.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A030', N'H038', N'TK003', N'2017 HYUNDAI SANTA FE 2.4 2WD', 174, 898000, N'SUV/Crossover', N'Trong nước', N'Xăng 2.4L', N'Tự động 6 cấp', N'Đen', 5, 7, CAST(N'2018-01-05' AS Date), N'A030.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A031', N'H043', N'TK014', N'2018 KIA SORENTO GAT 2WD', 174, 492000, N'SUV/Crossover', N'Trong nước', N'Xăng 2.4L', N'Tự động 6 cấp', N'Trắng', 5, 7, CAST(N'2018-01-05' AS Date), N'A031.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A032', N'H026', N'TK025', N'2018 FORD RANGER WILDTRAK 3.2 4X4 AT', 197, 880000, N'Pickup', N'Nhập khẩu', N'Dầu 3.2L', N'Tự động 6 cấp', N'Cam', 4, 5, CAST(N'2018-01-05' AS Date), N'A032.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A033', N'H015', N'TK047', N'2017 CHEVROLET TRAX 1.4L LT', 140, 769000, N'SUV/Crossover', N'Nhập khẩu', N'Xăng 1.4L', N'Tự động 6 cấp', N'Đỏ', 5, 5, CAST(N'2018-01-05' AS Date), N'A033.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A034', N'H026', N'TK041', N'2017 FORD TRANSIT 2.4 - 16 CHỖ TIÊU CHUẨN', 138, 795000, N'Wagon/Van/ Minivan/MPV', N'Trong nước', N'Dầu 2.4L', N'Sàn 5 cấp', N'Bạc', 4, 16, CAST(N'2018-01-05' AS Date), N'A034.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A035', N'H026', N'TK042', N'2017 FORD RANGER WILDTRAK 3.2 4X4 AT', 197, 910000, N'Pickup', N'Nhập khẩu', N'Dầu 3.2L', N'Tự động 6 cấp', N'Trắng', 4, 5, CAST(N'2018-01-05' AS Date), N'A035.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A036', N'H094', N'TK043', N'2018 TOYOTA INNOVA 2.0G', 100, 777000, N'Wagon/Van/ Minivan/MPV', N'Trong nước', N'Xăng 2.0L', N'Tự động 6 cấp', N'Bạc', 4, 4, CAST(N'2018-01-05' AS Date), N'A036.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A037', N'H094', N'TK012', N'2018 TOYOTA VIOS 1.5G CVT', 120, 540000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Tự động vô cấp', N'Trắng', 5, 7, CAST(N'2018-01-05' AS Date), N'A037.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A038', N'H094', N'TK022', N'2018 TOYOTA CAMRY 2.0E', 150, 947000, N'Sedan', N'Trong nước', N'Xăng 2.0L', N'Tự động 6 cấp', N'Nâu vàng', 4, 5, CAST(N'2018-01-05' AS Date), N'A038.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A039', N'H056', N'TK025', N'2017 MAZDA CX-5 2.5 AT 2WD', 188, 969000, N'SUV/Crossover', N'Trong nước', N'Xăng 2.5L', N'Tự động 6 cấp', N'Trắng', 5, 5, CAST(N'2018-01-05' AS Date), N'A039.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A040', N'H056', N'TK055', N'2017 Mazda CX-5 2.5 AT 2WD', 185, 849000, N'SUV/Crossover', N'Trong nước', N'Xăng 2.5L', N'Tự động 6 cấp', N'Trắng', 5, 5, CAST(N'2018-01-05' AS Date), N'A040.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A041', N'H026', N'TK066', N'2017 Ford Focus 1.5L Ecoboost Trend', 178, 619000, N'Hatchback', N'Trong nước', N'Xăng 1.5L', N'Tự động 6 cấp', N'Trắng', 5, 5, CAST(N'2018-01-05' AS Date), N'A041.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A042', N'H026', N'TK088', N'2017 Ford Ecosport Titanium 1.5 AT', 110, 620000, N'SUV/Crossover', N'Trong nước', N'Xăng 1.5L', N'Tự động 6 cấp', N'Đỏ', 5, 5, CAST(N'2018-01-05' AS Date), N'A042.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A043', N'H038', N'TK044', N'2017 Hyundai Elantra 2.0 AT', 154, 662000, N'Sedan', N'Trong nước', N'Xăng 2.0L', N'Tự động 6 cấp', N'Đỏ', 4, 5, CAST(N'2018-01-05' AS Date), N'A043.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A044', N'H038', N'TK038', N'2017 Hyundai Elantra 1.6 MT', 130, 552000, N'Sedan', N'Trong nước', N'Xăng 1.6L', N'Sàn 5 cấp', N'Be', 4, 5, CAST(N'2018-01-05' AS Date), N'A044.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A045', N'H043', N'TK020', N'2016 KIA Sorento DAT 2WD', 195, 939000, N'SUV/Crossover', N'Trong nước', N'Dầu 2.2L', N'Tự động 6 cấp', N'Trắng', 5, 7, CAST(N'2018-01-05' AS Date), N'A045.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A046', N'H036', N'TK023', N'2018 Honda Civic 1.5CVT', 200, 898000, N'Sedan', N'Nhập khẩu', N'Xăng 1.5L', N'Tự động Vô cấp', N'Xanh đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A046.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A047', N'H036', N'TK044', N'2018 Honda City 1.5 TOP', 178, 559000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Tự động Vô cấp', N'Trắng', 4, 4, CAST(N'2018-01-05' AS Date), N'A047.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A048', N'H094', N'TK001', N'2018 Toyota Camry 2.5Q', 189, 1252000, N'Sedan', N'Trong nước', N'Xăng 2.5L', N'Tự động 6 cấp', N'Đen', 4, 4, CAST(N'2018-01-05' AS Date), N'A048.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A049', N'H094', N'TK061', N'2018 Toyota Corolla Altis 1.8G CVT', 213, 713000, N'Sedan', N'Trong nước', N'Xăng 1.8L', N'Tự đông Vô cấp', N'Trắng', 4, 4, CAST(N'2018-01-05' AS Date), N'A049.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A050', N'H056', N'TK027', N'2017 Mazda 2 1.5 AT', 176, 494000, N'Hatchback', N'Trong nước', N'Xăng 1.5 L', N'Tự đông 4 cấp', N'Xám', 4, 4, CAST(N'2018-01-05' AS Date), N'A050.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A051', N'H056', N'TK081', N'2017 Mazda 6 2.0 AT', 189, 830000, N'Sedan', N'Trong nước', N'Xăng 2.0L', N'Tự động 6 cấp', N'Đỏ', 4, 4, CAST(N'2018-01-05' AS Date), N'A051.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A052', N'H094', N'TK061', N'2018 Toyota Vios 1.5E MT', 222, 490000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Sàn 5 cấp', N'Bạc', 4, 4, CAST(N'2018-01-05' AS Date), N'A052.JPG', 0)
INSERT [dbo].[OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (N'A053', N'H056', N'TK039', N'2017 Mazda 3 1.5 AT Sedan', 214, 659000, N'Sedan', N'Trong nước', N'Xăng 1.5L', N'Tự động 6 cấp', N'Xanh Dương', 4, 4, CAST(N'2018-01-05' AS Date), N'A053.JPG', 0)
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK001', N'hoang', N'phamviethuyhoang', N'Cá nhân', N'Phạm Việt Huy Hoàng', N'phamviethuyhoang1002@gmail.com', N'0969880353', NULL, N'Nam Định', N'Nam Định', N'TK001.png', N'TK001.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK002', N'tienha', N'tienhak7', N'Cá nhân', N'Lê Tiến Hà', N'Letienha@gmail.com   ', N'0916091623', NULL, N'Hà Tĩnh', N'Hà Tĩnh', N'TK002.png', N'TK002.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK003', N'bach', N'dangthobach', N'Cá nhân', N'Đặng Thọ Bách', N'dangthobach@gmail.com', N'0969990550', NULL, N'Hà Nội', N'Hà Nội', N'TK003.png', N'TK003.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK004', N'leha', N'hahien', N'Cá nhân', N'Lê Thị Hà', N'lethiha@gmail.com    ', N'0999990555', NULL, N'Nghệ An', N'Nghệ An', N'TK004.png', N'TK004.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK005', N'fordphapvan', N'fordpv', N'Đại lý', NULL, N'Fordphapvan@email.com', N'0123456789', NULL, N'Hà Nội', N'Hà Nội', N'TK005.png', N'TK005.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK006', N'huyndaihcm', N'huyndai', N'Đại lý', NULL, N'huyndaihcm@email.com', N'0143526798', NULL, N'TP Hồ Chí Minh', N'TP Hồ Chí Minh', N'TK006.png', N'TK006.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK007', N'hondaquangninh', N'123@abc@456', N'Đại lý', NULL, N'hondaquangninh@gmail.com  ', N'0154783269', NULL, N'Quảng Ninh', N'Quảng Ninh', N'TK007.png', N'TK007.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK008', N'hai', N'tranngochai', N'Cá nhân', N'Trần Ngọc Hải', N'tranngochai@gmail.com     ', N'0916880300', NULL, N'Hà Nội', N'Hà Nội', N'TK008.png', N'TK008.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK009', N'chervoletcaudien', N'chervolet123', N'Đại lý', NULL, N'chervoletcaudien@email.com', N'0350999777', NULL, N'Hà Nội', N'Hà Nội', N'TK009.png', N'TK009.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK010', N'minicamau', N'mini', N'Đại lý', NULL, N'minicamau@emaiol.com   ', N'0380000777', NULL, N'Cà Mau', N'Cà Mau', N'TK010.png', N'TK010.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK011', N'toyotabaclieu', N'japan', N'Đại lý', NULL, N'toyotabaclieu@emial.com', N'0360987654', NULL, N'Bạc Liêu', N'Bạc Liêu', N'TK011.png', N'TK011.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK012', N'hung', N'viktor', N'Cá Nhân', N'Lê Việt Hùng', N'leviethung@gmail.com   ', N'0947357375', NULL, N'Hà Đông', N'Hà Đông', N'TK012.png', N'TK012.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK013', N'loc', N'lockute', N'Cá Nhân', N'Nguyễn Văn Lộc', N'tranthiloc@gmail.com   ', N'0988880976', NULL, N'Bắc Cạn', N'Bắc Cạn', N'TK013.png', N'TK013.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK014', N'phuong', N'phuongvo', N'Cá Nhân', N'Võ Duy Phương', N'tranvanphuong@gmail.com', N'0969990005', NULL, N'Hà Nam', N'Hà Nam', N'TK014.png', N'TK014.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK015', N'bwmvinh', N'9875', N'Đại lý', NULL, N'bwmvinh@email.com', N'0390887349', NULL, N'Vinh', N'Vinh', N'TK015.png', N'TK015.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK016', N'khai', N'345', N'Cá Nhân', N'Nguyễn Ngọc Khải', N'khaicao@gmail.com', N'0999857423', NULL, N'Tây Nguyên', N'Tây Nguyên', N'TK016.png', N'TK016.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK017', N'chiencho', N'chochien', N'Cá Nhân', N'Nguyễn Đăng Chiến', N'chiencho@gmail.com', N'0978341997', NULL, N'Thái Bình', N'Thái Bình', N'TK017.png', N'TK017.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK018', N'haicau', N'cauhai123', N'Cá Nhân', N'Lê Văn Hải', N'haicau@gmail.com  ', N'0956423412', NULL, N'Hải Dương', N'Hải Dương', N'TK018.png', N'TK018.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK019', N'bwmlangbac', N'bmwgermany', N'Đại lý', NULL, N'bwmlangbac@gmail.com   ', N'0340986574', NULL, N'Hà Nội', N'Hà Nội', N'TK019.png', N'TK019.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK020', N'duc_vuive', N'nguyenminhduc', N'Cá nhân', N'Nguyễn Minh Đức', N'duc_vuive@gmail.com', N'0945697059', NULL, N'Hà Nội', N'Hà Nội', N'TK020.png', N'TK020.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK021', N'fordhouse', N'abc@123', N'Đại lý', NULL, N'fordhouse@yahoo.com.vn', N'0437581754', NULL, N'Hà Nội', N'Hà Nội', N'TK021.png', N'TK021.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK022', N'admin', N'admin123', N'Cá nhân', N'Trần Trọng Đại', N'noname@gmail.com', N'0998765412', NULL, N'Lâm Đồng', N'Lâm Đồng', N'TK022.png', N'TK022.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK023', N'admin2', N'admin456', N'Cá nhân', N'Nguyễn Mạnh Lực', N'noname2@gmail.com', N'01688985385', NULL, N'Hồ Chí Minh', N'Hồ Chí Minh', N'TK023.png', N'TK023.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK024', N'glhf', N'yolo', N'Cá nhân', N'Tạ Văn Tấn', N'goodluck@yahoo.com.vn', N'0969856745', NULL, N'Nghệ An', N'Nghệ An', N'TK024.png', N'TK024.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK025', N'silvermoon', N'123@abc@456', N'Cá nhân', N'Lê Thị Tảo', N'silvermoon@fit.com', N'01695632548', NULL, N'Thanh Hóa', N'Thanh Hóa', N'TK025.png', N'TK025.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK026', N'marine', N'terran', N'Cá nhân', N'Nguyễn Trọng Lực', N'ilovemarine@gmail.com', N'0978563215', NULL, N'Cần Thơ', N'Cần Thơ', N'TK026.png', N'TK026.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK027', N'battlecuirser', N'terran2', N'Cá nhân', N'Đặng Địa Cầu', N'ilovetank@yahoo.com.vn', N'0326598745', NULL, N'Quảng Ninh', N'Quảng Ninh', N'TK027.png', N'TK027.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK028', N'probe', N'protoss', N'Cá nhân', N'Nguyễn Nguyệt Nga', N'wintercoming@gmail.com', N'0437965854', NULL, N'Ninh Bình', N'Ninh Bình', N'TK028.png', N'TK028.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK029', N'zergling', N'zergs', N'Cá nhân', N'Ngô Văn Hóa', N'scarlet@gmail.com', N'0978564123', NULL, N'Nam Định', N'Nam Định', N'TK029.png', N'TK029.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK030', N'hydralisk', N'zergs123', N'Cá nhân', N'Trần Văn Lợi', N'soo@gmail.com', N'01695632412', NULL, N'Thái Bình', N'Thái Bình', N'TK030.png', N'TK030.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK031', N'stalker', N'toss', N'Cá nhân', N'Nguyễn Thị Huyền', N'zero@yahoo.com.vn', N'0437598641', NULL, N'Kon Tum', N'Kon Tum', N'TK031.png', N'TK031.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK032', N'garena', N'riot', N'Đại lý', NULL, N'garenatv@yolo.com', N'0439785452', NULL, N'Hà Nội', N'Hà Nội', N'TK032.png', N'TK032.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK033', N'blizzard', N'stacraft', N'Đại lý', NULL, N'blizzard@gmail.com', N'0132654789', NULL, N'Quảng Ngãi', N'Quảng Ngãi', N'TK033.png', N'TK033.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK034', N'vtc', N'123', N'Đại lý', NULL, N'vtc@yahoo.com.vn', N'0136547896', NULL, N'Hà Nội', N'Hà Nội', N'TK034.png', N'TK034.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK035', N'zingme', N'koass', N'Đại lý', NULL, N'me.zing@gmail.com', N'0965478966', NULL, N'Bắc Giang', N'Bắc Giang', N'TK035.png', N'TK035.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK036', N'immortal', N'lcs', N'Đại lý', NULL, N'blizzard@game.com', N'0654789654', NULL, N'Hải Phòng', N'Hải Phòng', N'TK036.png', N'TK036.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK037', N'phoenix', N'45676', N'Cá nhân', N'Nguyễn Mạnh Hoàng', N'phoenix@yahoo.com.vn', N'0974565214', NULL, N'Thái Bình', N'Thái Bình', N'TK037.png', N'TK037.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK038', N'voidray', N'happynewyear', N'Cá nhân', N'Tạ Thị Yến', N'thunderbird@gmail.com', N'01231564874', NULL, N'Lào Cai', N'Lào Cai', N'TK038.png', N'TK038.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK039', N'carrier', N'protoss098', N'Cá nhân', N'Trần Thái Nguyên', N'newboy@yahoo.com.vn', N'0654789654', NULL, N'Hải Dương', N'Hải Dương', N'TK039.png', N'TK039.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK040', N'scvready', N'terranpro', N'Cá nhân', N'Nguyễn Văn AK', N'soo@gmail.com', N'0965987464', NULL, N'Hồ Chí Minh', N'Hồ Chí Minh', N'TK040.png', N'TK040.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK041', N'fukushima', N'anthanh', N'Đại lý', N'TOYOTA An Thành FUKUSHIMA', N'fukushima@gmail.com', N'0933929699', NULL, N'TPHCM', N'606, Trần Hưng Đạo, Quận 5, Tp Hồ Chí Minh', N'TK041.png', N'TK041.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK042', N'saigonford', N'fordquan7', N'Đại lý', N'Sài Gòn FORD-CN Quận 7', N'saigonford@gmail.com', N'0986881681', NULL, N'TPHCM', N'1489 Nguyễn Văn Linh, Quận 7, Tp Hồ Chí Minh', N'TK042.png', N'TK042.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK043', N'tiengiang', N'tiengiang', N'Đại lý', N'TOYOTA Tiền Giang', N'tiengiang@gmail.com', N'0907063986', NULL, N'Tiền Giang', N'QL 1A, Long An, Châu Thành, Tiền Giang', N'TK043.png', N'TK043.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK044', N'kiacaudien', N'kiacaudien', N'Đại lý', N'KIA Cầu Diễn', N'kiacaudien@gmail.com', N'0989599597', NULL, N'Hà Nội', N'Km 10,5, QL.32 Phúc Diễn, Bắc Từ Liêm, Hà Nội', N'TK044.png', N'TK044.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK045', N'ford', N'ford', N'Đại lý', N'FORD Thanh Xuân', N'ford@gmail.com', N'0965423558', NULL, N'Hà Nội', N'Số 186, Phạm Văn Đồng, Xuân Đỉnh, Bắc Từ Liêm', N'TK045.png', N'TK045.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK046', N'phumyhung', N'phumyhung', N'Đại lý', N'MAZDA Phú Mỹ Hưng', N'phumyhung@gmail.com', N'0932646812', NULL, N'TPHCM', N'314 Nguyễn Văn Linh, Quận 7, Tp Hồ Chí Minh', N'TK046.png', N'TK046.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK047', N'dongdo', N'dongdo', N'Đại lý', N'CHEVROLET Đông Đô Thành', N'dongdo@gmail.com', N'0931779786', NULL, N'TPHCM', N'Số 3 Quốc Hương, Thảo Điền, Quận 2, Tp Hồ Chí Minh', N'TK047.png', N'TK047.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK048', N'longbien', N'longbien', N'Đại lý', N'TOYOTA Long Biên', N'longbien@gmail.com', N'0945501838', NULL, N'Hà Nội', N'7-9 Nguyễn Văn Linh, Gia Thụy, Long Biên, Hà Nội', N'TK048.png', N'TK048.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK049', N'hadong', N'hadong', N'Đại lý', N'HYUNDAI Hà Đông', N'hadong@gmail.com', N'0984047146', NULL, N'Hà Nội', N'17 Phường Yên Nghĩa, Hà Đông, Hà Nội', N'TK049.png', N'TK049.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK050', N'oto207', N'oto207', N'Đại lý', N'SALON Ô TÔ 207', N'oto207@gmail.com', N'0908090102', NULL, N'TPHCM', N'207 Nguyễn Thị Nhỏ, P.16, Q11, Tp Hồ  Chí Minh', N'TK050.png', N'TK050.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK051', N'toyophavan', N'toyophavan', N'Đại lý', N'TOYOTA Pháp Vân', N'toyophavan@gmail.com', N'0988488803', NULL, N'Hà Nội', N'Hoàng Mai - Hà Nội', N'TK051.png', N'TK051.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK052', N'merctrungchinh', N'merctrungchinh', N'Đại lý', N'MercedesBenz Trường Chinh', N'merctrungchinh@gmail.com', N'0908299829', NULL, N'TPHCM', N'02 Trường Chinh, Tân Phú, Tp Hồ Chí Minh', N'TK052.png', N'TK052.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK053', N'fordbenthanh', N'fordbenthanh', N'Đại lý', N'Bến Thành FORD', N'fordbenthanh@gmail.com', N'0937888599', NULL, N'TPHCM', N'71 Chế Lan Viên, Tân Phú, Tp Hồ Chí Minh', N'TK053.png', N'TK053.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK054', N'huyndaisonghan', N'huyndaisonghan', N'Đại lý', N'HYUNDAI Sông Hàn', N'huyndaisonghan@gmail.com', N'0963349540', NULL, N'Đà Nẵng', N'86 Duy Tân, Hải Châu, Tp Đà Nẵng', N'TK054.png', N'TK054.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK055', N'huyndaitayho', N'huyndaitayho', N'Đại lý', N'HYUDAI Tây Hồ', N'huyndaitayho@gmail.com', N'0979676056', NULL, N'Hà Nội', N'99, Võ Chí Công, Xuân La, Tây Hồ, Hà Nội', N'TK055.png', N'TK055.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK056', N'toyoansuong', N'toyoansuong', N'Đại lý', N'TOYOTA An Sương', N'toyoansuong@gmail.com', N'0931098909', NULL, N'TPHCM', N'382 Quốc lộ 22, Quận 12, Tp Hồ Chí Minnh', N'TK056.png', N'TK056.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK057', N'huyndaikdv', N'huyndaikdv', N'Đại lý', N'HYUNDAI Kinh Dương Vương', N'huyndaikdv@gmail.com', N'0907219539', NULL, N'TPHCM', N'701 Kinh Dương Vương, Bình Tân, Tp Hồ Chí Minh', N'TK057.png', N'TK057.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK058', N'otoconghoa', N'otoconghoa', N'Đại lý', N'HONDA Ô TÔ Cộng Hòa', N'otoconghoa@gmail.com', N'0938888978', NULL, N'TPHCM', N'18 Công Hòa, P.4, Tân Bình, Tp Hồ Chí Minh', N'TK058.png', N'TK058.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK059', N'mitsudanang', N'mitsudanang', N'Đại lý', N'Mitsubishi Đà Nẵng', N'mitsudanang@gmail.com', N'0968898538', NULL, N'Đà Nẵng', N'02, Nguyễn Hữu Thọ, Hải Châu, Tp Đà Nẵng', N'TK059.png', N'TK059.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK060', N'phumyford', N'phumyford', N'Đại lý', N'Phú Mỹ FORD', N'phumyford@gmail.com', N'01686239909', NULL, N'TPHCM', N'2 Bis Nguyễn Thị Minh Khai, Tp Hồ Chí Minh', N'TK060.png', N'TK060.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK061', N'huyndaipvd', N'huyndaipvd', N'Đại lý', N'HYUNDAI Phạm Văn Đồng', N'huyndaipvd@gmail.com', N'0966868543', NULL, N'Hà Nội', N'138 Phạm Văn Đồng, Xuân Đỉnh, Bắc Từ Liêm, Hà Nội', N'TK061.png', N'TK061.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK062', N'phuocthanh', N'phuocthanh', N'Đại lý', N'HONDA Ô TÔ Phước Thành', N'phuocthanh@gmail.com', N'01698675456', NULL, N'TPHCM', N'63 Võ Văn Kiệt, An Lac, Bình Tân, Tp Hồ Chí Minh', N'TK062.png', N'TK062.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK063', N'phoquan', N'phoquan', N'Đại lý', N'SÀI GÒN FORD - Phổ Quang', N'phoquan@gmail.com', N'0904415731', NULL, N'TPHCM', N'104 Phổ Quang P2, Tân Bình, Tp Hồ Chí Minh', N'TK063.png', N'TK063.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK064', N'mazbienhoa', N'mazbienhoa', N'Đại lý', N'MAZDA Biên Hòa', N'mazbienhoa@gmail.com', N'0933805888', NULL, N'Đồng Nai', N'19 Đường 2A, An Bình, Biên Hòa, Đồng Nai', N'TK064.png', N'TK064.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK065', N'mazthanhhoa', N'mazthanhhoa', N'Đại lý', N'Mazda Thanh Hóa', N'mazthanhhoa@gmail.com', N'0938806292', NULL, N'Thanh Hóa', N'Lô 992, Đại lộ Hùng Vương, Đông Hải, Thanh Hóa', N'TK065.png', N'TK065.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK066', N'kiavinhphuc', N'kiavinhphuc', N'Đại lý', N'Kia Vĩnh Phúc', N'kiavinhphuc@gmail.com', N'0938808235', NULL, N'Vĩnh Phúc', N'Quất Lưu, Bình Xuyên, Vĩnh Phúc', N'TK066.png', N'TK066.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK067', N'mazvinhphuc', N'mazvinhphuc', N'Đại lý', N'Mazda Vĩnh Phúc', N'mazvinhphuc@gmail.com', N'0938808205', NULL, N'Vĩnh Phúc', N'Quất Lưu, Bính Xuyên, Vĩnh Phúc', N'TK067.png', N'TK067.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK068', N'mazconghoa', N'mazconghoa', N'Đại lý', N'Mazda Cộng Hòa', N'mazconghoa@gmail.com', N'0938287207', NULL, N'TPHCM', N'22 Cộng Hòa, Phường 4, Tân Bình, Hồ Chí Minh', N'TK068.png', N'TK068.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK069', N'mazvinh', N'mazvinh', N'Đại lý', N'Mazda Vinh', N'mazvinh@gmail.com', N'0932247888', NULL, N'Nghệ An', N'Ngã tư sân bay - Đại lộ Lenin, Vinh, Nghệ An', N'TK069.png', N'TK069.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK070', N'toyohv', N'toyohv', N'Đại lý', N'Toyota Hùng Vương', N'toyohv@gmail.com', N'0909816234', NULL, N'TPHCM', N'26 KInh Dương Vương P13, Quận 6, Hồ Chí Minh', N'TK070.png', N'TK070.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK071', N'hondala', N'hondala', N'Đại lý', N'Honda Ô tô Long An', N'hondala@gmail.com', N'0902174727', NULL, N'Long An', N'Hùng Vương, Tp Tân An, Long An', N'TK071.png', N'TK071.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK072', N'hientoyota', N'hientoyota', N'Đại lý', N'Hiền Toyota-CN BìnhTriệu', N'hientoyota@gmail.com', N'0901777888', NULL, N'TPHCM', N'806 QL 13, Hiệp Bình Phước, Thủ Đức, Tp Hồ Chí Minh', N'TK072.png', N'TK072.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK073', N'phattien', N'phattien', N'Đại lý', N'Honda Phát Tiến   ', N'phattien@gmail.com', N'0932113732', NULL, N'TPHCM', N'136D, Mai Chí Thọ, Quân 2, Hồ Chí Minh', N'TK073.png', N'TK073.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK074', N'relex', N'relex', N'Đại lý', N'RELEX AUTO', N'relex@gmail.com', N'0961937777', NULL, N'Hà Nội', N'Nam Trung Yên, Cầu Giấy, Hà Nội', N'TK074.png', N'TK074.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK075', N'hientoyota', N'hientoyota', N'Đại lý', N'Hiền Toyota', N'hientoyota@gmail.com', N'0908666999', NULL, N'Hồ Chí Minh', N'44 Trần Đình Xu, Quận 1, Hồ Chí Minh', N'TK075.png', N'TK075.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK076', N'huyndaibinhthuan', N'huyndaibinhthuan', N'Đại lý', N'Hyundai Bình Thuận', N'huyndaibinhthuan@gmail.com', N'0933325151', NULL, N'Bình Thuận', N'309 Đường19/4, P.Xuân An, Phan Thiết, Bình Thuận', N'TK076.png', N'TK076.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK077', N'mazdanang', N'mazdanang', N'Đại lý', N'Mazda Đà Nẵng', N'mazdanang@gmail.com', N'0905253668', NULL, N'Đà Nẵng', N'356 Điện Biên Phủ, Thanh Khê, Đà Nẵng', N'TK077.png', N'TK077.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK078', N'chevcantho', N'chevcantho', N'Đại lý', N'CHEVROLET CẦN THƠ', N'chevcantho@gmail.com', N'0965838868', NULL, N'Cần Thơ', N'274 Đường 30-4, Quận Ninh Kiều, Tp Cần Thơ', N'TK078.png', N'TK078.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK079', N'nissanbd', N'nissanbd', N'Đại lý', N'Nissan Bình Dương', N'nissanbd@gmail.com', N'0988804407', NULL, N'Bình Dương', N'Số 24 Đại Lộ Bình Dương , Kp. Bình Hòa, P.Lái Thiêu, Thị xã Thuận An, Bình Dương', N'TK079.png', N'TK079.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK080', N'forddalat', N'forddalat', N'Đại lý', N'Western Ford Đà Lạt', N'forddalat@gmail.com', N'096 482 1122', NULL, N'Lầm Đồng', N'108 Hùng Vương-P.11, Tp. Đà Lạt, Lâm Đồng', N'TK080.png', N'TK080.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK081', N'mazphutho', N'mazphutho', N'Đại lý', N'MAZDA PHÚ THỌ', N'mazphutho@gmail.com', N'094 968 8399', NULL, N'Phú Thọ', N'Tổ 52, khu 12, đường Nguyễn Tất Thành, phường Thanh Miếu, Tp. Việt Trì, Phú Thọ', N'TK081.png', N'TK081.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK082', N'nissansg', N'nissansg', N'Đại lý', N'NISSAN SÀI GÒN', N'nissansg@gmail.com', N'090 380 8897', NULL, N'TPHCM', N'816 Sư Vạn Hạnh, Quận 10, Tp Hồ Chí Minh', N'TK082.png', N'TK082.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK083', N'chevsg', N'chevsg', N'Đại lý', N'Chevrolet Sài Gòn', N'chevsg@gmail.com', N'094 886 6229', NULL, N'TPHCM', N'161F Dạ Nam, Quận 8, Tp Hồ Chí Minh', N'TK083.png', N'TK083.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK084', N'anycar', N'anycar', N'Đại lý', N'Anycar Việt Nam', N'anycar@gmail.com', N'091 219 3155', NULL, N'Hà Nội', N'Số 8 Lê Quang Đạo, Nam Từ Liêm, HN (Đối diện cổng chính SVĐ Mỹ Đình)., Quận Nam Từ Liêm, Tp Hà Nội', N'TK084.png', N'TK084.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK085', N'huyandaingocan', N'huyandaingocan', N'Đại lý', N'HYUNDAI NGỌC AN', N'huyandaingocan@gmail.com', N'094 838 5039', NULL, N'TPHCM', N'327 Quốc Lộ 13 P. Hiệp Bình Phước, Thủ Đức, Tp Hồ Chí Minh', N'TK085.png', N'TK085.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK086', N'otohanoi', N'otohanoi', N'Đại lý', N'CHỢ Ô TÔ HÀ NỘI', N'otohanoi@gmail.com', N'097 747 7777', NULL, N'TPHCM', N'389 Quốc Lộ 13, Thủ Đức, Tp Hồ Chí Minh', N'TK086.png', N'TK086.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK087', N'kiabtr', N'kiabtr', N'Đại lý', N'KIA Bình Triệu', N'kiabtr@gmail.com', N'090 809 5777', NULL, N'TPHCM', N'153 QL13, P.Hiệp Bình Chánh, Thủ Đức, Tp Hồ Chí Minh', N'TK087.png', N'TK087.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK088', N'fordcaothang', N'fordcaothang', N'Đại lý', N'SÀI GÒN FORD-CAO THẮNG', N'fordcaothang@gmail.com', N'098 903 9469', NULL, N'TPHCM', N'61A Cao Thắng, Phường 3, Quận 3, Tp Hồ Chí Minh', N'TK088.png', N'TK088.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK089', N'toyotacu', N'toyotacu', N'Đại lý', N'TOYOTA ĐÃ QUA SỬ DỤNG', N'toyotacu@gmail.com', N'091 305 3508', NULL, N'TPHCM', N'63A Nguyễn Văn Lượng, Phường 10, Gò Vấp, Tp Hồ Chí Minh', N'TK089.png', N'TK089.jpg')
INSERT [dbo].[THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (N'TK090', N'nhattam', N'nhattam', N'Đại lý', N'Salon auto Nhất Tâm', N'nhattam@gmail.com', N'085 406 1718', NULL, N'TPHCM', N'1099 Hậu giang, Quận 6, Tp Hồ Chí Minh', N'TK090.png', N'TK090.jpg')
ALTER TABLE [dbo].[OTO]  WITH CHECK ADD  CONSTRAINT [FK__OTO__maHangXe__3B75D760] FOREIGN KEY([maHangXe])
REFERENCES [dbo].[HANGXE] ([maHangXe])
GO
ALTER TABLE [dbo].[OTO] CHECK CONSTRAINT [FK__OTO__maHangXe__3B75D760]
GO
ALTER TABLE [dbo].[OTO]  WITH CHECK ADD  CONSTRAINT [FK__OTO__maThanhVien__3C69FB99] FOREIGN KEY([maThanhVien])
REFERENCES [dbo].[THANHVIEN] ([maThanhVien])
GO
ALTER TABLE [dbo].[OTO] CHECK CONSTRAINT [FK__OTO__maThanhVien__3C69FB99]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[9] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OTO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 218
               Right = 273
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "THANHVIEN"
            Begin Extent = 
               Top = 7
               Left = 373
               Bottom = 250
               Right = 646
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OTO+THANHVIEN_Admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OTO+THANHVIEN_Admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OTO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 227
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "THANHVIEN"
            Begin Extent = 
               Top = 15
               Left = 404
               Bottom = 240
               Right = 664
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2910
         Alias = 900
         Table = 1170
         Output = 1230
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OTO+THANHVIEN_Client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OTO+THANHVIEN_Client'
GO
USE [master]
GO
ALTER DATABASE [otohub] SET  READ_WRITE 
GO
