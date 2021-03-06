USE [ERP-Recruiting]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCategories]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_JobCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDescriptions]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDescriptions](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[RequestJob] [nvarchar](max) NOT NULL,
	[Benefit] [nvarchar](max) NOT NULL,
	[Endow] [nvarchar](max) NOT NULL,
	[SkillId] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[OfferFrom] [int] NOT NULL,
	[OfferTo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[TimeStart] [datetime2](7) NOT NULL,
	[TimeEnd] [datetime2](7) NOT NULL,
	[Quatity] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_JobDescriptions] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[ProcessId] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Process] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Providers]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Providers](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [nvarchar](50) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Content] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201125182205_version_1.0.0', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201127025437_version_1.0.1', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201129090056_version_1.0.2', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201217154833_version_1.0.3', N'3.1.7')
GO
SET IDENTITY_INSERT [dbo].[JobCategories] ON 

INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (1, 1, CAST(N'2020-11-26T09:54:53.060' AS DateTime), NULL, NULL, 0, N'BackEnd', N'Phát triển Web phía BackEnd')
INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (2, 1, CAST(N'2020-11-26T09:55:12.733' AS DateTime), NULL, NULL, 0, N'FrontEnd', N'Phát triển Web phía FrontEnd')
INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (3, 1, CAST(N'2020-11-26T09:55:40.833' AS DateTime), NULL, NULL, 0, N'FullStack', N'Tham gia xây dựng và hoàn thiện cả BackEnd và FrontEnd')
INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (4, 1, CAST(N'2020-11-26T09:56:04.407' AS DateTime), NULL, NULL, 0, N'TechLead', N'Nghiên cứu và đưa ra giải pháp công nghệ cho dự án')
INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (5, 1, CAST(N'2020-11-26T09:56:42.567' AS DateTime), NULL, NULL, 0, N'Product Manager', N'Quản lí tí độ dự án')
INSERT [dbo].[JobCategories] ([CategoryId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Description]) VALUES (6, 1, CAST(N'2020-11-26T09:57:10.680' AS DateTime), NULL, NULL, 0, N'Solution Architect', N'Đưa ra giải pháp phần mềm cho hệ thống')
SET IDENTITY_INSERT [dbo].[JobCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[JobDescriptions] ON 

INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (1, 1, CAST(N'2020-11-26T10:02:27.977' AS DateTime), CAST(N'2020-12-04T09:31:17.013' AS DateTime), 1, 0, N'Backend Developer (NodeJS, JavaScript)', N'<p>L&agrave; một&nbsp;<strong>Back-End Developer</strong>, bạn được trao tr&aacute;ch nhiệm lập tr&igrave;nh t&iacute;nh năng website v&agrave; mobile web. Sản phẩm bạn l&agrave;m ra cần phải chạy đ&uacute;ng nghiệp vụ v&agrave; tốc độ xử l&yacute; cũng phải tối ưu cho lượng người d&ugrave;ng lớn</p>
', N'<p><strong>BẰNG CẤP/CHỨNG CHỈ</strong></p>

<ul>
	<li>Bằng cấp v&agrave; chứng chỉ kh&ocirc;ng chứng minh bạn giỏi, nhưng &iacute;t nhất nếu bạn &iacute;t nhất ch&uacute;ng thể hiện bạn c&oacute; định hướng ph&aacute;t triển sự nghiệp:
	<ul>
		<li>Tốt nghiệp chuy&ecirc;n ng&agrave;nh C&ocirc;ng Nghệ Phần Mềm hoặc tương đương l&agrave; điểm cộng</li>
		<li>C&oacute; bằng cấp hoặc chứng chỉ(online/offline) của c&aacute;c kh&oacute;a học lập tr&igrave;nh giao diện người d&ugrave;ng l&agrave; điểm cộng</li>
	</ul>
	</li>
</ul>

<p><strong>KỸ NĂNG &amp; KINH NGHIỆM</strong></p>

<p>KINH NGHIỆM</p>

<ul>
	<li>C&oacute; &iacute;t nhất 02+ năm l&agrave;m việc (to&agrave;n thời gian hoặc b&aacute;n thời gian) với vai tr&ograve; l&agrave; Back-end Developer (NodeJS với Express JS hoặc framework tương tự), trực tiếp tham gia lập tr&igrave;nh sản phẩm c&ocirc;ng nghệ bao gồm website &amp; mobile(điểm cộng nếu c&oacute;), backend v&agrave; RESTful APIs</li>
	<li>C&oacute; sản phẩm, demo trực tiếp hoặc gửi source code mẫu để thể hiện kinh nghiệm l&agrave;m việc l&agrave; bắt buộc</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc trong đội nh&oacute;m &aacute;p dụng quy tr&igrave;nh Agile/Scrum v&agrave; quy tr&igrave;nh thiết kế lặp (iterative design process) l&agrave; điểm cộng</li>
	<li>C&oacute; kinh nghiệm sử dụng JIRA, Zendesk, Trello, Asana l&agrave; điểm cộng</li>
</ul>

<p>KỸ NĂNG</p>

<p>Ch&uacute;ng t&ocirc;i rất quan t&acirc;m nếu bạn c&oacute; những kỹ năng b&ecirc;n dưới:</p>

<ul>
	<li>C&oacute; kỹ năng lập tr&igrave;nh NodeJS theo ES6</li>
	<li>C&oacute; kỹ năng &amp; kinh nghiệm l&agrave;m việc với một framework tương đương Express JS l&agrave; điều bắt buộc</li>
	<li>C&oacute; kinh nghiệm v&agrave; kỹ năng l&agrave;m việc với c&aacute;c hệ cơ sở dữ liệu MongoDB, MySQL,PostgreSQL</li>
	<li>C&oacute; kỹ năng lập tr&igrave;nh hệ thống backend (CRUD) v&agrave; RESTful API</li>
	<li>C&oacute; kỹ năng lập tr&igrave;nh HTML5 v&agrave; CSS3 cơ bản</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc với ReactJS, Typescript, NPM, Webpack, Gulp, Composer l&agrave; điểm cộng</li>
	<li>C&oacute; kỹ năng sử dụng phần mềm Git v&agrave; quy tr&igrave;nh Git Flow</li>
	<li>C&oacute; tư duy phản biện &amp; ph&acirc;n t&iacute;ch vấn đề tốt</li>
	<li>C&oacute; kỹ năng l&agrave;m việc nh&oacute;m v&agrave; kỹ năng l&agrave;m việc độc lập khi cần thiết</li>
</ul>
', N'<ul>
	<li>Cấp Macbook Pro 13&#39; cấu h&igrave;nh cao nhất cho c&aacute;c vị tr&iacute; lập tr&igrave;nh, m&aacute;y Dell cấu h&igrave;nh cao cho c&aacute;c vị tr&iacute; c&ograve;n lại</li>
	<li>Cơ sở hạ tầng v&agrave; khu vực l&agrave;m việc thoải m&aacute;i cho mọi khoảnh khắc: lập tr&igrave;nh, đ&agrave;o tạo, trao đổi, thư giản v&agrave; hoạt động ngoại kh&oacute;a.</li>
	<li>Hạ tầng hỗ trợ c&aacute;c c&ocirc;ng t&aacute;c nghiệp vụ (Dev, R&amp;D, Staging, Production) theo hướng on-premise v&agrave; Cloud</li>
	<li>M&ocirc;i trường cộng t&aacute;c với đội ngũ trẻ, năng động v&agrave; hướng kết quả</li>
	<li>Cơ chế lương thưởng hấp dẫn v&agrave; tạo động lực để c&aacute;c bạn y&ecirc;n t&acirc;m cống hiến v&agrave; s&aacute;ng tạo</li>
	<li>Chương tr&igrave;nh đ&agrave;o tạo, chia sẽ kiến thức v&agrave; hỗ trợ n&acirc;ng cao năng lực, kiến thức, kĩ năng mềm</li>
	<li>Cơ chế quản l&yacute; v&agrave; trao quyền linh hoạt</li>
</ul>
', N'<ul>
	<li>Macbook Pro 13&#39; cho vị tr&iacute; Dev</li>
	<li>M&ocirc;i trường trẻ, năng động</li>
	<li>Cơ chế lương thưởng hấp dẫn</li>
</ul>
', N'Angular,AngularJs,ASP.NET', 1, 1000, 1200, 0, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-26T00:00:00.0000000' AS DateTime2), 8, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (2, 1, CAST(N'2020-11-26T10:04:04.073' AS DateTime), NULL, NULL, 0, N'Developer (ReactJS, NodeJS, JavaScript)', N'<p>- Tham gia ph&acirc;n t&iacute;ch, thiết kế v&agrave; ph&aacute;t triển sản phẩm sử dụng ReactJS, NodeJS</p>

<p>- L&agrave;m việc theo sự ph&acirc;n c&ocirc;ng của Trưởng nh&oacute;m/Quản l&yacute; dự &aacute;n, phối hợp giữa c&aacute;c nh&oacute;m để ph&aacute;t triển sản phẩm.</p>

<p>- Training c&aacute;c kiến thức m&agrave; m&igrave;nh đ&atilde; l&agrave;m hoặc đ&atilde; t&igrave;m hiểu cho c&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c trong team khi được y&ecirc;u cầu.</p>

<p>- Phối hợp với c&aacute;c team kh&aacute;c để triển khai dự &aacute;n&nbsp;</p>
', N'<p>- C&oacute; kinh nghiệm l&agrave;m việc ReactJs, NodeJs, Js</p>

<p>- Đọc hiểu t&agrave;i liệu tiếng anh</p>

<p>- L&agrave;m fulltime</p>

<p>- Nhanh nhẹn, h&ograve;a đồng, khả năng research v&agrave; tự học tốt, tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc.</p>
', N'<p>- Hưởng lương th&aacute;ng thứ 13. Du lịch 1 năm 1 lần.<br />
- L&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp c&oacute; nhiều cơ hội thăng tiến.</p>

<p>- Cung cấp trang thiết bị đầy đủ để phục vụ c&ocirc;ng việc.</p>

<p>- Được đ&oacute;ng BHXH, BHYT, BHTN.</p>

<p>- Được hưởng c&aacute;c ch&iacute;nh s&aacute;ch ph&uacute;c lợi theo quy định của c&ocirc;ng ty.</p>

<p>- Được đ&agrave;o tạo, n&acirc;ng cao nghiệp vụ thường xuy&ecirc;n..</p>
', N'<ul>
	<li>Macbook Pro 13&#39; cho vị tr&iacute; Dev</li>
	<li>M&ocirc;i trường trẻ, năng động</li>
	<li>Cơ chế lương thưởng hấp dẫn</li>
</ul>
', N'Angular,GoLang,Jquery', 3, 2500, 3000, 0, CAST(N'2020-11-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-04T00:00:00.0000000' AS DateTime2), 12, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (3, 1, CAST(N'2020-11-26T10:05:33.013' AS DateTime), NULL, NULL, 0, N'Backend Dev (NodeJS, JavaScript, SQL)', N'<p>L&agrave; một&nbsp;<strong>Back-End Developer</strong>, bạn được trao tr&aacute;ch nhiệm lập tr&igrave;nh t&iacute;nh năng website v&agrave; mobile web. Sản phẩm bạn l&agrave;m ra cần phải chạy đ&uacute;ng nghiệp vụ v&agrave; tốc độ xử l&yacute; cũng phải tối ưu cho lượng người d&ugrave;ng lớn</p>
', N'<p><strong>BẰNG CẤP/CHỨNG CHỈ</strong></p>

<ul>
	<li>Bằng cấp v&agrave; chứng chỉ kh&ocirc;ng chứng minh bạn giỏi, nhưng &iacute;t nhất nếu bạn &iacute;t nhất ch&uacute;ng thể hiện bạn c&oacute; định hướng ph&aacute;t triển sự nghiệp:
	<ul>
		<li>Tốt nghiệp chuy&ecirc;n ng&agrave;nh C&ocirc;ng Nghệ Phần Mềm hoặc tương đương l&agrave; điểm cộng</li>
		<li>C&oacute; bằng cấp hoặc chứng chỉ(online/offline) của c&aacute;c kh&oacute;a học lập tr&igrave;nh giao diện người d&ugrave;ng l&agrave; điểm cộng</li>
	</ul>
	</li>
</ul>

<p><strong>KỸ NĂNG &amp; KINH NGHIỆM</strong></p>

<p>KINH NGHIỆM</p>

<ul>
	<li>C&oacute; &iacute;t nhất 02+ năm l&agrave;m việc (to&agrave;n thời gian hoặc b&aacute;n thời gian) với vai tr&ograve; l&agrave; Back-end Developer (NodeJS với Express JS hoặc framework tương tự), trực tiếp tham gia lập tr&igrave;nh sản phẩm c&ocirc;ng nghệ bao gồm website &amp; mobile(điểm cộng nếu c&oacute;), backend v&agrave; RESTful APIs</li>
	<li>C&oacute; sản phẩm, demo trực tiếp hoặc gửi source code mẫu để thể hiện kinh nghiệm l&agrave;m việc l&agrave; bắt buộc</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc trong đội nh&oacute;m &aacute;p dụng quy tr&igrave;nh Agile/Scrum v&agrave; quy tr&igrave;nh thiết kế lặp (iterative design process) l&agrave; điểm cộng</li>
	<li>C&oacute; kinh nghiệm sử dụng JIRA, Zendesk, Trello, Asana l&agrave; điểm cộng</li>
</ul>

<p>KỸ NĂNG</p>

<p>Ch&uacute;ng t&ocirc;i rất quan t&acirc;m nếu bạn c&oacute; những kỹ năng b&ecirc;n dưới:</p>

<ul>
	<li>C&oacute; kỹ năng lập tr&igrave;nh NodeJS theo ES6</li>
	<li>C&oacute; kỹ năng &amp; kinh nghiệm l&agrave;m việc với một framework tương đương Express JS l&agrave; điều bắt buộc</li>
	<li>C&oacute; kinh nghiệm v&agrave; kỹ năng l&agrave;m việc với c&aacute;c hệ cơ sở dữ liệu MongoDB, MySQL,PostgreSQL</li>
	<li>C&oacute; kỹ năng lập tr&igrave;nh hệ thống backend (CRUD) v&agrave; RESTful API</li>
	<li>C&oacute; kỹ năng lập tr&igrave;nh HTML5 v&agrave; CSS3 cơ bản</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc với ReactJS, Typescript, NPM, Webpack, Gulp, Composer l&agrave; điểm cộng</li>
	<li>C&oacute; kỹ năng sử dụng phần mềm Git v&agrave; quy tr&igrave;nh Git Flow</li>
	<li>C&oacute; tư duy phản biện &amp; ph&acirc;n t&iacute;ch vấn đề tốt</li>
	<li>C&oacute; kỹ năng l&agrave;m việc nh&oacute;m v&agrave; kỹ năng l&agrave;m việc độc lập khi cần thiết</li>
</ul>
', N'<ul>
	<li>Cấp Macbook Pro 13&#39; cấu h&igrave;nh cao nhất cho c&aacute;c vị tr&iacute; lập tr&igrave;nh, m&aacute;y Dell cấu h&igrave;nh cao cho c&aacute;c vị tr&iacute; c&ograve;n lại</li>
	<li>Cơ sở hạ tầng v&agrave; khu vực l&agrave;m việc thoải m&aacute;i cho mọi khoảnh khắc: lập tr&igrave;nh, đ&agrave;o tạo, trao đổi, thư giản v&agrave; hoạt động ngoại kh&oacute;a.</li>
	<li>Hạ tầng hỗ trợ c&aacute;c c&ocirc;ng t&aacute;c nghiệp vụ (Dev, R&amp;D, Staging, Production) theo hướng on-premise v&agrave; Cloud</li>
	<li>M&ocirc;i trường cộng t&aacute;c với đội ngũ trẻ, năng động v&agrave; hướng kết quả</li>
	<li>Cơ chế lương thưởng hấp dẫn v&agrave; tạo động lực để c&aacute;c bạn y&ecirc;n t&acirc;m cống hiến v&agrave; s&aacute;ng tạo</li>
	<li>Chương tr&igrave;nh đ&agrave;o tạo, chia sẽ kiến thức v&agrave; hỗ trợ n&acirc;ng cao năng lực, kiến thức, kĩ năng mềm</li>
	<li>Cơ chế quản l&yacute; v&agrave; trao quyền linh hoạt</li>
</ul>
', N'<ul>
	<li>Macbook Pro 13&#39; cho vị tr&iacute; Dev</li>
	<li>M&ocirc;i trường trẻ, năng động</li>
	<li>Cơ chế lương thưởng hấp dẫn</li>
</ul>
', N'Angular,ASP.NET,ReactJs', 3, 2000, 2400, 0, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-18T00:00:00.0000000' AS DateTime2), 10, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (4, 1, CAST(N'2020-11-26T10:08:12.940' AS DateTime), NULL, NULL, 0, N'NodeJS Developers (NoSQL, JavaScript)', N'<ul>
	<li>Gia nhập v&agrave;o đội ngũ ph&aacute;t triển ứng dụng Core Banking</li>
	<li>L&agrave; một Chuy&ecirc;n Vi&ecirc;n Ph&aacute;t Triển ứng dụng Ng&acirc;n H&agrave;ng L&otilde;i thiết kế v&agrave; ph&aacute;t triển ứng dụng back-end APIs tạo ra sản phẩm ứng dụng chất lượng cao, c&oacute; khả năng xử l&yacute; h&agrave;ng triệu giao dịch mỗi ng&agrave;y. Tận dụng c&aacute;c thư viện m&atilde; nguồn mở hoặc thương mại c&oacute; sẵn (c&oacute; license) để giảm thiểu thời gian ph&aacute;t triển ứng dụng.</li>
	<li>Giữ cho code lập tr&igrave;nh lu&ocirc;n sạch sẽ v&agrave; dễ chỉnh sửa</li>
	<li>Tạo v&agrave; chỉnh sửa c&aacute;c t&agrave;i liệu kỹ thuật</li>
	<li>Chủ động cải tiến t&iacute;nh năng, chất lượng sản phẩm</li>
	<li>Chủ động trong c&ocirc;ng việc, l&agrave;m việc trong m&ocirc;i trường l&agrave;m việc nhanh Agile/Scrum</li>
	<li>Cộng t&aacute;c với c&aacute;c nh&oacute;m kh&aacute;c để t&iacute;ch hợp sản phẩm</li>
	<li>&Aacute;p dụng Docker, Google Kubernetes, GitLab để triển khai ứng dụng</li>
	<li>Lập tr&igrave;nh theo phương ph&aacute;p hiện đại qua RESTFul API, t&iacute;ch hợp đa chiều v&agrave;o hệ sinh th&aacute;i c&aacute;c phần mềm đa dạng của ng&acirc;n h&agrave;ng.</li>
</ul>
', N'<p><strong>Y&ecirc;u cầu c&ocirc;ng việc:</strong></p>

<ul>
	<li>C&oacute; tối thiểu 02+ năm kinh nghiệm tham gia ph&aacute;t triển ứng dụng phần mềm.</li>
	<li>C&oacute; nhiều kinh nghiệm ph&aacute;t triển RESTFul API sử dụng ng&ocirc;n ngữ&nbsp;<em><strong>NodeJS</strong></em></li>
	<li>C&oacute; kinh nghiệm về Micro-Services, SOA, OOP, Design Pattern, lập tr&igrave;nh ứng dụng đa luồng / ứng dụng xử l&yacute; đồng thời, thiết kế kiến tr&uacute;c dữ liệu ph&acirc;n t&aacute;n, c&aacute;c thuật to&aacute;n.</li>
	<li>C&oacute; kinh nghiệm trong việc thiết kế v&agrave; ph&aacute;t triển c&aacute;c BackEnd APIs v&agrave; Services tr&ecirc;n c&aacute;c cơ sở dữ liệu như PostgreSQL hoặc NoSQL như Couchbase, Elasticsearch, MongoDB. Thiết kế cơ sở dữ liệu đ&aacute;p ứng cho y&ecirc;u cầu hiệu suất cao v&agrave; khả năng mở rộng.</li>
	<li>C&oacute; kinh nghiệm với một trong c&aacute;c loại Message Queuing như RabbitMQ, ActiveMQ, Oracle Advance Queue, IBM Message Queue, Apache Kafka, Redis</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc với Gitlab, Github, Kubernetes, Docker</li>
	<li>Kiến thức về quy tr&igrave;nh ph&aacute;t triển phần mềm v&agrave; quản l&yacute; dự &aacute;n triển khai phần mềm</li>
	<li>C&oacute; kiến thức về Cloud l&agrave; một lợi thế v&iacute; dụ như AWS, AZURE</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc trong m&ocirc; h&igrave;nh l&agrave;m việc nhanh Agile/Scrum</li>
	<li>C&oacute; kiến thức về Unit Test, TDD</li>
	<li>C&oacute; khả năng giao tiếp v&agrave; giải quyết t&igrave;nh huống tốt.</li>
	<li>Đọc hiểu c&aacute;c t&agrave;i liệu y&ecirc;u cầu nghiệp vụ, đặc tả hệ thống, c&aacute;c t&agrave;i liệu dự &aacute;n li&ecirc;n quan.</li>
	<li>Chủ động, s&aacute;ng tạo, nhiệt t&igrave;nh, tr&aacute;ch nhiệm trong c&ocirc;ng việc, c&oacute; tư duy logic tốt.</li>
	<li>Kỹ năng đọc/viết t&agrave;i liệu kỹ thuật bằng tiếng Anh</li>
</ul>

<p><strong>Tr&igrave;nh độ học vấn:</strong></p>

<ul>
	<li>Tốt nghiệp đại học c&aacute;c ng&agrave;nh li&ecirc;n quan đến C&ocirc;ng nghệ th&ocirc;ng tin</li>
</ul>

<p><strong>Thời gian l&agrave;m việc:</strong></p>

<ul>
	<li>Thứ 2 - Thứ 6 | 9:00 - 18:00 hằng ng&agrave;y</li>
</ul>
', N'<ul>
	<li>Thu nhập hấp dẫn</li>
	<li>Lương th&aacute;ng thứ 13</li>
	<li>Lương mềm theo qu&yacute;</li>
	<li>Cơ hội mua h&agrave;ng IT (laptop, PC, linh phụ kiện...) gi&aacute; ưu đ&atilde;i cho nh&acirc;n vi&ecirc;n</li>
	<li>M&ocirc;i trường l&agrave;m việc năng động, hiện đại, t&ocirc;n trọng c&aacute; nh&acirc;n;</li>
	<li>Được đ&agrave;o tạo để n&acirc;ng cao năng lực v&agrave; nghiệp vụ;</li>
	<li>C&oacute; cơ hội thăng tiến trong Tập đo&agrave;n CNTT lớn nhất Việt Nam;</li>
	<li>Được hưởng đầy đủ chế độ lao động theo Quy định nh&agrave; nước.</li>
	<li>Được hưởng chế độ bảo hiểm FPT Care v&agrave; c&aacute;c đ&atilde;i ngộ kh&aacute;c của c&ocirc;ng ty.</li>
</ul>
', N'<ul>
	<li>Th&aacute;ng lương 13</li>
	<li>M&ocirc;i trường trẻ, năng động</li>
	<li>Cơ hội mua h&agrave;ng IT gi&aacute; tốt</li>
</ul>
', N'Angular,GoLang,ReactJs', 2, 1800, 2200, 0, CAST(N'2020-11-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), 5, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (5, 1, CAST(N'2020-11-26T10:09:31.227' AS DateTime), NULL, NULL, 0, N'PHP Dev(JavaScript, MySQL)', N'<ul>
	<li>Ph&aacute;t triển, maintain c&aacute;c ứng dụng web tr&ecirc;n nền PHP</li>
	<li>Lập tr&igrave;nh c&aacute;c module t&iacute;nh năng theo bản ph&acirc;n t&iacute;ch thiết kế</li>
	<li>Tham gia x&acirc;y dựng c&aacute;c giải ph&aacute;p, viết c&aacute;c phần mềm theo y&ecirc;u cầu của c&ocirc;ng ty</li>
</ul>
', N'<ul>
	<li>Th&agrave;nh thạo ng&ocirc;n ngữ lập tr&igrave;nh PHP, c&oacute; kinh nghiệm một trong c&aacute;c framework: CakePHP, Zend, CodeIgniter, Laravel</li>
	<li>Th&agrave;nh thạo HTML/Javascript/jQuery/CSS/AJAX.</li>
	<li>Th&agrave;nh thạo &iacute;t nhất 1 library/framework để ph&aacute;t triển front-end: Bootstrap, Angular2, VueJS, ReactJS,v.v...</li>
	<li>Th&agrave;nh thạo việc x&acirc;y dựng v&agrave; sử dụng web service (XML, JSON)</li>
	<li>Biết Unit testing c&aacute;c sản phẩm do m&igrave;nh l&agrave;m ra</li>
	<li>C&oacute; kinh nghiệm sử dụng &iacute;t nhất 1 hệ quản trị cơ sở dữ liệu MySQL, Postgresql, Oracle, Microsoft SQL Server</li>
</ul>
', N'<ul>
	<li>Thưởng lương th&aacute;ng 13 v&agrave; theo dự &aacute;n</li>
	<li>Review lương h&agrave;ng năm</li>
	<li>Bảo hiểm x&atilde; hội, bảo hiểm y tế, bảo hiểm thất nghiệp theo luật bảo hiểm.</li>
	<li>Tham gia lớp học tiếng Nhật, đ&agrave;o tạo chuy&ecirc;n m&ocirc;n do c&ocirc;ng ty tổ chức</li>
	<li>Tham gia hoạt động Teambuilding v&agrave; du lịch h&agrave;ng năm</li>
	<li>Trợ cấp chứng chỉ IT, chứng chỉ tiếng Nhật, trợ cấp tham gia hội thảo</li>
	<li>Tự do ăn mặc thoải m&aacute;i, kh&ocirc;ng g&ograve; b&oacute;</li>
	<li>Happy time ăn uống 2 lần 1 tuần</li>
	<li>Kho truyện tranh v&agrave; s&aacute;ch tiếng Nhật free</li>
	<li>Đồng nghiệp trẻ trung, năng động, th&acirc;n thiện, ho&agrave; đồng</li>
</ul>
', N'<ul>
	<li>Ứng vi&ecirc;n ưu t&uacute; sẽ được nhận full th&aacute;ng lương 13</li>
	<li>C&ocirc;ng ty starup với nhiều cơ hội thử th&aacute;ch</li>
	<li>M&ocirc;i trường th&acirc;n thiện, y&ecirc;u thương</li>
</ul>
', N'Angular,Laravel,PHP', 3, 1500, 2000, 0, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), 8, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (6, 1, CAST(N'2020-11-26T10:10:23.733' AS DateTime), NULL, NULL, 0, N'Junior Front-End (JavaScript, HTML, CSS)', N'<p>Ch&uacute;ng t&ocirc;i đang t&igrave;m kiếm lập tr&igrave;nh vi&ecirc;n c&oacute; thể tham gia x&acirc;y dựng c&aacute;c website nội bộ cho c&ocirc;ng ty. Bạn c&oacute; cơ hội l&agrave;m việc tr&ecirc;n 1 nền tảng mới dựa tr&ecirc;n Javacript từ H&agrave;n Quốc. Tr&aacute;ch nhiệm c&ocirc;ng việc bao gồm thực hiện c&ocirc;ng việc được giao từ quản l&yacute;, y&ecirc;u cầu nội bộ, x&acirc;y dựng front end, tạo procedure,..</p>
', N'<p><strong>Y&ecirc;u cầu bắt buộc:</strong></p>

<ul>
	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin hoặc c&aacute;c chuy&ecirc;n ng&agrave;nh li&ecirc;n quan.</li>
	<li>C&oacute; &iacute;t nhất 1 năm kinh nghiệm l&agrave;m việc thực tế với Javascript</li>
	<li>Sử dụng HTML,CSS hiệu quả</li>
	<li>C&oacute; &iacute;t nhất 1 năm kinh nghiệm với Oracle/MySQL/Microsoft SQL</li>
</ul>

<p><strong>Nice to have:</strong></p>

<ul>
	<li>C&oacute; kinh nghiệm với JAVA</li>
	<li>C&oacute; kinh nghiệm lập tr&igrave;nh front-end/full stack</li>
	<li>C&oacute; kinh nnghiệm với NEXACRO, Xplatform</li>
	<li>Cẩn thận, gọn gang v&agrave; tự học hỏi nghi&ecirc;n cứu</li>
	<li>L&agrave;m việc nh&oacute;m tốt, kh&ocirc;ng ngại tr&igrave;nh b&agrave;y g&oacute;p &yacute; v&agrave; tiếp nhận g&oacute;p &yacute; với đồng nghiệp,&hellip;</li>
</ul>
', N'<p><strong>Đ&atilde;i ngộ (lương, thưởng, review lương):</strong></p>

<ul>
	<li>K&yacute; Hợp đồng lao động, đ&oacute;ng bảo hiểm&nbsp;đầy đủ, nghỉ 12 ng&agrave;y ph&eacute;p năm, c&aacute;c ng&agrave;y Lễ, Tết theo quy định Nh&agrave; nước. (được trả tiền theo ng&agrave;y c&ocirc;ng nếu kh&ocirc;ng nghỉ hết ph&eacute;p)</li>
	<li>X&eacute;t thưởng v&agrave; x&eacute;t tăng lương định kỳ</li>
</ul>

<p><strong>Văn ho&aacute; m&ocirc;i trường l&agrave;m việc:</strong></p>

<ul>
	<li>L&agrave;m việc&nbsp;5,5 ng&agrave;y/tuần, được&nbsp;nghỉ chiều thứ 7, CN</li>
	<li>M&ocirc;i trường l&agrave;m việc năng động, cấp tr&ecirc;n t&acirc;m l&yacute;.</li>
	<li>Đồng nghiệp trẻ trung, đo&agrave;n kết, sẵn s&agrave;ng gi&uacute;p đỡ nhau.</li>
</ul>

<p><strong>Đời sống tinh thần:</strong></p>

<ul>
	<li>Được&nbsp;trợ cấp tr&agrave;, c&agrave; ph&ecirc;, đồ ăn vặt, gửi xe miễn ph&iacute;.</li>
	<li>Tham gia c&aacute;c hoạt động thể thao (b&oacute;ng đ&aacute;); c&aacute;c party li&ecirc;n hoan của C&ocirc;ng ty (sinh nhật, lễ Tết,...)</li>
	<li>C&aacute;c chế độ ph&uacute;c lợi h&agrave;ng năm cho bản th&acirc;n v&agrave; gia đ&igrave;nh như: được tổ chức sinh nhật, Team Building, du lịch (trong nước/ nước ngo&agrave;i), d&atilde; ngoại, thăm hỏi ốm đau, hiếu hỉ,&hellip;</li>
	<li>Khả năng thăng tiến trong c&ocirc;ng việc (Sếp, cơ hội học hỏi):</li>
	<li>Cơ hội tiếp x&uacute;c, học hỏi những c&ocirc;ng nghệ ti&ecirc;n tiến nhất trong lĩnh vực CNTT.</li>
</ul>
', N'<ul>
	<li>Chế độ đ&atilde;i ngộ nh&acirc;n vi&ecirc;n rất tốt, mức thưởng cao</li>
	<li>Đồng nghiệp trẻ trung, năng động, sếp t&acirc;m l&yacute;</li>
	<li>Hoạt động thể thao h&agrave;ng tuần, du lịch h&agrave;ng năm</li>
</ul>
', N'Angular,Jquery,ReactJs', 2, 1200, 1800, 0, CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), 8, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (7, 1, CAST(N'2020-11-26T13:34:37.293' AS DateTime), NULL, NULL, 0, N'Backend Developer (.NET, ASP.NET, C#)', N'<p>* Đọc hiểu c&aacute;c t&agrave;i liệu M&ocirc; tả y&ecirc;u cầu, Prototype, T&agrave;i liệu thiết kế kiến tr&uacute;c để đưa ra c&aacute;c thiết kế API v&agrave; phối hợp với c&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c trong đội dự &aacute;n để x&acirc;y dựng c&aacute;c API đ&atilde; thiết kế&nbsp;</p>

<p>* Viết unit test v&agrave; thực hiện unit test&nbsp;</p>

<p>* Hỗ trợ v&agrave; đ&agrave;o tạo c&aacute;c th&agrave;nh vi&ecirc;n mới trong team&nbsp;</p>

<p>* Hỗ trợ nh&oacute;m vận h&agrave;nh để triển khai v&agrave; vận h&agrave;nh hệ thống&nbsp;</p>
', N'<p>- Kinh nghiệm lập tr&igrave;nh web sử dụng .Net &gt;= 2 năm&nbsp;</p>

<p>- Biết c&aacute;ch thiết kế API sử dụng Swagger hoặc API Blueprint&nbsp;</p>

<p>- Biết viết unit test v&agrave; chạy unit test - C&oacute; hiểu biết về docker, kubernetes, mysql, redis</p>
', N'<ul>
	<li><strong>Thu nhập cạnh tranh, mức lương hấp dẫn</strong></li>
	<li><strong>M&ocirc;i trường l&agrave;m việc năng động</strong></li>
	<li><strong>Cơ hội thử th&aacute;ch v&agrave; ph&aacute;t triển trong lĩnh vực Edtech v&agrave; Elearning</strong></li>
	<li>G&oacute;i bảo hiểm đặc biệt</li>
	<li>Được trao cơ hội v&agrave; được lựa chọn đảm nhận c&ocirc;ng việc theo thế mạnh v&agrave; niềm y&ecirc;u th&iacute;ch của bản th&acirc;n</li>
	<li>Thưởng c&aacute;c dịp lễ lớn của quốc gia, thưởng th&agrave;nh t&iacute;ch l&agrave;m việc xuất sắc...</li>
	<li>Hưởng c&aacute;c ch&iacute;nh s&aacute;ch bảo hiểm x&atilde; hội, kh&aacute;m sức khỏe năm theo Luật Lao Động Việt Nam.</li>
	<li>M&ocirc;i trường l&agrave;m việc năng động, trẻ trung, gi&uacute;p đỡ lẫn nhau, th&acirc;n thiện.</li>
	<li>Được đ&agrave;o tạo, hướng dẫn lộ tr&igrave;nh v&agrave; trao cơ hội, tạo điều kiện ph&aacute;t triển, thăng tiến trong c&ocirc;ng việc.</li>
	<li>Được hỗ trợ li&ecirc;n tục học c&aacute;c kho&aacute; ph&aacute;t triển nghề nghiệp v&agrave; ph&aacute;t triển bản th&acirc;n</li>
	<li>Teambuilding gắn kết nh&acirc;n sự, xem phim, company trip hằng năm, tham dự c&aacute;c sự kiện đặc biệt của c&ocirc;ng ty, sinh nhật h&agrave;ng th&aacute;ng, teabreak h&agrave;ng ng&agrave;y</li>
	<li>Thời gian l&agrave;m việc: Thứ 2 - Thứ 6 (9:00AM &ndash; 18:00PM) Nghỉ trưa: 12:00AM - 13:00PM&nbsp;<em>(Mỗi th&aacute;ng l&agrave;m 2 ng&agrave;y thứ 7)</em></li>
</ul>
', N'<ul>
	<li>Cơ hội ph&aacute;t triển bản th&acirc;n trong lĩnh vực Edtech</li>
	<li>Cơ hội đ&oacute;ng g&oacute;p nền gi&aacute;o dục Việt Nam v&agrave; to&agrave;n cầu</li>
	<li>Thăng tiến trong lĩnh vực edtech &amp; elearning</li>
</ul>
', N'Angular,AngularJs,ASP.NET', 3, 1200, 200, 0, CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-06T00:00:00.0000000' AS DateTime2), 8, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (8, 1, CAST(N'2020-11-26T13:36:04.127' AS DateTime), NULL, NULL, 0, N'ASP.NET Developer (.NET, C#)', N'<p>C&ocirc;ng ty ch&uacute;ng t&ocirc;i chủ yếu l&agrave;m về web mvc v&agrave; winfom&nbsp;<strong>ASP.NET MVC</strong>, cần ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm trong việc tạo dựng một website cơ bản, tham gia lập tr&igrave;nh c&aacute;c dự &aacute;n của c&ocirc;ng ty v&agrave; triển khai&nbsp; tr&ecirc;n website</p>
', N'<p><strong>C&ocirc;ng ty ch&uacute;ng t&ocirc;i chủ yếu l&agrave;m về web mvc v&agrave; winfom&nbsp;ASP.NET MVC, Y&ecirc;u cầu ứng vi&ecirc;n:&nbsp;</strong></p>

<ul>
	<li>Tạo dựng một trang web cơ bản, c&oacute; tối thiểu 1 năm kinh nghiệm l&agrave;m 1 trong c&aacute;c ng&ocirc;n ngữ .NET, C C#,&nbsp;<strong>ASP.NET MVC</strong></li>
</ul>

<p><strong>Điểm cộng:</strong></p>

<ul>
	<li>C&oacute; kinh nghiệm với CSDL: SQL Server l&agrave; một lợi thế</li>
	<li>C&oacute; kinh nghiệm l&agrave;m Web về thương mại điển tử</li>
	<li>ứng vi&ecirc;n biết về boostrap sẽ l&agrave; điểm cộng, jquery...</li>
	<li>Ứng vi&ecirc;n biết bootstrap, jquery, ajax l&agrave; điểm cộng</li>
</ul>
', N'<ul>
	<li><strong>C&oacute; sign-on bonus + thưởng cuối năm theo năng lực v&agrave; đ&oacute;ng g&oacute;p</strong></li>
	<li>Chế độ lương hấp dẫn ,lương th&aacute;ng 13 ( 2 th&aacute;ng lương) , x&eacute;t thưởng theo năm, thưởng th&ecirc;m v&agrave;o c&aacute;c dịp lễ, tết, đ&aacute;nh gi&aacute; h&agrave;ng qu&yacute; x&eacute;t tăng lương &iacute;t nhất 2 lần/ 1 năm, c&oacute; năng lực sẽ được đ&aacute;nh gi&aacute; ngay tại thời điểm.</li>
	<li>Được nghỉ ph&eacute;p 12 ng&agrave;y ph&eacute;p/ năm m&agrave; lương vẫn được nhận b&igrave;nh thường.</li>
	<li>Một th&aacute;ng tổ chức ăn uống, party &iacute;t nhất 1 lần/ th&aacute;ng, chương tr&igrave;nh party cuối năm bốc thăm tr&uacute;ng thưởng điện thoại si&ecirc;u cấp, laptop si&ecirc;u nh&acirc;n&hellip;..C&oacute; chỗ ngủ trưa thoải m&aacute;i</li>
	<li>Đối với nh&acirc;n vi&ecirc;n l&agrave;m việc từ 1 năm trở l&ecirc;n được hỗ trợ vay 3000$ kh&ocirc;ng l&atilde;i xuất ng&acirc;n h&agrave;ng.</li>
	<li>Được l&agrave;m việc với c&aacute;c chuy&ecirc;n gia h&agrave;ng đầu trong nước v&agrave; nước ngo&agrave;i sẽ gi&uacute;p bạn t&iacute;ch lũy n&acirc;ng cao kiến thức.</li>
	<li>C&aacute;c chuyến đi c&ocirc;ng t&aacute;c nước ngo&agrave;i giống như đi du lịch, được t&agrave;i trợ c&aacute;c hoạt động cộng trong team, được giao lưu n&acirc;ng cao kiến thức lập tr&igrave;nh v&agrave; trải nghiệm thực tế.</li>
	<li>N&acirc;ng cao khả năng giao tiếp bằng tiếng anh l&ecirc;n rất nhiều v&igrave; trong team c&oacute; những bạn coder nước ngo&agrave;i, bạn sẽ thấy văn h&oacute;a của họ cực kỳ th&uacute; vị.</li>
	<li>Du lịch nước ngo&agrave;i h&agrave;ng năm, được kh&aacute;m ph&aacute; những đặc sản, địa danh nổi tiếng tr&ecirc;n thế giới.</li>
	<li>Văn ph&ograve;ng rộng r&atilde;i, tho&aacute;ng m&aacute;t, tiện nghi. Được mặc thoải m&aacute;i những g&igrave; bạn th&iacute;ch đơn giản để bạn c&oacute; thể thỏa sức s&aacute;ng tạo. C&oacute; b&aacute;nh, tr&agrave;, caf&eacute;, thức ăn nhanh phục vụ anh em h&agrave;ng ng&agrave;y.</li>
</ul>
', N'<ul>
	<li>Cơ hội ph&aacute;t triển bản th&acirc;n trong lĩnh vực Edtech</li>
	<li>Cơ hội đ&oacute;ng g&oacute;p nền gi&aacute;o dục Việt Nam v&agrave; to&agrave;n cầu</li>
	<li>Thăng tiến trong lĩnh vực edtech &amp; elearning</li>
</ul>
', N'AngularJs,ASP.NET,Jquery', 1, 800, 1200, 0, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), 2, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (9, 1, CAST(N'2020-11-26T13:41:07.700' AS DateTime), NULL, NULL, 0, N'.NET Developer (ASP.NET,C#)', N'<ul>
	<li>Tham gia nghi&ecirc;n cứu ph&aacute;t triển c&aacute;c dự &aacute;n mới của c&ocirc;ng ty: C&aacute;c hệ thống quảng c&aacute;o th&ocirc;ng minh, Mạng x&atilde; hội, dự &aacute;n phần mềm, website của c&ocirc;ng ty.</li>
	<li>Thực hiện c&aacute;c c&ocirc;ng việc theo sự ph&acirc;n c&ocirc;ng của c&aacute;n bộ quản l&yacute;.</li>
</ul>
', N'<ul>
	<li>C&oacute; 3 năm kinh nghiệm lập tr&igrave;nh tr&ecirc;n nền .Net</li>
	<li>Tốt nghiệp đại học, chuy&ecirc;n ng&agrave;nh CNTT, To&aacute;n Tin ứng dụng hoặc Tốt nghiệp hệ thống Apptech, NIIT.</li>
	<li>Sử dụng tốt ng&ocirc;n ngữ C#, HTML5/CSS3</li>
	<li>Th&agrave;nh thạo ASP.NET</li>
	<li>Lập tr&igrave;nh tốt với javascript.</li>
	<li>CSDL th&agrave;nh thạo với: MS SQL Server.</li>
	<li>C&oacute; kiến thức vững chắc về REST, RPC APIs v&agrave; MVC</li>
	<li>C&oacute; kinh nghiệm v&agrave; hiểu biết về kiến tr&uacute;c ứng dụng, ph&aacute;t triển ứng dụng m&ocirc; h&igrave;nh client/server.</li>
	<li>C&oacute; khả năng giải quyết vấn đề độc lập cao.</li>
	<li>Lu&ocirc;n nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc.</li>
</ul>
', N'<ul>
	<li>Thưởng theo hiệu suất c&ocirc;ng việc + Thưởng năng lực vượt trội + C&aacute;c g&oacute;i thưởng Dự &Aacute;n.</li>
	<li>X&eacute;t duyệt lương h&agrave;ng năm.</li>
	<li>Lộ tr&igrave;nh thăng tiến &amp; định hướng nghề nghi&ecirc;p r&otilde; r&agrave;ng</li>
	<li>C&aacute;c ng&agrave;y nghỉ ph&eacute;p trong năm v&agrave; chế độ BHXH đ&uacute;ng theo qui định</li>
	<li>M&ocirc;i trường l&agrave;m việc start up v&agrave; qui m&ocirc; to&agrave;n cầu</li>
</ul>
', N'<ul>
	<li>Cơ hội ph&aacute;t triển bản th&acirc;n trong lĩnh vực Edtech</li>
	<li>Cơ hội đ&oacute;ng g&oacute;p nền gi&aacute;o dục Việt Nam v&agrave; to&agrave;n cầu</li>
	<li>Thăng tiến trong lĩnh vực edtech &amp; elearning</li>
</ul>
', N'Angular,AngularJs,ASP.NET', 2, 1200, 1800, 0, CAST(N'2020-11-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-18T00:00:00.0000000' AS DateTime2), 5, 0, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (10, 1, CAST(N'2020-11-26T13:42:06.833' AS DateTime), CAST(N'2020-12-19T12:56:44.723' AS DateTime), 1, 0, N'.NET Dev (ASP.NET, C#, MVC)', N'<ul>
	<li>Tham gia x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c ứng dụng sử dụng C#, cho KH Nhật, Mỹ.</li>
	<li>Nghi&ecirc;n cứu v&agrave; &aacute;p dụng c&aacute;c c&ocirc;ng nghệ mới.</li>
	<li>Tham gia ph&aacute;t triển c&aacute;c hệ thống lớn về Web Aplication, AI, Machine learning, Big data</li>
</ul>
', N'<ul>
	<li>Nắm vững c&ocirc;ng nghệ C#, ASP.Net MVC, MS SQL Server</li>
</ul>

<p><strong>Junior: tối thiểu 06 th&aacute;ng đến 1 năm kinh nghiệm l&agrave;m việc với C#</strong></p>

<p><strong>Middle: tối thiểu 02 năm kinh nghiệm l&agrave;m việc với C#</strong></p>

<ul>
	<li>Ưu ti&ecirc;n ứng vi&ecirc;n đ&atilde; từng l&agrave;m việc với dự &aacute;n Nhật</li>
	<li>Cơ hội thăng ti&ecirc;́n cao với ứng viên có kinh nghiệm quản lý nhóm ít nh&acirc;́t 3 thành vi&ecirc;n</li>
</ul>
', N'<ul>
	<li>Lương thỏa thuận theo năng lực thực tế -&nbsp;<strong>từ 700$ đến 1,500$</strong>.</li>
	<li>Thời gian làm việc: 8:30-17:30 thứ Hai đ&ecirc;́n thứ Sáu, nghỉ thứ Bảy, Chủ nhật. Nghỉ Lễ/ Tết theo quy định của luật Lao Động</li>
	<li>Thưởng lương tháng 13, thưởng L&ecirc;̃ T&ecirc;́t,...</li>
	<li>Nâng lương định kỳ 2 l&acirc;̀n/năm hoặc đột xu&acirc;́t n&ecirc;́u có thành tích xu&acirc;́t sắc</li>
	<li>Tham gia BHXH, BHYT, BHTN, khám sức khỏe định kỳ hàng năm</li>
	<li>Được đ&agrave;o tạo, l&agrave;m việc trong m&ocirc;i trường cực kỳ chuy&ecirc;n nghiệp</li>
	<li>Cơ hội trở th&agrave;nh Team Leader, Project Manager hoặc sang Nhật l&agrave;m việc</li>
	<li>Free tr&agrave;, coffee, snack..</li>
</ul>
', N'<ul>
	<li>Cơ hội đ&agrave;o tạo v&agrave; l&agrave;m việc tại Nhật Bản.</li>
	<li>M&ocirc;i trường thoải m&aacute;i, Sếp nice, Anh/ Em th&acirc;n thiện</li>
	<li>Lương up to 1,500$.</li>
</ul>
', N'Angular,ASP.NET,GoLang', 1, 1200, 1800, 1, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-13T00:00:00.0000000' AS DateTime2), 12, 1, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (11, 1, CAST(N'2020-11-26T13:43:08.583' AS DateTime), CAST(N'2020-12-19T12:56:20.093' AS DateTime), 1, 0, N'.Net Developer (ASP.NET, C#, Winform)', N'<ul>
	<li>Tham gia ph&acirc;n t&iacute;ch thiết kế hệ thống, thiết kế Database, thiết kế chi tiết</li>
	<li>Lập tr&igrave;nh v&agrave; kiểm thử c&aacute;c ứng dụng theo ng&ocirc;n ngữ ASP.NET, .Net, C#</li>
	<li>Cải tiến v&agrave; n&acirc;ng cao chất lượng dự &aacute;n</li>
</ul>
', N'<p>I- Nghiệp vụ&nbsp;</p>

<ul>
	<li><strong>Kinh nghiệm: Tối thiểu 2 năm ở vị tr&iacute; tương đương</strong></li>
	<li><strong>Độ tuổi: 25 - 35</strong></li>
	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh CNTT hoặc c&oacute; tham gia c&aacute;c kh&oacute;a học đ&agrave;o tạo về ASP.NET, C# Winform</li>
	<li>C&oacute; kiến thức về lập tr&igrave;nh hướng đối tượng</li>
	<li>C&oacute; kinh nghiệm viết c&aacute;c bộ API theo ResfulAPI</li>
	<li>Lập tr&igrave;nh th&agrave;nh thạo với .Net Framework . , ASP.NET C#, hoặc .Net, C#, eb Services, M C, CF, Entity Framework, LinQ</li>
	<li>C&oacute; kiến thức v&agrave; kinh nghiệm về Framework Devxpress</li>
	<li>C&oacute; kinh nghiệm l&agrave;m việc với c&aacute;c hệ quản trị CSDL: MS SQL Server, No SQL, Biết xử l&yacute; tối ưu c&aacute;c c&acirc;u lệnh query dữ liệu lớn. Biết viết c&aacute;c function, procedure, temporary table, biết sử dụng variables</li>
	<li>C&oacute; kinh nghiệm React Native l&agrave; một lợi thế</li>
</ul>

<p>II- Kỹ năng</p>

<ul>
	<li>Đam m&ecirc; c&ocirc;ng việc, sự s&aacute;ng tạo v&agrave; đổi mới</li>
	<li>Kỹ năng giải quyết vấn đề linh hoạt, sẵn s&agrave;ng ph&aacute; bỏ c&aacute;c r&agrave;o cản, t&iacute;ch cực t&igrave;m kiếm c&aacute;c giải ph&aacute;p thay thế để đạt mục ti&ecirc;u cần c&oacute;</li>
	<li>Tinh thần hợp t&aacute;c, chủ động, nhiệt t&igrave;nh, h&ograve;a đồng trong c&ocirc;ng việc, l&agrave;m việc tốt theo nh&oacute;m</li>
	<li>C&oacute; tinh thần tr&aacute;ch nhiệm cao. Cầu thị, tự tin, quyết đo&aacute;n</li>
</ul>
', N'<ul>
	<li>Thu nhập :&nbsp;<strong>Lương cơ bản (12-20tr)</strong>&nbsp;+ Phụ cấp + Thưởng ho&agrave;n th&agrave;nh chỉ ti&ecirc;u % doanh số.</li>
	<li>Lương: Review lương h&agrave;ng năm,</li>
	<li>Tưởng thưởng : Du lịch, đ&agrave;o tạo, team buiding v&agrave; c&aacute;c ch&iacute;nh s&aacute;ch d&agrave;nh ri&ecirc;ng cho nh&acirc;n vi&ecirc;n</li>
	<li>Chế độ: Thực hiện đầy đủ c&aacute;c chế độ d&agrave;nh cho người lao động theo Luật lao động v&agrave; BHXH hiện h&agrave;nh.</li>
	<li>Thăng tiến: Dựa tr&ecirc;n năng lực v&agrave; cống hiến trong qu&aacute; tr&igrave;nh l&agrave;m việc.</li>
	<li>M&ocirc;i trường: M&ocirc;i trường l&agrave;m việc năng động, trẻ trung v&agrave; chuy&ecirc;n nghiệp, c&oacute; nhiều cơ hội học hỏi, ph&aacute;t huy năng lực, ph&aacute;t triển bản th&acirc;n</li>
	<li>Thời gian: 8h30 - 17h từ Thứ 2 &ndash; S&aacute;ng T7</li>
</ul>
', N'<ul>
	<li>Lương thưởng theo năng lực, review lương h&agrave;ng năm</li>
	<li>M&ocirc;i trường năng động, trẻ trung v&agrave; chuy&ecirc;n nghiệp</li>
	<li>Chế độ, Thăng tiến v&agrave; Tưởng thưởng</li>
</ul>
', N'ASP.NET,GoLang,Java', 1, 1200, 1600, 1, CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-19T00:00:00.0000000' AS DateTime2), 8, 1, NULL)
INSERT [dbo].[JobDescriptions] ([JobId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Title], [Description], [RequestJob], [Benefit], [Endow], [SkillId], [CategoryId], [OfferFrom], [OfferTo], [Status], [TimeStart], [TimeEnd], [Quatity], [Type], [Image]) VALUES (12, 1, CAST(N'2020-12-08T09:50:25.063' AS DateTime), CAST(N'2020-12-09T22:04:40.667' AS DateTime), 1, 1, N'demo', N'<p>demo</p>
', N'<p>demo</p>
', N'<p>demo</p>
', N'<p>demo</p>
', N'Angular,AngularJs,ASP.NET', 1, 1, 2, 0, CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-10T00:00:00.0000000' AS DateTime2), 4, 0, NULL)
SET IDENTITY_INSERT [dbo].[JobDescriptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Process] ON 

INSERT [dbo].[Process] ([ProcessId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Note]) VALUES (1, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), NULL, NULL, 0, N'Duyệt hồ sơ', NULL)
INSERT [dbo].[Process] ([ProcessId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Note]) VALUES (2, 1, CAST(N'2000-12-12T00:00:00.000' AS DateTime), NULL, NULL, 0, N'Đặt lịch', NULL)
INSERT [dbo].[Process] ([ProcessId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Note]) VALUES (3, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), NULL, NULL, 0, N'Phỏng vấn', NULL)
SET IDENTITY_INSERT [dbo].[Process] OFF
GO
SET IDENTITY_INSERT [dbo].[Providers] ON 

INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (1, 1, CAST(N'2020-11-26T09:48:40.667' AS DateTime), NULL, NULL, 0, N'https://vn.indeed.com', N'Vn.indeed.com')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (2, 1, CAST(N'2020-11-26T09:49:02.357' AS DateTime), NULL, NULL, 0, N'http://www.vietnamworks.com', N'Vietnamworks')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (3, 1, CAST(N'2020-11-26T09:49:14.733' AS DateTime), NULL, NULL, 0, N'http://careerbuilder.vn', N'Careerbuilder')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (4, 1, CAST(N'2020-11-26T09:49:29.383' AS DateTime), NULL, NULL, 0, N'https://timviec365.vn', N'Timviec365')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (5, 1, CAST(N'2020-11-26T09:49:41.190' AS DateTime), NULL, NULL, 0, N'http://www.timviecnhanh.com', N'Timviecnhanh')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (6, 1, CAST(N'2020-11-26T09:49:53.843' AS DateTime), NULL, NULL, 0, N'https://topcv.vn', N'TopCV')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (7, 1, CAST(N'2020-11-26T09:50:09.143' AS DateTime), NULL, NULL, 0, N'https://vieclam24h.vn', N'Vieclam24h')
INSERT [dbo].[Providers] ([ProviderId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Link], [Name]) VALUES (9, 1, CAST(N'2000-12-03T00:00:00.000' AS DateTime), NULL, NULL, 0, NULL, N'Ứng viên')
SET IDENTITY_INSERT [dbo].[Providers] OFF
GO
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'Angular', 1, CAST(N'2020-11-26T09:53:03.660' AS DateTime), NULL, NULL, 0, N'Angular')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'AngularJs', 1, CAST(N'2020-11-26T09:53:17.597' AS DateTime), NULL, NULL, 0, N'AngularJs')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'ASP.NET', 1, CAST(N'2020-11-26T09:53:39.083' AS DateTime), NULL, NULL, 0, N'ASP.NET')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'GoLang', 1, CAST(N'2020-11-26T09:54:08.703' AS DateTime), NULL, NULL, 0, N'GoLang')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'Java', 1, CAST(N'2020-11-26T09:53:48.037' AS DateTime), NULL, NULL, 0, N'Java')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'Jquery', 1, CAST(N'2020-11-26T09:53:08.087' AS DateTime), NULL, NULL, 0, N'Jquery')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'Laravel', 1, CAST(N'2020-11-26T09:53:53.767' AS DateTime), NULL, NULL, 0, N'Laravel')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'PHP', 1, CAST(N'2020-11-26T09:53:43.990' AS DateTime), NULL, NULL, 0, N'PHP')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'ReactJs', 1, CAST(N'2020-11-26T09:53:13.420' AS DateTime), NULL, NULL, 0, N'ReactJs')
INSERT [dbo].[Skills] ([SkillId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name]) VALUES (N'VueJs', 1, CAST(N'2020-11-26T09:53:30.317' AS DateTime), NULL, NULL, 0, N'VueJs')
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Content], [Color]) VALUES (1, 1, CAST(N'2020-11-26T09:52:03.730' AS DateTime), NULL, NULL, 0, N'Ứng viên tiềm năng', N'Ứng viên có CV tốt', N'bg-success')
INSERT [dbo].[Tags] ([Id], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Content], [Color]) VALUES (2, 1, CAST(N'2020-11-26T09:52:27.223' AS DateTime), NULL, NULL, 0, N'Ứng viên có kinh nghiệm', N'Ứng viên đã có nhiều năm kinh nghiệm', N'bg-success')
INSERT [dbo].[Tags] ([Id], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Content], [Color]) VALUES (3, 1, CAST(N'2020-11-26T09:52:44.780' AS DateTime), NULL, NULL, 0, N'Ứng viên chưa kinh nghiệm', N'Ứng viên là sinh viên mới ra trường', N'bg-success')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [CreateBy], [CreateDate], [UpdateDate], [UpdateBy], [Deleted], [Name], [Email], [Phone], [Address], [UserName], [Password], [Image], [isActive]) VALUES (1, NULL, CAST(N'2020-11-26T09:45:42.817' AS DateTime), NULL, NULL, 0, N'Vũ Chung Dũng', N'vuchungdunghlym@gmail.com', N'0913849547', N'Yên Mĩ - Hưng Yên', N'vuchungdung', N'QkU2Nzg0MkI2QzZBNTU0NDNBMDlGQ0I5QjE4RkREMkE1RDQ0RkQ3NDQwQ0M2MEE4QTJCMEIyNUZBOEY4QzI1MQ==', NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_CADIDATE_GET_DETAIL]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CADIDATE_GET_DETAIL]
@ID INT 
AS
	BEGIN
		SELECT C.Name,C.Email,C.Dob,C.Phone,C.Address,C.Gender,C.Degree,C.Major,C.University,C.Skype,c.Experience  FROM DBO.Cadidates AS C WHERE C.CadidateId = @ID;
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CADIDATE_LOGIN]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CADIDATE_LOGIN]
(
@USERNAME NVARCHAR(MAX),
@PASSWORD NVARCHAR(MAX)
)
AS
	BEGIN
		SELECT Cadidates.CadidateId, Cadidates.Username FROM DBO.Cadidates WHERE Cadidates.Username = @USERNAME AND Cadidates.Password = @PASSWORD
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CADIDATE_REGRISTER]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CADIDATE_REGRISTER]
(
@CREATEDATE DATETIME = GETDATE,
@DELETED BIT,
@USERNAME NVARCHAR(MAX),
@PASSWORD NVARCHAR(MAX),
@JOBID INT = 0
)
AS
	BEGIN
		INSERT DBO.Cadidates(CreateDate,Deleted,Username,Password,JobId)
		VALUES (@CREATEDATE,@DELETED,@USERNAME,@PASSWORD,@JOBID)
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CADIDATE_UPDATE]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CADIDATE_UPDATE]
(
@CADIDATEID INT,
@NAME NVARCHAR(100),
@EMAIL VARCHAR(200),
@ADDRESS NVARCHAR(250),
@PHONE NVARCHAR(20),
@DOB DATETIME,
@GENDER INT,
@DEGREE NVARCHAR(20),
@APPLYDATE DATETIME,
@MAJOR NVARCHAR(100),
@UNIVERSITY NVARCHAR(100),
@SKYPE NVARCHAR(MAX),
@EXPERIENCE NVARCHAR(MAX),
@JOBID INT,
@PROVIDERID INT = 9
)
AS
	BEGIN
		UPDATE DBO.Cadidates SET Name = @NAME,Email = @EMAIL,Address = @ADDRESS,Phone = @PHONE,Dob = @DOB,Gender = @GENDER,Degree = @DEGREE,ApplyDate = @APPLYDATE,
		Major = @MAJOR,University = @UNIVERSITY,Skype = @SKYPE,Experience = @EXPERIENCE, JobId = @JOBID, ProviderId = @PROVIDERID WHERE CadidateId = @CADIDATEID
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CATEGORY_GET_ALL]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CATEGORY_GET_ALL]
AS
	BEGIN
		SELECT JC.CategoryId,JC.Name,COUNT(JOB.JobId) AS Total
		FROM DBO.JobCategories AS JC,DBO.JobDescriptions AS JOB 
		WHERE JC.Deleted = 0 AND JC.CategoryId = JOB.CategoryId
		GROUP BY JC.CategoryId,JC.Name
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_FILE_CREATE]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_FILE_CREATE]
(
@CREATEDATE DATETIME = GETDATE,
@DELETED BIT,
@FILENAME NVARCHAR(200),
@FILEPATH NVARCHAR(200),
@FILETYPE NVARCHAR(100),
@FILESIZE INT,
@CADIDATEID INT
)
AS
	BEGIN
		INSERT DBO.Files(CreateDate,Deleted,FileName,FilePath,FileType,FileSize,CadidateId)
		VALUES (@CREATEDATE,@DELETED,@FILENAME,@FILEPATH,@FILETYPE,@FILESIZE,@CADIDATEID)
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_CADIDATE_USERNAME]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GET_CADIDATE_USERNAME]
(@USERNAME NVARCHAR(MAX))
AS
	BEGIN
		SELECT Cadidates.CadidateId,Cadidates.Username,Cadidates.JobId FROM DBO.Cadidates WHERE Cadidates.Username = @USERNAME
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_JOBDESCRIPTION_GET_ALL]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_JOBDESCRIPTION_GET_ALL]
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.Quatity,
			JOB.CategoryId,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_JOBDESCRIPTION_GET_ALL_NEW]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_JOBDESCRIPTION_GET_ALL_NEW]
