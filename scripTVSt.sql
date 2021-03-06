USE [thuvienso]
GO
/****** Object:  Table [dbo].[danhmuc]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc](
	[madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_danhmuc] PRIMARY KEY CLUSTERED 
(
	[madanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giangvien]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giangvien](
	[magv] [varchar](10) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[gioitinh] [nchar](5) NOT NULL,
	[idkhoa] [int] NOT NULL,
 CONSTRAINT [pk_giangvien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoaBM]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoaBM](
	[idkhoa] [int] IDENTITY(1,1) NOT NULL,
	[tenkhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_khoaBM] PRIMARY KEY CLUSTERED 
(
	[idkhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhoc](
	[idmon] [int] IDENTITY(1,1) NOT NULL,
	[tenmon] [nvarchar](50) NOT NULL,
	[manganh] [int] NOT NULL,
 CONSTRAINT [pk_monhoc] PRIMARY KEY CLUSTERED 
(
	[idmon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nganhhoc]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nganhhoc](
	[manganh] [int] IDENTITY(1,1) NOT NULL,
	[tennganh] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_nganhhoc] PRIMARY KEY CLUSTERED 
(
	[manganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[masach] [int] IDENTITY(1,1) NOT NULL,
	[madanhmuc] [int] NOT NULL,
	[idmon] [int] NOT NULL,
	[tacgia] [nvarchar](50) NOT NULL,
	[tensach] [nvarchar](50) NOT NULL,
	[anh] [nvarchar](max) NULL,
	[filedata] [nvarchar](max) NOT NULL,
	[gioithieu] [nvarchar](max) NULL,
	[luottai] [int] NULL,
	[luotxem] [int] NULL,
	[diemdanhgia] [float] NULL,
	[luotdanhgia] [int] NULL,
	[magv] [varchar](10) NOT NULL,
	[ngaydang] [datetime] NOT NULL,
	[keyword] [nvarchar](50) NULL,
 CONSTRAINT [pk_sach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masinhvien] [varchar](10) NOT NULL,
	[idkhoa] [int] NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[lop] [varchar](50) NOT NULL,
	[gioitinh] [nchar](5) NOT NULL,
 CONSTRAINT [pk_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masinhvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[username] [varchar](50) NOT NULL,
	[passwords] [varchar](max) NOT NULL,
	[loaiaccount] [int] NOT NULL,
	[magv] [varchar](10) NULL,
	[masinhvien] [varchar](10) NULL,
 CONSTRAINT [pk_taikhoan] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongke]    Script Date: 5/25/2022 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongke](
	[idthongke] [int] IDENTITY(1,1) NOT NULL,
	[magv] [varchar](10) NULL,
	[masach] [int] NOT NULL,
	[masinhvien] [varchar](10) NULL,
	[ngaytai] [date] NULL,
	[ngaydoc] [date] NULL,
 CONSTRAINT [pk_thongke] PRIMARY KEY CLUSTERED 
(
	[idthongke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danhmuc] ON 

INSERT [dbo].[danhmuc] ([madanhmuc], [tendanhmuc]) VALUES (1, N'Tài liệu học tập')
INSERT [dbo].[danhmuc] ([madanhmuc], [tendanhmuc]) VALUES (2, N'Slide bài giảng')
INSERT [dbo].[danhmuc] ([madanhmuc], [tendanhmuc]) VALUES (3, N'Lưu hành nội bộ')
INSERT [dbo].[danhmuc] ([madanhmuc], [tendanhmuc]) VALUES (4, N'Luận án')
INSERT [dbo].[danhmuc] ([madanhmuc], [tendanhmuc]) VALUES (7, N'Đề cương')
SET IDENTITY_INSERT [dbo].[danhmuc] OFF
GO
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'1051071071', N'Trần Thị Dung', N'tranthidung@gmail.com', N'Nữ   ', 1)
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'1051071120', N'Nguyễn Lê Minh', N'ngleminh@gmail.com', N'Nam  ', 1)
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'1051984442', N'Dương Lưu Đào', N'dld@gmail.com', N'Nam  ', 6)
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'1071457262', N'Dương Thị Ngọc Nga', N'ngocnga@gmail.com', N'Nữ   ', 2)
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'1071459214', N'Trần Văn Lưu', N'luuluu@gmail.com', N'Nam  ', 3)
INSERT [dbo].[giangvien] ([magv], [hoten], [email], [gioitinh], [idkhoa]) VALUES (N'admin', N'admin', N'admin@gmail.com', N'Nam  ', 4)
GO
SET IDENTITY_INSERT [dbo].[khoaBM] ON 

INSERT [dbo].[khoaBM] ([idkhoa], [tenkhoa]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[khoaBM] ([idkhoa], [tenkhoa]) VALUES (2, N'Điện tử viễn thông')
INSERT [dbo].[khoaBM] ([idkhoa], [tenkhoa]) VALUES (3, N'Công trình ')
INSERT [dbo].[khoaBM] ([idkhoa], [tenkhoa]) VALUES (4, N'Khác')
INSERT [dbo].[khoaBM] ([idkhoa], [tenkhoa]) VALUES (6, N'Khoa học cơ bản')
SET IDENTITY_INSERT [dbo].[khoaBM] OFF
GO
SET IDENTITY_INSERT [dbo].[monhoc] ON 

INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (1, N'Lập trình nâng cao', 1)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (2, N'Cơ sở dữ liệu', 1)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (3, N'Cấu trúc dữ liệu và giải thuật', 1)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (4, N'Xác suất thống kê', 2)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (5, N'Giải tích', 2)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (6, N'Kinh tế vận tải biển', 3)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (7, N'Thiết kế điện công trình', 5)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (8, N'Lập trình Java', 1)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (9, N'Kỹ thuật mạch điện tử', 6)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (10, N'Kỹ thuật nhiệt', 4)
INSERT [dbo].[monhoc] ([idmon], [tenmon], [manganh]) VALUES (11, N'Lập trình hướng đối tượng', 1)
SET IDENTITY_INSERT [dbo].[monhoc] OFF
GO
SET IDENTITY_INSERT [dbo].[nganhhoc] ON 

INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (2, N'Khoa học cơ bản')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (3, N'Vận tải kinh tế')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (4, N'Cơ khí')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (5, N'Công trình')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (6, N'Điện tử')
INSERT [dbo].[nganhhoc] ([manganh], [tennganh]) VALUES (7, N'Khác')
SET IDENTITY_INSERT [dbo].[nganhhoc] OFF
GO
SET IDENTITY_INSERT [dbo].[sach] ON 

INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (1, 1, 1, N'Trương Xuân Nam', N'Lập Trình Nâng Cao', N'lap-trinh-nang-cao.png', N'lap-trinh-nang-cao.pdf', N'<p><span style="color: rgb(28, 28, 28); font-family: &quot;Open Sans&quot;; font-size: 13px; white-space: pre-wrap;">Ở môn học này, các bạn sẽ học C++ kĩ hơn một chút, xây dựng các chương trình có quy mô hơn một chút, học tập với kĩ năng giải quyết bài toán, cài đặt thuật toán, và chiến lược tổ chức chương trình. Xuyên suốt các nội dụng của môn học, bạn sẽ áp dụng vào một bài tập lớn xây dựng một phần mềm game.</span><br></p>', 1, 7, 4, NULL, N'1051071071', CAST(N'2022-05-25T21:19:52.640' AS DateTime), N'lap-trinh-nang-cao')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (2, 2, 2, N'Phạm Đức Nhiệm', N'Cơ Sở Dữ Liệu Quan Hệ', N'co-so-du-lieu-quan-he.png', N'co-so-du-lieu-quan-he.pdf', N'<p>Trong giáo trình này, tôi muốn trình bày một số kiến thức cơ bản nhất về mô hình CSDL quan hệ giúp cho học sinh có thể ứng dụng các kiến thức về CSDL vào thực tiễn, tiếp tục nghiên cứu sâu về lý thuyết CSDL cũng như các môn tin học khác, đồng thời làm tài liệu tham khảo cho các bạn đọc trong công việc nghiên cứu, giảng dạy và học tập.<br></p>', 1, 9, 4.5, NULL, N'1051071120', CAST(N'2022-05-25T21:10:20.930' AS DateTime), N'co-so-du-lieu-quan-he')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (3, 1, 3, N'Đinh Mạnh Tường', N'Cấu Trúc Dữ Liệu Và Giải Thuật', N'cau-truc-du-lieu-va-giai-thuat.png', N'cau-truc-du-lieu-va-giai-thuat.pdf', N'<p>Cuốn sách này trình bày các vấn đề cơ bản, quan trọng nhất của Cấu
trúc dữ liệu (CTDL) và thuật toán đã được đề xuất trong IEEE/ACM
computing curricula, theo quan điểm hiện đại.&nbsp;<br></p>', 2, 8, 4.7, NULL, N'1051071071', CAST(N'2022-05-25T21:10:11.933' AS DateTime), N'cau-truc-du-lieu-va-giai-thuat')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (4, 3, 4, N'Đào Hữu Hồ', N'Hướng Dẫn Giải Xác Suất Thống Kê', N'huong-dan-giai-xac-suat-thong-ke.png', N'huong-dan-giai-xac-suat-thong-ke.pdf', N'<p>Để sử dụng cuốn sách này một cách có hiệu quả, bạn đọc cần đọc kỹ phần hướng dẫn, hiểu được các ví dụ, vì đó là các bài toán mẫu, sau đó phải làm bài tập. Để sử dụng cuốn sách này một cách có hiệu quả, bạn đọc cần đọc kỹ phần hướng dẫn, hiểu được các ví dụ, vì đó là các bài toán mẫu, sau đó phải làm bài tập.<br></p>', 2, 5, 4, NULL, N'1051984442', CAST(N'2022-05-25T21:09:36.937' AS DateTime), N'huong-dan-giai-xac-suat-thong-ke')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (5, 3, 5, N'PGS. TS. Phạm Ngọc Anh', N'Giải Tích Hàm Nhiều Biến Số P1', N'giai-tich-ham-nhieu-bien-so-p1.png', N'giai-tich-ham-nhieu-bien-so-p1.pdf', N'<p>Các kiến thức và phương pháp tiếp cận của giải tích hàm nhiều biến số đã hỗ trợ hiệu quả các kiến thức nền tảng cho các môn học như vật lý, xác suất thống kê, toán kỹ thuật, toán rời rạc và các môn chuyên ngành khác.<br></p>', 1, 0, 0, NULL, N'1051984442', CAST(N'2022-05-25T21:09:27.663' AS DateTime), N'giai-tich-ham-nhieu-bien-so-p1')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (6, 3, 5, N'Phạm Ngọc Anh', N'Giải Tích Hàm Nhiều Biến Số P2', N'giai-tich-ham-nhieu-bien-so-p2.png', N'giai-tich-ham-nhieu-bien-so-p2.pdf', N'<p>Các kiến thức và phương pháp tiếp cận của giải tích hàm nhiều biến số đã hỗ trợ hiệu quả các kiến thức nền tảng cho các môn học như vật lý, xác suất thống kê, toán kỹ thuật, toán rời rạc và các môn chuyên ngành khác.<br></p>', 4, 10, 5, NULL, N'1051984442', CAST(N'2022-05-25T21:09:22.343' AS DateTime), N'giai-tich-ham-nhieu-bien-so-p2')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (7, 4, 6, N'Phạm Thị Nga', N'Kinh Tế Vận Tải Biển Hải Phòng', N'kinh-te-van-tai-bien-hai-phong.png', N'kinh-te-van-tai-bien-hai-phong.pdf', N'<p>Cảng Hải Phòng là cảng có lưu lượng hàng hóa thông qua lớn nhất ở phía Bắc Việt Nam, có hệ thống thiết bị hiện đại và cơ sở hạ tầng đầy đủ, an toàn, phù hợp với phương thức vận tải, thương mại quốc tế.<br></p>', 2, 10, 5, NULL, N'1071457262', CAST(N'2022-05-25T21:09:42.123' AS DateTime), N'kinh-te-van-tai-bien-hai-phong')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (8, 1, 7, N'Bạch Ngọc Toàn', N'Thiết Kế Điện Công Trình', N'thiet-ke-dien-cong-trinh.png', N'thiet-ke-dien-cong-trinh.pdf', N'<p><font color="#212121" face="Roboto, sans-serif" size="3">Nếu ví công trình như một cơ thể con người. Thì phần xây dựng như 1 bộ khung xương, phần nội thất kiến trúc như da thịt thì hệ thống cơ điện là “Hệ tuần hoàn” giúp công trình vận hành trơn tru và ổn định.</font><br></p>', 2, 5, 4, NULL, N'1071459214', CAST(N'2022-05-25T21:48:18.097' AS DateTime), N'thiet-ke-dien-cong-trinh')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (10, 1, 8, N'Dương Ngọc Nga', N'Lập Trình Java Chương 1', N'lap-trinh-java-chuong-1.png', N'lap-trinh-java-chuong-1.pdf', N'<p><span style="color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px; text-align: justify;">Java là một trong những ngôn ngữ bậc cao được nhiều công ty và các tổ chức trên thế giới tin dùng, Ngôn ngữ Java được thiết kế vào những năm 90s bởi tổ chức Sun Micro system hiện nay thuộc sở hữu của Oracle. Java có tính độc lập rất cao, tiện lợi, có thể dùng cho việc cross-platform, có nghĩa bạn chỉ cần viết chương trình một lần thì có thể chạy trên nhiều nền tảng khác nhau.</span><br></p>', 4, 2, 0, 0, N'1051071120', CAST(N'2022-05-25T22:34:56.927' AS DateTime), N'lap-trinh-java-chuong-1')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (11, 2, 9, N'Phạm Minh Hà', N'Kỹ Thuật Mạch Điện Tử', N'ky-thuat-mach-dien-tu.png', N'ky-thuat-mach-dien-tu.pdf', N'<p><span style="color: rgb(0, 0, 0); font-family: &quot;Roboto Condensed&quot;, Arial, Tahoma, Helvetica, Verdana;">"Kỹ thuật mạch điện tử" sẽ mang đến những kiến thức chính sau: Những khái niệm chung và cơ sở phân tích mạch điện tử, cung cấp và ổn định chế độ công tác cho các tầng dùng trazistor, sơ đồ cơ bản của tầng khuếch đại tín hiệu nhỏ dùng trazistor và mạch ghép giữa các tầng, tầng khuếch đại công suất,... Mời các bạn cùng tham khảo để nắm nội dung.</span><br></p>', 3, 0, 0, 0, N'1071459214', CAST(N'2022-05-25T22:38:35.863' AS DateTime), N'ky-thuat-mach-dien-tu')
INSERT [dbo].[sach] ([masach], [madanhmuc], [idmon], [tacgia], [tensach], [anh], [filedata], [gioithieu], [luottai], [luotxem], [diemdanhgia], [luotdanhgia], [magv], [ngaydang], [keyword]) VALUES (12, 3, 10, N'Trần Văn Lịch', N'Kỹ Thuật Nhiệt', N'ky-thuat-nhiet.png', N'ky-thuat-nhiet.pdf', N'<p><span style="color: rgb(0, 0, 0); font-family: &quot;Roboto Condensed&quot;, Arial, Tahoma, Helvetica, Verdana;">Giáo trình Kỹ thuật nhiệt nhằm cung cấp cho học sinh những kiến thức về các quá trình nhiệt động cơ bản của môi chất nói chung và không khí ẩm nói riêng, các chu trình cơ bản ứng dụng trong máy lạnh và điều hòa không khí, các phương pháp tính toán truyền nhiệt của thiết bị.</span><br></p>', 3, 2, 0, 0, N'1071457262', CAST(N'2022-05-25T22:41:19.683' AS DateTime), N'ky-thuat-nhiet')
SET IDENTITY_INSERT [dbo].[sach] OFF
GO
INSERT [dbo].[sinhvien] ([masinhvien], [idkhoa], [hoten], [lop], [gioitinh]) VALUES (N'6051071071', 1, N'Trần Huỳnh Lưu', N'CNTTK60', N'Nam  ')
INSERT [dbo].[sinhvien] ([masinhvien], [idkhoa], [hoten], [lop], [gioitinh]) VALUES (N'6051071121', 1, N'Nguyễn Thành Tiến', N'CNTTK60', N'Nam  ')
INSERT [dbo].[sinhvien] ([masinhvien], [idkhoa], [hoten], [lop], [gioitinh]) VALUES (N'6051452555', 6, N'Trần Thị Thu Trang', N'CNTTK60', N'Nữ   ')
INSERT [dbo].[sinhvien] ([masinhvien], [idkhoa], [hoten], [lop], [gioitinh]) VALUES (N'6151071001', 2, N'Nguyễn Hữu An', N'KTDTVTK61', N'Nam  ')
INSERT [dbo].[sinhvien] ([masinhvien], [idkhoa], [hoten], [lop], [gioitinh]) VALUES (N'6251072001', 3, N'Đặng Ngọc Chung', N'KTK62', N'Nam  ')
GO
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'1051071071', N'12345', 1, N'1051071071', NULL)
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'1051071120', N'12345', 1, N'1051071120', NULL)
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'1051984442', N'12345', 1, N'1051984442', NULL)
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'1071457262', N'12345', 1, N'1071457262', NULL)
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'1071459214', N'12345', 1, N'1071459214', NULL)
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'6051071071', N'12345', 2, NULL, N'6051071071')
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'6051071121', N'12345', 2, NULL, N'6051071121')
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'6051452555', N'12345', 2, NULL, N'6051452555')
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'6151071001', N'12345', 2, NULL, N'6151071001')
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'6251072001', N'12345', 2, NULL, N'6251072001')
INSERT [dbo].[taikhoan] ([username], [passwords], [loaiaccount], [magv], [masinhvien]) VALUES (N'admin', N'admin', 0, NULL, NULL)
GO
ALTER TABLE [dbo].[giangvien]  WITH CHECK ADD  CONSTRAINT [fk_giangvien] FOREIGN KEY([idkhoa])
REFERENCES [dbo].[khoaBM] ([idkhoa])
GO
ALTER TABLE [dbo].[giangvien] CHECK CONSTRAINT [fk_giangvien]
GO
ALTER TABLE [dbo].[monhoc]  WITH CHECK ADD  CONSTRAINT [fk_monhoc] FOREIGN KEY([manganh])
REFERENCES [dbo].[nganhhoc] ([manganh])
GO
ALTER TABLE [dbo].[monhoc] CHECK CONSTRAINT [fk_monhoc]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sach_danhmuc] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[danhmuc] ([madanhmuc])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sach_danhmuc]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sach_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sach_giangvien]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sach_monhoc] FOREIGN KEY([idmon])
REFERENCES [dbo].[monhoc] ([idmon])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sach_monhoc]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [fk_sinhvien] FOREIGN KEY([idkhoa])
REFERENCES [dbo].[khoaBM] ([idkhoa])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [fk_sinhvien]
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[taikhoan] CHECK CONSTRAINT [fk_taikhoan_giangvien]
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_sinhvien] FOREIGN KEY([masinhvien])
REFERENCES [dbo].[sinhvien] ([masinhvien])
GO
ALTER TABLE [dbo].[taikhoan] CHECK CONSTRAINT [fk_taikhoan_sinhvien]
GO
ALTER TABLE [dbo].[thongke]  WITH CHECK ADD  CONSTRAINT [fk_thongke_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[thongke] CHECK CONSTRAINT [fk_thongke_giangvien]
GO
ALTER TABLE [dbo].[thongke]  WITH CHECK ADD  CONSTRAINT [fk_thongke_sach] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[thongke] CHECK CONSTRAINT [fk_thongke_sach]
GO
ALTER TABLE [dbo].[thongke]  WITH CHECK ADD  CONSTRAINT [fk_thongke_sinhvien] FOREIGN KEY([masinhvien])
REFERENCES [dbo].[sinhvien] ([masinhvien])
GO
ALTER TABLE [dbo].[thongke] CHECK CONSTRAINT [fk_thongke_sinhvien]
GO
