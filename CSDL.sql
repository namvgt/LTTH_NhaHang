USE [master]
GO
/****** Object:  Database [LTTH_NhaHang]    Script Date: 6/14/2021 10:10:04 AM ******/
CREATE DATABASE [LTTH_NhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LTTH_NhaHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LTTH_NhaHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LTTH_NhaHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LTTH_NhaHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LTTH_NhaHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LTTH_NhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LTTH_NhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LTTH_NhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LTTH_NhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LTTH_NhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LTTH_NhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LTTH_NhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [LTTH_NhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LTTH_NhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LTTH_NhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LTTH_NhaHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LTTH_NhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LTTH_NhaHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LTTH_NhaHang] SET QUERY_STORE = OFF
GO
USE [LTTH_NhaHang]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 6/14/2021 10:10:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[banID] [int] IDENTITY(1,1) NOT NULL,
	[loaibanID] [int] NULL,
	[tenban] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_BAN] PRIMARY KEY CLUSTERED 
(
	[banID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BLOG]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOG](
	[blogID] [int] IDENTITY(1,1) NOT NULL,
	[nguoidungID] [int] NULL,
	[tenblog] [nvarchar](50) NULL,
	[ngayblog] [date] NULL,
	[noidung] [nvarchar](max) NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_BLOG] PRIMARY KEY CLUSTERED 
(
	[blogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATBAN]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATBAN](
	[datbanID] [int] IDENTITY(1,1) NOT NULL,
	[khachhangID] [int] NULL,
	[ngaydat] [date] NOT NULL,
	[giodat] [char](10) NULL,
	[songuoi] [int] NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_DATBAN] PRIMARY KEY CLUSTERED 
