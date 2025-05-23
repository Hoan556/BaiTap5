USE [master]
GO
/****** Object:  Database [Quan_ly_quan_cafe]    Script Date: 23/04/2025 18:03:25 ******/
CREATE DATABASE [Quan_ly_quan_cafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quan_ly_quan_cafe', FILENAME = N'D:\He_quan_tri_du_lieu_Bai2\Quan_ly_quan_cafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quan_ly_quan_cafe_log', FILENAME = N'D:\He_quan_tri_du_lieu_Bai2\Quan_ly_quan_cafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quan_ly_quan_cafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET RECOVERY FULL 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET  MULTI_USER 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quan_ly_quan_cafe', N'ON'
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET QUERY_STORE = ON
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Quan_ly_quan_cafe]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [varchar](50) NOT NULL,
	[TenBan] [varchar](50) NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaHD] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [varchar](50) NOT NULL,
	[MaKH] [varchar](50) NULL,
	[MaSP] [varchar](50) NULL,
	[SoSao] [varchar](50) NULL,
	[NoiDung] [varchar](50) NULL,
	[NgayDanhGia] [date] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatBan]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatBan](
	[MaDatBan] [varchar](50) NOT NULL,
	[MaKH] [varchar](50) NULL,
	[MaBan] [varchar](50) NULL,
	[ThoiGianDat] [time](7) NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK_DatBan] PRIMARY KEY CLUSTERED 
(
	[MaDatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangPhaChe]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangPhaChe](
	[MaHD] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[TrangThaiPhaChe] [varchar](50) NULL,
	[MaNL] [varchar](50) NULL,
 CONSTRAINT [PK_DonHangPhaChe] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](50) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
	[MaKH] [varchar](50) NOT NULL,
	[NgayLap] [date] NULL,
	[TongTien] [float] NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK_HoaDon_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhanhHang]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhanhHang](
	[MaKH] [varchar](50) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[SDT] [int] NULL,
	[Email] [varchar](50) NULL,
	[MaTK] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KhanhHang_1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDiem]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDiem](
	[MaKH] [varchar](50) NOT NULL,
	[Ngay] [date] NULL,
	[DiemThayDoi] [varchar](50) NULL,
	[GhiChu] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [varchar](50) NOT NULL,
	[TenLoaiSP] [varchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogCanhBao]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogCanhBao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaBan] [int] NULL,
	[TenBan] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[ThoiGianCapNhat] [datetime] NULL,
	[NoiDung] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNL] [varchar](50) NOT NULL,
	[TenNL] [varchar](50) NULL,
	[DonVi] [varchar](50) NULL,
	[TonKho] [varchar](50) NULL,
 CONSTRAINT [PK_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](50) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[SDT] [int] NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [varchar](50) NULL,
	[MaTK] [varchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapXuatKho]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapXuatKho](
	[MaNXK] [varchar](50) NOT NULL,
	[MaNL] [varchar](50) NULL,
	[NgayGiaoDich] [date] NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [varchar](50) NULL,
 CONSTRAINT [PK_NhapXuatKho] PRIMARY KEY CLUSTERED 
(
	[MaNXK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](50) NOT NULL,
	[TenSP] [varchar](50) NULL,
	[DonGia] [money] NULL,
	[MoTa] [varchar](50) NULL,
	[MaLoaiSP] [varchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [varchar](50) NOT NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[VaiTro] [varchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (N'01', N'B1', N'x')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (N'02', N'B2', N'0')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (N'03', N'B3', N'0')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TrangThai]) VALUES (N'04', N'B4', N'x')
GO
INSERT [dbo].[ChiTietDH] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'D001', N'1', 5, 2000000)
INSERT [dbo].[ChiTietDH] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'D002', N'2', 4, 150000)
GO
INSERT [dbo].[DanhGia] ([MaDG], [MaKH], [MaSP], [SoSao], [NoiDung], [NgayDanhGia]) VALUES (N'901', N'M01', N'1', N'5', N'yes', CAST(N'2025-01-12' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaKH], [MaSP], [SoSao], [NoiDung], [NgayDanhGia]) VALUES (N'902', N'M02', N'2', N'5', N'yes', CAST(N'2025-03-21' AS Date))
GO
INSERT [dbo].[DatBan] ([MaDatBan], [MaKH], [MaBan], [ThoiGianDat], [TrangThai]) VALUES (N'K01', N'M01', N'01', CAST(N'17:00:00' AS Time), N'x')
INSERT [dbo].[DatBan] ([MaDatBan], [MaKH], [MaBan], [ThoiGianDat], [TrangThai]) VALUES (N'k02', N'M02', N'02', CAST(N'15:00:00' AS Time), N'0')
GO
INSERT [dbo].[DonHangPhaChe] ([MaHD], [MaSP], [TrangThaiPhaChe], [MaNL]) VALUES (N'D001', N'1', N'X', N'A01')
INSERT [dbo].[DonHangPhaChe] ([MaHD], [MaSP], [TrangThaiPhaChe], [MaNL]) VALUES (N'D002', N'2', N'O', N'A02')
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap], [TongTien], [TrangThai]) VALUES (N'D001', N'NV01', N'M01', CAST(N'2025-04-22' AS Date), 2000000, N'yes')
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLap], [TongTien], [TrangThai]) VALUES (N'D002', N'NV02', N'M02', CAST(N'2025-02-11' AS Date), 3000000, N'yes')
GO
INSERT [dbo].[KhanhHang] ([MaKH], [HoTen], [SDT], [Email], [MaTK]) VALUES (N'M01', N'Nguyen van A', 987654, N'H@gmail.com', N'K001')
INSERT [dbo].[KhanhHang] ([MaKH], [HoTen], [SDT], [Email], [MaTK]) VALUES (N'M02', N'Nong Ho N', 87654, N'N@gmai.com', N'k002')
GO
INSERT [dbo].[LichSuDiem] ([MaKH], [Ngay], [DiemThayDoi], [GhiChu]) VALUES (N'M01', CAST(N'2025-01-22' AS Date), N'4', N'ok')
INSERT [dbo].[LichSuDiem] ([MaKH], [Ngay], [DiemThayDoi], [GhiChu]) VALUES (N'M02', CAST(N'2025-01-21' AS Date), N'3', N'ok')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H01', N'cafe sua')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H02', N'Bac suu')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H03', N'Tra Hoa Nhai')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H04', N'Tra sua socola')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H05', N'Tra chanh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'H06', N'cafe nong')
GO
SET IDENTITY_INSERT [dbo].[LogCanhBao] ON 