AS 
	BEGIN
		SELECT TOP(8) JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Quatity,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
			ORDER BY JOB.CreateDate DESC
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_JOBDESCRIPTION_GET_DETAIL]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_JOBDESCRIPTION_GET_DETAIL]
@ID INT
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.Quatity,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
				AND JOB.JobId = @ID
			ORDER BY JOB.CreateDate DESC
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_JOBDESCRIPTION_GET_PAGING]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_JOBDESCRIPTION_GET_PAGING]
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Description,
			JOB.Endow,
			JOB.Benefit,
			JOB.SkillId,
			JOB.OfferFrom,
			JOB.OfferTo,
			JOB.RequestJob,
			JOB.Status,
			CAT.Name,
			JOB.TimeStart,
			JOB.TimeEnd,
			JOB.CategoryId,
			JOB.Quatity,
			JOB.Type,
			JOB.CreateDate
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0
			ORDER BY JOB.JobId
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_JOBDESCRIPTION_GET_SIMILAR]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_JOBDESCRIPTION_GET_SIMILAR]
@CATEGORIID INT
AS 
	BEGIN
		SELECT JOB.Title,
			JOB.JobId,
			JOB.Quatity,
			JOB.Type
		FROM DBO.JobDescriptions AS JOB,
			DBO.JobCategories AS CAT
			WHERE 
				JOB.CategoryId = CAT.CategoryId AND
				JOB.Deleted = 0 AND
				CAT.CategoryId = @CATEGORIID
	END;
GO
/****** Object:  StoredProcedure [dbo].[SP_SKILL_GET_ALL]    Script Date: 12/19/2020 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_SKILL_GET_ALL]
AS
	BEGIN
		SELECT SKILL.SkillId, SKILL.Name FROM DBO.Skills AS SKILL WHERE SKILL.Deleted = 0
	END
GO