(
	[datbanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAUBEP]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAUBEP](
	[daubepID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[mota] [text] NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_DAUBEP] PRIMARY KEY CLUSTERED 
(
	[daubepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDATBAN]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDATBAN](
	[datbanID] [int] NOT NULL,
	[banID] [int] NOT NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_DDATBAN] PRIMARY KEY CLUSTERED 
(
	[datbanID] ASC,
	[banID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[khachhangID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nchar](25) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[khachhangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIBAN]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIBAN](
	[loaibanID] [int] IDENTITY(1,1) NOT NULL,
	[tenloaiban] [nvarchar](50) NULL,
	[succhua] [int] NULL,
 CONSTRAINT [PK_LOAIBAN] PRIMARY KEY CLUSTERED 
(
	[loaibanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMONAN]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMONAN](
	[loaimonanID] [int] IDENTITY(1,1) NOT NULL,
	[tenloaimon] [nvarchar](50) NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_LOAIMONAN] PRIMARY KEY CLUSTERED 
(
	[loaimonanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONAN]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONAN](
	[monanID] [int] IDENTITY(1,1) NOT NULL,
	[loaimonanID] [int] NOT NULL,
	[tenmonan] [nvarchar](50) NULL,
	[dongia] [float] NULL,
	[mota] [nvarchar](500) NULL,
	[anhminhhoa] [nchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_MONAN] PRIMARY KEY CLUSTERED 
(
	[monanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 6/14/2021 10:10:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[nguoidungID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nvarchar](25) NULL,
	[username] [nchar](15) NULL,
	[password] [nchar](15) NULL,
	[quyen] [nchar](15) NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[nguoidungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (1, 1, N'Bàn 1', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (2, 2, N'Bàn 2', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (3, 3, N'Bàn 3', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (4, 1, N'Bàn 4', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (5, 2, N'Bàn 5', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (6, 3, N'Bàn 6', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (7, 1, N'Bàn 7', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (8, 1, N'Bàn 8', 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [trangthai]) VALUES (9, 2, N'Bàn 9', 1)
SET IDENTITY_INSERT [dbo].[BAN] OFF
GO
SET IDENTITY_INSERT [dbo].[BLOG] ON 

INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (1, 1, N'Yến Xào Khánh Hòa', CAST(N'2021-05-12' AS Date), N'Yến sào có tác dụng bổ dưỡng cao, làm cường tráng, dai sức, kích thích tiêu hóa, giúp an thần, gây ngủ, cầm máu, chữa được bệnh ho, thổ huyết, kiết lỵ. Yến sào (tổ chim yến) có hình nôi tròn hoặc bầu dục, cong bán nguyệt, màu trắng xám, có khi màu hồng hoặc đỏ…



Cách chế biến tổ yến: Ngâm tổ trong nước lã 3-4 giờ hoặc nước nóng 30 phút đến một tiếng. Khi thấy các sợi dãi đã tã ra thì vớt lên (có thể xoa ít dầu lạc), nhặt hết lông chim, rác rưởi, rêu núi và các chất bẩn khác còn bám vào. Yến sào có thể chế biến thành nhiều món ngon như: chè yến, súp yến…', N'/Content/img/yen-sao-507275.jpg                   ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (2, 2, N'Bánh Căn', CAST(N'2021-05-12' AS Date), N'Nguyên liệu để làm bánh căn là gạo tẻ ngâm khoảng từ 6 đến 8 tiếng đồng hồ rồi đem xay thành bột loãng. Đổ bánh căn dùng một lò đất nung tròn to, bên trên là khuôn bánh được khoét lỗ tròn đều, khuôn đổ bột khoảng 8-16 lỗ; phần thân lò để chứa than hồng. Thoa vào mỗi khuôn một lớp mỡ rồi đậy khuôn, chờ thật nóng mới đổ bột vào. Mẻ đầu được dùng để thử lò và tráng khuôn.



Người ta dùng chiếc cạy bằng kim loại để đưa bánh ra khỏi khuôn. Khi mặt trên của bánh căn xốp và khô lại, viền bánh co lại, tróc ra thì bánh đã chín và có thể ăn được. Bánh căn dùng nóng với nước mắm pha chua ngọt, ăn kèm với rau sống, bánh mì chiên giòn.', N'/Content/img/banh-can-512824.jpg                  ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (3, 3, N'Bánh Đa Cua', CAST(N'2021-05-12' AS Date), N'Bánh đa cua một món ăn mộc mạc mà thân thiết của người dân đất cảng Hải Phòng. Một bát bánh đa cua ngon, hấp dẫn phải hội tụ đủ 5 màu: màu nâu hồng của gạch cua, màu bánh đa nâu sậm, màu xanh mướt của rau nhút, rau muống, hành lá, màu đỏ tươi nơi trái ớt và vàng rộm của hành khô.



Bây giờ rất nhiều nơi có bán bánh đa cua, tuy nhiên nếu ăn bánh đa cua Hải Phòng người ăn sẽ thấy khác. Có thể đó là "hương vị quê hương" nhưng có một sự thật là nếu chỉ có bánh đa đỏ và cua đồng thì không thể tạo ra hương vị bánh đa cua Hải Phòng vì nó còn sử dụng một số bí quyết đặc trưng bao gồm: bí quyết làm bánh đa đỏ và bí quyết nấu món canh bánh đa.', N'/Content/img/banh-da-cua-507307.jpg               ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (4, 4, N'Lẩu Thả', CAST(N'2021-05-12' AS Date), N'Nước dùng của lẩu thả được chế biến đơn giản, không cầu kỳ như nguyên liệu dùng để ăn lẩu. Chỉ cần cho một ít cà chua và thịt gà cắt hạt lựu khử với dầu ăn, nêm nếm gia vị và sau đó cho nước hầm xương vào đun sôi.



Thưởng thức lẩu thả có 2 cách: Nếu thích sự đơn giản, bạn có thể chọn cách thưởng thức lẩu thả khô, chỉ cần bỏ một ít rau, bún; gắp một ít cá, thịt, trứng, bánh đa trộn với nước sốt; lẩu thả nước tương tự như cách ăn khô, chỉ khác ở chỗ là cá mai được thả vào trụng qua với nước dùng. Vì vậy cái tên “ lẩu thả” cũng xuất phát từ công đoạn này.', N'/Content/img/lau-tha-507270.jpg                   ')
SET IDENTITY_INSERT [dbo].[BLOG] OFF
GO
SET IDENTITY_INSERT [dbo].[DATBAN] ON 

INSERT [dbo].[DATBAN] ([datbanID], [khachhangID], [ngaydat], [giodat], [songuoi], [trangthai]) VALUES (1, 1, CAST(N'2021-06-04' AS Date), N'15:00     ', 4, 1)
INSERT [dbo].[DATBAN] ([datbanID], [khachhangID], [ngaydat], [giodat], [songuoi], [trangthai]) VALUES (2, 2, CAST(N'2021-06-09' AS Date), N'16:02     ', 5, 1)
INSERT [dbo].[DATBAN] ([datbanID], [khachhangID], [ngaydat], [giodat], [songuoi], [trangthai]) VALUES (1002, 1002, CAST(N'2021-06-10' AS Date), N'16:02     ', 7, 1)
INSERT [dbo].[DATBAN] ([datbanID], [khachhangID], [ngaydat], [giodat], [songuoi], [trangthai]) VALUES (1003, 1003, CAST(N'2021-06-11' AS Date), N'20:58     ', 10, 1)
INSERT [dbo].[DATBAN] ([datbanID], [khachhangID], [ngaydat], [giodat], [songuoi], [trangthai]) VALUES (1004, 1004, CAST(N'2021-06-12' AS Date), N'09:00     ', 6, 1)
SET IDENTITY_INSERT [dbo].[DATBAN] OFF
GO
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1, 1, 1)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1, 2, 1)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (2, 3, 1)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (2, 4, 1)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1002, 1, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1002, 2, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1002, 3, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1003, 1, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1003, 2, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1003, 3, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1004, 1, NULL)
INSERT [dbo].[DDATBAN] ([datbanID], [banID], [trangthai]) VALUES (1004, 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([khachhangID], [hoten], [sdt], [diachi], [email]) VALUES (1, N'Trần Ngọc Tiến', N'0293893124', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([khachhangID], [hoten], [sdt], [diachi], [email]) VALUES (2, N'Quách Phương Nam', N'2345678786', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([khachhangID], [hoten], [sdt], [diachi], [email]) VALUES (1002, N'Nguyễn Thành Công', N'2345675435', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([khachhangID], [hoten], [sdt], [diachi], [email]) VALUES (1003, N'Lê Văn Phiêu', N'0354678675', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([khachhangID], [hoten], [sdt], [diachi], [email]) VALUES (1004, N'Lê Học Đại', N'0354678675', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIBAN] ON 

INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (1, N'Bàn đôi', 2)
INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (2, N'Bàn 4 người', 4)
INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (3, N'Bàn 6 người', 6)
SET IDENTITY_INSERT [dbo].[LOAIBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIMONAN] ON 

INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (1, N'Bữa Sáng', N'/Content/img/cook_breakfast.png                   ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (2, N'Bữa Trưa', N'/Content/img/cook_lunch.png                       ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (3, N'Bữa Tối', N'/Content/img/cook_dinner.png                      ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (4, N'Tráng Miệng', N'/Content/img/cook_dessert.png                     ')
SET IDENTITY_INSERT [dbo].[LOAIMONAN] OFF
GO
SET IDENTITY_INSERT [dbo].[MONAN] ON 

INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (1, 1, N'Phở', 3.5, N'Một trong những món ăn truyền thống Việt Nam nổi tiếng trên toàn thế giới đó là phở. Thành phần của phở gồm bánh phở được làm từ gạo, nước dùng đậm đà vị ngọt của xương ninh nhừ và gia vị, bên trên tô phở là thịt bò hoặc gà thái mỏng cùng các loại rau thơm, gia vị như: tương, tiêu, chanh, nước mắm, ớt…', N'/Content/img/pho.jpg                              ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (2, 1, N'Bánh Trưng', 7.25, N'Ngày Tết Việt Nam sẽ không còn ý vị nếu thiếu đi chiếc bánh chưng. Bánh hình vuông tượng trưng cho mặt đất nơi chúng ta sinh sống. Trải qua nhiều thế kỷ với bao thăng trầm, biến động, chiếc bánh chưng xanh vẫn bên câu đối đỏ và là một tín hiệu quen thuộc khi Tết về.', N'/Content/img/banh-chung.jpg                       ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (3, 1, N'Cao Lầu', 11.5, N'Cao lầu là món ăn nổi tiếng và góp phần tạo nên cái hồn ẩm thực của phố cổ Hội An. Món cao lầu được cho là xuất hiện ở Hội An từ thế kỷ 17. Đi cùng năm tháng, cao lầu vẫn giữ trọn vẹn hương vị, chinh phục thực khách từ Âu sang Á. Cao lầu có sợi mì màu vàng dùng với tôm, thịt heo, các loại rau sống và chan ít nước. Món ăn này chỉ có ở Hội An, Đà Nẵng và Huế.', N'/Content/img/cao-lau.jpg                          ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (4, 2, N'Bánh Xèo', 6.5, N'Bánh xèo là món ăn vặt phổ biến ở khu vực Trung bộ, từ Nghệ An vào đến Huế. Đây là món bánh bột, cuộn bọc nhân gồm có tôm, thịt, giá đỗ... và nướng chín trong chảo ngập dầu. Vỏ bánh xèo là bột mì trộn với nghệ để tạo màu vàng bắt mắt, cùng đó là nước cốt dừa để tạo hương vị cho món ăn.', N'/Content/img/banh-xeo-275257.jpg                  ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (5, 2, N'Gà Tiên Yên', 11.75, N'Gà Tiên Yên là giống gà đồi, suốt ngày leo dốc, tìm sâu nên da vàng, thịt thơm, nước ngọt. Thịt gà Tiên Yên có thể chế biến đủ các món, vẫn không làm mất vị đặc trưng. Nhưng món ngon nhất vẫn là chế biến theo cách đơn giản nhất: luộc', N'/Content/img/ga-tien-yen-507313.jpg               ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (6, 2, N'Cơm Tấm', 16.5, N'Cơm tấm thường được ăn với 4 món chính: sườn lợn nướng, bì lợn, chả, trứng ốp la. Trên nền cơm tấm trắng đang bốc khói là màu vàng của miếng sườn nướng, màu trắng đục của những sợi bì dai mềm, miếng chả được đặt vuông vắn bên cạnh hình tròn của trứng ốp la vừa chín tới.', N'/Content/img/com-tam-507259.jpg                   ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (7, 3, N'Nem Rán', 8.25, N'Nem rán truyền thống là món cuốn, với nhân là thịt lợn băm nhuyễn, trộn chung với miến, nấm, mộc nhĩ... rồi cuộn trong bánh đa nem làm từ bột, rồi chiên giòn. Ngày nay, có nhiều món nem rán được biến tấu khác đi, trong đó có nem hải sản với nhân hải sản (tôm, cua, cá) với vỏ tẩm bột chiên giòn.', N'/Content/img/nem-rancha-gio-274165.jpg            ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (8, 3, N'Gỏi Cuốn', 12.5, N'Gỏi cuốn là món ăn phổ biến ở ca ba miền Bắc, Trung, Nam, nhưng phổ biến nhất là ở Nam Bộ. Gần như không có công thức cố định cho gỏi cuốn bởi mỗi vùng miền lại chế biến khác nhau, nhưng các thành phần chung bao gồm bánh tráng và nhân.', N'/Content/img/goi-cuon-274169.jpg                  ', 0)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (9, 3, N'Bánh Cuốn', 16, N'Trong sách An Nam chí lược cũng có ghi chú "Vào tết Hàn thực, đem bánh cuốn tặng nhau". Như vậy, bánh cuốn là một món ăn phổ biến chốn cung đình từ thời Trần và nếu như theo vua Trần Nhân Tông thì món ăn này là phong tục cũ từ tận thời An Nam truyền lại.', N'/Content/img/banh-cuon.jpg                        ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (16, 4, N'Bánh Khọt', 15, N'Nguyên liệu làm bánh khọt là bột gạo, nhưng cách pha chế phải khéo léo. Bột nhiều hơn nước bánh sẽ khô và không có độ dai, còn nước nhiều hơn bột bánh lại bị nhão, không giòn.', N'/Content/img/banh-khot.jpg                        ', 0)
SET IDENTITY_INSERT [dbo].[MONAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (1, N'Quách Phương Nam', N'0983817362', CAST(N'1999-10-03' AS Date), N'Yên Đồng, Yên Lạc, Vĩnh Phúc', N'namvgt75@gmail.com', N'namqp          ', N'admin123       ', N'administrator  ', N'/Content/img/avartar3.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (2, N'Trần Ngọc Tiến', N'0984217315', CAST(N'1999-03-12' AS Date), N'Đâu Đó, Đâu Đó, Phú Thọ', N'tientn@gmail.com', N'tientn         ', N'admin123       ', N'administrator  ', N'/Content/img/avartar2.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (3, N'Phạm Xuân Tiến', N'0923217786', CAST(N'1998-05-13' AS Date), N'Đâu Đó, Kiến Xương, Thái Bình', N'tienpx@gmail.com', N'tienpx         ', N'admin123       ', N'administrator  ', N'/Content/img/avartar1.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (4, N'Hồ Thị Vân', N'0923217786', CAST(N'1998-03-12' AS Date), N'Đâu Đó, Đâu Đó, Nghệ An', N'vanht@gmail.com', N'vanht          ', N'admin123       ', N'administrator  ', N'/Content/img/C:\fakepath\avartar4.jpg             ')
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
ALTER TABLE [dbo].[BAN]  WITH CHECK ADD  CONSTRAINT [FK_BAN_LOAIBAN] FOREIGN KEY([loaibanID])
REFERENCES [dbo].[LOAIBAN] ([loaibanID])
GO
ALTER TABLE [dbo].[BAN] CHECK CONSTRAINT [FK_BAN_LOAIBAN]
GO
ALTER TABLE [dbo].[BLOG]  WITH CHECK ADD  CONSTRAINT [FK_BLOG_NGUOIDUNG] FOREIGN KEY([nguoidungID])
REFERENCES [dbo].[NGUOIDUNG] ([nguoidungID])
GO
ALTER TABLE [dbo].[BLOG] CHECK CONSTRAINT [FK_BLOG_NGUOIDUNG]
GO
ALTER TABLE [dbo].[DATBAN]  WITH CHECK ADD  CONSTRAINT [FK_DATBAN_KHACHHANG] FOREIGN KEY([khachhangID])
REFERENCES [dbo].[KHACHHANG] ([khachhangID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DATBAN] CHECK CONSTRAINT [FK_DATBAN_KHACHHANG]
GO
ALTER TABLE [dbo].[DDATBAN]  WITH CHECK ADD  CONSTRAINT [FK_DDATBAN_BAN] FOREIGN KEY([banID])
REFERENCES [dbo].[BAN] ([banID])
GO
ALTER TABLE [dbo].[DDATBAN] CHECK CONSTRAINT [FK_DDATBAN_BAN]
GO
ALTER TABLE [dbo].[DDATBAN]  WITH CHECK ADD  CONSTRAINT [FK_DDATBAN_DATBAN] FOREIGN KEY([datbanID])
REFERENCES [dbo].[DATBAN] ([datbanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DDATBAN] CHECK CONSTRAINT [FK_DDATBAN_DATBAN]
GO
ALTER TABLE [dbo].[MONAN]  WITH CHECK ADD  CONSTRAINT [FK_MONAN_LOAIMONAN] FOREIGN KEY([loaimonanID])
REFERENCES [dbo].[LOAIMONAN] ([loaimonanID])
GO
ALTER TABLE [dbo].[MONAN] CHECK CONSTRAINT [FK_MONAN_LOAIMONAN]
GO
USE [master]
GO
ALTER DATABASE [LTTH_NhaHang] SET  READ_WRITE 
GO