INSERT [dbo].[LogCanhBao] ([ID], [MaBan], [TenBan], [TrangThai], [ThoiGianCapNhat], [NoiDung]) VALUES (1, 4, N'B3', N'DaDat', CAST(N'2025-04-23T12:00:00.000' AS DateTime), N'Bàn đã được đặt, vui lòng chọn bàn khác.')
INSERT [dbo].[LogCanhBao] ([ID], [MaBan], [TenBan], [TrangThai], [ThoiGianCapNhat], [NoiDung]) VALUES (2, 4, N'B3', N'Huy', CAST(N'2025-04-23T12:00:00.000' AS DateTime), N'Bàn đã được hủy đặt, hiện đang trống.')
INSERT [dbo].[LogCanhBao] ([ID], [MaBan], [TenBan], [TrangThai], [ThoiGianCapNhat], [NoiDung]) VALUES (3, 4, N'B4', N'Huy', CAST(N'2025-04-23T12:00:00.000' AS DateTime), N'Bàn đã được hủy đặt, hiện đang trống.')
SET IDENTITY_INSERT [dbo].[LogCanhBao] OFF
GO
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [DonVi], [TonKho]) VALUES (N'A01', N'cafe', N'500g', N'10')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [DonVi], [TonKho]) VALUES (N'A02', N'Huong lieu hoa nhai', N'200g', N'15')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [DonVi], [TonKho]) VALUES (N'A03', N'sua dac', N'500g', N'17')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [DonVi], [TonKho]) VALUES (N'A04', N'sua tuoi', N'1000g', N'12')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [NgaySinh], [GioiTinh], [MaTK]) VALUES (N'NV01', N'NGUYEN VAN HOAN', 998757885, CAST(N'2004-04-04' AS Date), N'NAM', N'K001')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [NgaySinh], [GioiTinh], [MaTK]) VALUES (N'NV02', N'TRUONG VAN QUYEN', 9876543, CAST(N'2004-01-04' AS Date), N'nam', N'K002')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [NgaySinh], [GioiTinh], [MaTK]) VALUES (N'NV03', N'NONG HO NHAT', 98887765, CAST(N'2004-06-08' AS Date), N'NAM', N'K003')
GO
INSERT [dbo].[NhapXuatKho] ([MaNXK], [MaNL], [NgayGiaoDich], [SoLuong], [GhiChu]) VALUES (N'1', N'A01', CAST(N'2025-04-21' AS Date), 12, N'ok')
INSERT [dbo].[NhapXuatKho] ([MaNXK], [MaNL], [NgayGiaoDich], [SoLuong], [GhiChu]) VALUES (N'2', N'A02', CAST(N'2025-04-21' AS Date), 13, N'ok')
INSERT [dbo].[NhapXuatKho] ([MaNXK], [MaNL], [NgayGiaoDich], [SoLuong], [GhiChu]) VALUES (N'3', N'A03', CAST(N'2025-04-25' AS Date), 15, N'ok')
INSERT [dbo].[NhapXuatKho] ([MaNXK], [MaNL], [NgayGiaoDich], [SoLuong], [GhiChu]) VALUES (N'4', N'A04', CAST(N'2025-04-14' AS Date), 18, N'ok')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MaLoaiSP]) VALUES (N'1', N'Tra sua', 250000000.0000, N'size L', N'H01')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MaLoaiSP]) VALUES (N'2', N'Bac suu', 300000000.0000, N'size M', N'H02')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MaLoaiSP]) VALUES (N'3', N'Tra Hoa Nhai', 350000000000.0000, N'size L', N'H03')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MaLoaiSP]) VALUES (N'4', N'Tra sua socola', 30000000000.0000, N'size L', N'H04')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'K001', N'Nguyen van Hoan', N'Hoan@123', N'Quan ly')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'k002', N'Nong Ho Nhat', N'Nhat@123', N'pha che')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'k003', N'Ma Quoc Hieu', N'Hieu@123', N'bung be')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'K004', N'Truong Van Quyen', N'Quyen@123', N'lao cong')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'k005', N'Hoang Thi Xuan TRang ', N'Trang@123', N'pha che')
GO
ALTER TABLE [dbo].[LogCanhBao] ADD  DEFAULT (getdate()) FOR [ThoiGianCapNhat]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhanhHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhanhHang] ([MaKH])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhanhHang]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_Ban]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_KhanhHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhanhHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_KhanhHang]
GO
ALTER TABLE [dbo].[DonHangPhaChe]  WITH CHECK ADD  CONSTRAINT [FK_DonHangPhaChe_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[DonHangPhaChe] CHECK CONSTRAINT [FK_DonHangPhaChe_HoaDon]
GO
ALTER TABLE [dbo].[DonHangPhaChe]  WITH CHECK ADD  CONSTRAINT [FK_DonHangPhaChe_NguyenLieu] FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[DonHangPhaChe] CHECK CONSTRAINT [FK_DonHangPhaChe_NguyenLieu]
GO
ALTER TABLE [dbo].[DonHangPhaChe]  WITH CHECK ADD  CONSTRAINT [FK_DonHangPhaChe_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHangPhaChe] CHECK CONSTRAINT [FK_DonHangPhaChe_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhanhHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhanhHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhanhHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhanhHang]  WITH CHECK ADD  CONSTRAINT [FK_KhanhHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[KhanhHang] CHECK CONSTRAINT [FK_KhanhHang_TaiKhoan]
GO
ALTER TABLE [dbo].[LichSuDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuDiem_KhanhHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhanhHang] ([MaKH])
GO
ALTER TABLE [dbo].[LichSuDiem] CHECK CONSTRAINT [FK_LichSuDiem_KhanhHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[NhapXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_NhapXuatKho_NguyenLieu] FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[NhapXuatKho] CHECK CONSTRAINT [FK_NhapXuatKho_NguyenLieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  Trigger [dbo].[TR_Canhbaotinhtrangban]    Script Date: 23/04/2025 18:03:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nguyen Van Hoan
-- Create date: 2025-04-23
-- Description:	Canhbaotinhtrangban
-- =============================================
CREATE TRIGGER [dbo].[TR_Canhbaotinhtrangban]
ON [dbo].[DatBan]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MaBan INT, @TrangThai NVARCHAR(20), @TenBan NVARCHAR(100), @NoiDung NVARCHAR(255);

    SELECT TOP 1 
        @MaBan = i.MaBan,
        @TrangThai = i.TrangThai
    FROM inserted i;

    SELECT @TenBan = TenBan FROM Ban WHERE MaBan = @MaBan;

    SET @NoiDung = 
        CASE 
            WHEN @TrangThai = 'DaDat' THEN N'Bàn đã được đặt, vui lòng chọn bàn khác.'
            WHEN @TrangThai = 'DangSuDung' THEN N'Bàn đang sử dụng, vui lòng chọn bàn khác.'
            WHEN @TrangThai = 'Huy' THEN N'Bàn đã được hủy đặt, hiện đang trống.'
            WHEN @TrangThai = 'HoanThanh' THEN N'Bàn đã hoàn tất đặt, đang sẵn sàng.'
            ELSE N'Trạng thái bàn đã thay đổi.'
        END;

    INSERT INTO LogCanhBao (MaBan, TenBan, TrangThai, ThoiGianCapNhat, NoiDung)
    VALUES (@MaBan, @TenBan, @TrangThai, GETDATE(), @NoiDung);
END;

GO
ALTER TABLE [dbo].[DatBan] ENABLE TRIGGER [TR_Canhbaotinhtrangban]
GO
USE [master]
GO
ALTER DATABASE [Quan_ly_quan_cafe] SET  READ_WRITE 
GO
