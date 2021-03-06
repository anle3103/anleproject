USE [wish_1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 14/03/2022 12:03:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 14/03/2022 12:03:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 14/03/2022 12:03:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 14/03/2022 12:03:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Minh', N'111111', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Lam', N'222222', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Cuong', N'333333', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Mai', N'444444', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Manh', N'555555', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Linh', N'666666', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Hai', N'777777', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Hanh', N'888888', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Quang', N'999999', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Hoang', N'000000', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (31, N'adam', N'123456', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'IPHONE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'SAMSUNG')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'OPPO')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'VSMART')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'IPHONE 13', N'https://cdn.tgdd.vn/Products/Images/42/250257/iphone-13-blue-1-600x600.jpg', 3000000.0000, N'IPHONE 13', N'Thiết kế iPhone 13 sang trọng và bền bỉ
iPhone 13 là chiếc điện thoại toát lên sự đẳng cấp ngay từ cái nhìn đầu tiên nhờ thiết kế sang trọng với ngôn ngữ thiết kế phẳng và chất lượng hoàn thiện tuyệt vời.

Khung nhôm cao cấp kết hợp cùng kính bảo vệ Ceramic Shield siêu cứng tạo nên chiếc điện thoại vừa thời trang, lại vô cùng bền bỉ. Khả năng chống nước chuẩn IP68 giúp bạn hoàn toàn yên tâm trước mọi nguy cơ từ nước trong quá trình sử dụng thường ngày.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'SAMSUNG GALAXY S6', N'https://cdn.nguyenkimmall.com/images/detailed/72/dien-thoai-samsung-galaxy-s6-edge-sm-g925-den.jpg', 1000000.0000, N'SAMSUNG GALAXY S6', N'Samsung Galaxy S6 được thiết kế với 2 mặt bằng mặt kính cường lực Gorilla Glass 4 cùng khung kim loại sang trọng. Các màu sắc được thể hiện rất đẹp, mặt lưng bằng kính khi bắt nắng hay ánh đèn sẽ sáng lên rất thu hút ánh nhìn.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Vsmart Active 1 & Vsmart Active 1+', N'data:image/jpeg;base64,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', 1500000.0000, N'Vsmart Active 1 & Vsmart Active 1+', N'Vsmart Active 1 sở hữu chip Snapdragon 660, RAM 4 GB, bộ nhớ trong 64 GB. Máy trang bị camera kép sau, độ phân giải 12+5 MP và camera trước 8 MP, pin 3.100 mAh.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'OPPO F3', N'https://cdn.tgdd.vn/Products/Images/42/92541/oppo-f3-15-300x300.jpg', 1800000.0000, N'OPPO F3', N'Ra mắt vào 5/2017, cấu hình OPPO F3 gồm dung lượng pin 3200mAh, màn hình 5.5", độ phân giải 1080 x 1920pixels, mật độ điểm ảnh lên đến 401ppi, camera trước 16MP + 13MP camera sau.', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'IPHONE 12', N'http://hoanganhshop.vn/upload/sanpham/12pro-blue-16050020218.jpg', 2500000.0000, N'IPHONE 12', N'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'SAMSUNG GALAXY S7', N'https://cdn.tgdd.vn/Products/Images/42/74113/samsung-galaxy-s7-16-300x300.jpg', 1400000.0000, N'SAMSUNG GALAXY S7', N'Bứt phá mọi giới hạn và luôn lắng nghe những điều bạn cần, chúng tôi đã không ngừng có những bước cải tiến mạnh mẽ để tạo ra sản phẩm tinh xảo nhất. Thiết kế thanh lịch xứng tầm cùng với chức năng đẳng cấp. Chúng tôi sẽ giới thiệu các tính năng mà bạn chưa bao giờ thấy ở điện thoại thông minh trước đây, mang lại những trải nghiệm độc đáo. Galaxy S7 và S7 edge.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Vsmart Joy 1 & Vsmart Joy 1+', N'https://cdn.tgdd.vn/Products/Images/42/196608/vsmart-joy-1-black-600x600.jpg', 1800000.0000, N'Vsmart Joy 1 & Vsmart Joy 1+', N'Vsmart Joy 1 sở hữu chip Snapdragon 660, RAM 4 GB, bộ nhớ trong 64 GB. Máy trang bị camera kép sau, độ phân giải 12+5 MP và camera trước 8 MP, pin 3.100 mAh.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'OPPO F5', N'https://cdn.tgdd.vn/Products/Images/42/141763/oppo-f5-youth-vang-hong-6001-600x600.jpg', 1900000.0000, N'OPPO F5', N'OPPO F5, chuyên gia selfie mới nổi bật với màn hình tràn cạnh thời trang và camera tích hợp trí tuệ nhân tạo AI để càng chụp càng đẹp.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'IPHONE 11', N'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-vang-200x200.jpg', 2000000.0000, N'IPHONE 11', N'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'SAMSUNG GALAXY S8', N'https://www.viettablet.com/images/thumbnails/480/516/detailed/26/samsung-galaxy-s8-cu-viettabletcom.jpg', 1600000.0000, N'SAMSUNG GALAXY S8', N'Samsung S8 sở hữu một ngoại hình sang trọng. Cụ thể sản phẩm sở hữu bộ khung kim loại chắc chắn, cạnh bên bo tròn mềm mại và màn hình được cắt giảm phần mép tối đa. Đặc biệt, tỷ lệ màn hình 18.5:9 giúp người dùng cảm nhận được nhiều hơn khi thưởng thức những bộ phim bom tấn.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'OPPO F7', N'https://cdn.nguyenkimmall.com/images/detailed/512/10036193_DIENTHOAI_OPPO_F7-DO_01.jpg', 1650000.0000, N'OPPO F7', N'Điện thoại Oppo F7 Đỏ sở hữu thiết kế màn hình tai thỏ sang trọng độc đáo, màn hình 6.23 inch kết hợp cùng độ phân giải Full HD+ mang đến cho người dùng trải nghiệm đã mắt, rộng hơn và rõ nét hơn. Diện tích màn hình của máy chiếm tới 89.09% giúp tổng thể của máy không quá lớn, người dùng vẫn có thể thoải mái cầm nắm.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'OPPO F9', N'https://cf.shopee.vn/file/d03cbd06bc21e22182b6d7324a66859c', 1850000.0000, N'OPPO F9', N'Là chiếc điện thoại OPPO mới nhất sở hữu công nghệ sạc VOOC đột phá, OPPO F9 còn được ưu ái nhiều tính năng nổi trội như thiết kế mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'IPHONE X', N'https://didongviet.vn/pub/media/catalog/product//i/p/iphone-x-mau-xam-didongviet.jpg', 1500000.0000, N'IPHONE X', N'Tương tự như trên bộ đôi iPhone 8/8 Plus thì  iPhone X  được Apple trang bị 2 tùy chọn phiên bản bộ nhớ trong là 64GB và 256GB, và dĩ nhiên mức giá bán ra cũng chênh lệch theo dung lượng ROM. Mua iPhone X 64gb cũ tại hải phòng trước tiên người dùng phải hiểu một điều rằng, giữa 2 chiếc điện thoại chỉ khác nhau về dung lượng lưu trữ lớn hay nhỏ, còn về các thông số cấu hình, trải nghiệm khi sử dụng thì hoàn toàn tương đương nhau. Chính vì vậy, việc quyết định nên mua iPhone X 64GB hay 256GB phụ thuộc vào nhu cầu của người dùng, chứ không phải với dung lượng 64GB thì máy sẽ hoạt động chậm hơn so với 256GB. ', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Vsmart Live', N'https://cellphones.com.vn/media/catalog/product/v/s/vsmart-live-_4_1__2.jpg', 2000000.0000, N'Vsmart Live', N'Vsmart Live sở hữu chip Snapdragon 660, RAM 4 GB, bộ nhớ trong 64 GB. Máy trang bị camera kép sau, độ phân giải 12+5 MP và camera trước 8 MP, pin 3.100 mAh.', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Vsmart Bee', N'https://cdn.tgdd.vn/Products/Images/42/229341/vsmart-bee-lite-600x600-600x600.jpg', 1000000.0000, N'Vsmart Bee', N'Vsmart Active Bee sở hữu chip Snapdragon 660, RAM 4 GB, bộ nhớ trong 64 GB. Máy trang bị camera kép sau, độ phân giải 12+5 MP và camera trước 8 MP, pin 3.100 mAh.', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Vsmart Joy 2+	', N'https://cdn.tgdd.vn/Products/Images/42/209555/vsmart-joy-2-plus-2gb-blue-600x600.jpg', 1200000.0000, N'Vsmart Joy 2+	', N'Vsmart Joy2+ sở hữu chip Snapdragon 660, RAM 4 GB, bộ nhớ trong 64 GB. Máy trang bị camera kép sau, độ phân giải 12+5 MP và camera trước 8 MP, pin 3.100 mAh.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'OPPO A93', N'https://cdn.tgdd.vn/Products/Images/42/234271/OPPO-A93-600x600.jpg', 1000000.0000, N'OPPO A93', N'OPPO đã tung ra OPPO A93 dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18 W.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'OPPO A95', N'https://cdn.tgdd.vn/Products/Images/42/251703/oppo-a95-4g-bac-2-600x600.jpg', 1000000.0000, N'OPPO A95', N'Cũng như dòng trước đó, hãng đã Oppo A95 tiếp tục sở hữu mặt lưng bằng chất liệu thủy tinh có độ bền cao, mặt trước được bảo vệ bằng lớp kính cường lực giúp cho bạn an tâm hơn khi có sự va chạm trong quá trình sử dụng. Với kích thước đa chiều của điện thoại 160.1 x 73.4 x 7.8 mm và trọng lượng 173 gram nhỏ nhẹ giúp cho bạn có thể cầm nắm thoải mái, chắc chắn trong quá trình sử dụng.', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
