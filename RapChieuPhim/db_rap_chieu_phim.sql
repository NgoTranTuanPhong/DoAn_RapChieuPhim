USE [QL_rap_chieu_phim]
GO
/****** Object:  Table [dbo].[Ca]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ca](
	[MaCa] [char](10) NOT NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Ca] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoiVe]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiVe](
	[MaVeCu] [char](10) NOT NULL,
	[MaVeMoi] [char](10) NULL,
	[ThoiGian] [datetime] NULL,
	[LiDo] [text] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DoiVe] PRIMARY KEY CLUSTERED 
(
	[MaVeCu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ghe](
	[MaGhe] [char](10) NOT NULL,
	[MaPhong] [char](10) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HuyVe]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HuyVe](
	[MaVe] [char](10) NOT NULL,
	[MaPhim] [char](10) NOT NULL,
	[MaLichChieu] [char](10) NOT NULL,
	[ThoiGian] [datetime] NULL,
	[LiDo] [nchar](10) NULL,
	[TongTien] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_HuyVe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC,
	[MaPhim] ASC,
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLich] [char](10) NOT NULL,
	[MaPhong] [char](10) NULL,
	[MaPhim] [char](10) NULL,
	[TenPhim] [nvarchar](50) NULL,
	[MaSuat] [char](10) NULL,
	[ThoiGianChieu] [datetime] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiTV]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiTV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [char](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTV] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Luong](
	[MaLuong] [int] NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[NgayLam] [datetime] NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
	[LoaiCa] [int] NULL,
	[MaLoaiNV] [float] NULL,
	[LuongCB] [float] NULL,
	[HeSoPhatSinh] [float] NULL,
 CONSTRAINT [PK_Luong_1] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaLoaiNV]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaLoaiNV](
	[MaLoaiNV] [char](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[HeSo] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_MaLoaiNV_1] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[MaPhim] [char](10) NOT NULL,
	[TenPhim] [nvarchar](50) NULL,
	[NDPhim] [text] NULL,
	[TheLoai] [char](10) NULL,
	[Settime] [datetime] NULL,
	[Endtime] [datetime] NULL,
	[ThoiLuong] [datetime] NULL,
	[NamXS] [date] NULL,
	[DaoDien] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[NhaXS] [nvarchar](50) NULL,
	[Mac] [nvarchar](50) NULL,
	[NgayNhap] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[HovaTen] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[GioiTinh] [int] NULL,
	[DiaChi] [varchar](max) NULL,
	[WorkDay] [date] NULL,
	[Email] [varchar](50) NULL,
	[LoaiNV] [char](10) NULL,
	[MaLuong] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPhong] [char](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[LoaiPhong] [char](10) NULL,
	[SLCho] [nchar](10) NULL,
 CONSTRAINT [PK_PhongChieu] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[MaSuat] [char](10) NOT NULL,
	[MaCa] [char](10) NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaSuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [char](10) NOT NULL,
	[MaNV] [char](10) NULL,
	[Password] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [char](10) NOT NULL,
	[TenTV] [nvarchar](50) NULL,
	[LoaiTV] [char](10) NULL,
	[SDT] [int] NULL,
	[NgaySinh] [datetime] NOT NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [char](10) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [char](10) NOT NULL,
	[MaPhim] [char](10) NOT NULL,
	[ViTriNgoi] [nvarchar](50) NULL,
	[PhongChieu] [nvarchar](50) NULL,
	[GiaVe] [int] NULL,
	[NgayTaoVe] [date] NULL,
	[MaVoucher] [char](10) NULL,
	[MaLichChieu] [char](10) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 10/22/2018 3:48:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Voucher](
	[MaVoucher] [char](10) NOT NULL,
	[TenVoucher] [nvarchar](50) NULL,
	[TiLe] [int] NULL,
	[NDung] [text] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[MaTV] [char](10) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[MaVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[DoiVe]  WITH CHECK ADD  CONSTRAINT [FK_DoiVe_Ve] FOREIGN KEY([MaVeMoi])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[DoiVe] CHECK CONSTRAINT [FK_DoiVe_Ve]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_PhongChieu] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_PhongChieu]
GO
ALTER TABLE [dbo].[HuyVe]  WITH CHECK ADD  CONSTRAINT [FK_HuyVe_DoiVe] FOREIGN KEY([MaVe])
REFERENCES [dbo].[DoiVe] ([MaVeCu])
GO
ALTER TABLE [dbo].[HuyVe] CHECK CONSTRAINT [FK_HuyVe_DoiVe]
GO
ALTER TABLE [dbo].[HuyVe]  WITH CHECK ADD  CONSTRAINT [FK_HuyVe_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[HuyVe] CHECK CONSTRAINT [FK_HuyVe_Ve]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_PhongChieu] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[PhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_PhongChieu]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_SuatChieu] FOREIGN KEY([MaSuat])
REFERENCES [dbo].[SuatChieu] ([MaSuat])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_SuatChieu]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_TheLoai] FOREIGN KEY([TheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_TheLoai]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Luong] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[Luong] ([MaLuong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Luong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_MaLoaiNV] FOREIGN KEY([LoaiNV])
REFERENCES [dbo].[MaLoaiNV] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_MaLoaiNV]
GO
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Ca] FOREIGN KEY([MaCa])
REFERENCES [dbo].[Ca] ([MaCa])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Ca]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiTV] FOREIGN KEY([LoaiTV])
REFERENCES [dbo].[LoaiTV] ([MaLoai])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiTV]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Movie] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Movie] ([MaPhim])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Movie]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Voucher] FOREIGN KEY([MaVoucher])
REFERENCES [dbo].[Voucher] ([MaVoucher])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Voucher]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_ThanhVien] FOREIGN KEY([MaTV])
REFERENCES [dbo].[ThanhVien] ([MaTV])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_ThanhVien]
GO
