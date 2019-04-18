USE [Upgrowth]
GO
/****** Object:  Table [dbo].[AptitudeAnswers]    Script Date: 18-04-2019 09:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeAnswers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[questionid] [varchar](255) NULL,
	[selectanswer] [varchar](255) NOT NULL,
	[Datetaken] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeQuestions]    Script Date: 18-04-2019 09:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeQuestions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Skillid] [int] NULL,
	[Question] [varchar](255) NULL,
	[OptOne] [varchar](255) NULL,
	[OptTwo] [varchar](255) NULL,
	[OptThree] [varchar](255) NULL,
	[OptFour] [varchar](255) NULL,
	[CrtAnswer] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeQuestions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeScoreCard]    Script Date: 18-04-2019 09:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeScoreCard](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](255) NULL,
	[skillid] [varchar](255) NULL,
	[skillname] [varchar](255) NULL,
	[counter] [varchar](255) NULL,
	[Datetaken] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingMaster]    Script Date: 18-04-2019 09:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillMaster]    Script Date: 18-04-2019 09:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SkillTag] [varchar](255) NULL,
	[SkillName] [varchar](max) NULL,
 CONSTRAINT [PK_SkillMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 18-04-2019 09:28:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[Location] [varchar](255) NULL,
	[photo] [varchar](max) NULL,
	[Experience] [varchar](255) NULL,
	[Passion] [varchar](255) NULL,
	[Interest] [varchar](255) NULL,
	[Skill] [varchar](255) NULL,
	[JobRole] [varchar](255) NULL,
	[TenthMarks] [varchar](255) NULL,
	[TwelthMarks] [varchar](255) NULL,
	[UGMarks] [varchar](255) NULL,
	[GMarks] [varchar](255) NULL,
	[UGStream] [varchar](255) NULL,
	[GStream] [varchar](255) NULL,
	[Profession] [varchar](255) NULL,
	[OtherEducation] [varchar](255) NULL,
	[HighSchool] [varchar](255) NULL,
	[UGSchool] [varchar](255) NULL,
	[GSchool] [varchar](255) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [varchar](255) NULL,
	[Skillid] [varchar](255) NULL,
	[Skillrate] [varchar](20) NULL,
	[SkillName] [varchar](255) NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AptitudeAnswers] ON 

INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (1, N'1', N'34', N'&', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (2, N'1', N'35', N'Quick C', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (3, N'1', N'5', N'A definition occurs once, but a declaration may occur many times.', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (4, N'1', N'31', N'Array', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (5, N'1', N'1', N'auto', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (6, N'1', N'2', N'A number', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (7, N'1', N'33', N'Array', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (8, N'1', N'32', N'%', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (9, N'1', N'3', N'examveda1', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (10, N'1', N'4', N'real', CAST(N'2019-04-16T15:07:52.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (11, N'1', N'31', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (12, N'1', N'1', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (13, N'1', N'34', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (14, N'1', N'3', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (15, N'1', N'35', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (16, N'1', N'4', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (17, N'1', N'32', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (18, N'1', N'2', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (19, N'1', N'33', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (20, N'1', N'5', N'', CAST(N'2019-04-16T15:09:36.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (21, N'1', N'35', N'Fast C', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (22, N'1', N'1', N'', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (23, N'1', N'2', N'', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (31, N'1', N'35', N'Fast C', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (32, N'1', N'33', N'Array', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (33, N'1', N'34', N'!', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (34, N'1', N'4', N'real', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (35, N'1', N'1', N'auto', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (36, N'1', N'5', N'A declaration occurs once, but a definition may occur many times.', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (37, N'1', N'3', N'1examveda', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (38, N'1', N'2', N'Both of the above', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (39, N'1', N'31', N'Integer', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (40, N'1', N'32', N'*', CAST(N'2019-04-16T16:38:42.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (41, N'1', N'34', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (42, N'1', N'3', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (43, N'1', N'35', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (44, N'1', N'2', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (45, N'1', N'32', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (46, N'1', N'4', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (47, N'1', N'31', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (48, N'1', N'33', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (49, N'1', N'5', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (50, N'1', N'1', N'', CAST(N'2019-04-16T16:39:47.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (24, N'1', N'31', N'Integer', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (25, N'1', N'32', N'', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (26, N'1', N'4', N'real', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (27, N'1', N'5', N'A declaration occurs once, but a definition may occur many times.', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (28, N'1', N'34', N'!', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (29, N'1', N'33', N'Array', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (30, N'1', N'3', N'', CAST(N'2019-04-16T16:18:55.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (51, N'1', N'34', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (52, N'1', N'33', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (53, N'1', N'31', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (54, N'1', N'4', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (55, N'1', N'1', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (56, N'1', N'5', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (57, N'1', N'32', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (58, N'1', N'35', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (59, N'1', N'3', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (60, N'1', N'2', N'', CAST(N'2019-04-16T16:41:17.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (61, N'1', N'35', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (62, N'1', N'33', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (63, N'1', N'34', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (64, N'1', N'1', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (65, N'1', N'2', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (66, N'1', N'32', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (67, N'1', N'4', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (68, N'1', N'5', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (69, N'1', N'31', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (70, N'1', N'3', N'', CAST(N'2019-04-16T16:42:20.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (71, N'1', N'34', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (72, N'1', N'3', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (73, N'1', N'32', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (74, N'1', N'2', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (75, N'1', N'31', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (76, N'1', N'1', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (77, N'1', N'4', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (78, N'1', N'35', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (79, N'1', N'5', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (80, N'1', N'33', N'', CAST(N'2019-04-16T16:43:44.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (81, N'1', N'1', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (82, N'1', N'35', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (83, N'1', N'2', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (84, N'1', N'32', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (85, N'1', N'5', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (86, N'1', N'33', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (87, N'1', N'34', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (88, N'1', N'4', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (89, N'1', N'3', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (90, N'1', N'31', N'Not Answered', CAST(N'2019-04-16T16:46:33.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (91, N'1', N'1', N'case ', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (92, N'1', N'31', N'Array', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (93, N'1', N'34', N'!', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (94, N'1', N'3', N'Not Answered', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (95, N'1', N'33', N'Array', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (96, N'1', N'32', N'*', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (97, N'1', N'5', N'A declaration occurs once, but a definition may occur many times.', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (98, N'1', N'35', N'Quick C', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (99, N'1', N'2', N'Both of the above', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
GO
INSERT [dbo].[AptitudeAnswers] ([id], [userid], [questionid], [selectanswer], [Datetaken]) VALUES (100, N'1', N'4', N'real', CAST(N'2019-04-16T16:51:26.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[AptitudeAnswers] OFF
SET IDENTITY_INSERT [dbo].[AptitudeQuestions] ON 

INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (1, 1, N'Which one of the following is not a reserved keyword for C?', N'auto', N'case ', N'main', N'default', N'main')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (2, 1, N'A C variable cannot start with ?', N'A number', N'A special symbol other than underscore', N'Both of the above', N'An alphabet', N'Both of the above')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (3, 1, N'Which one of the following is not a valid identifier?', N'_examveda', N'1examveda', N'exam_veda', N'examveda1', N'1examveda')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (4, 1, N'Which of the following is not a correct variable type?', N'float ', N'real', N'int', N'char', N'real')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (5, 1, N'What is the difference between a declaration and a definition of a variable?', N'Both can occur multiple times, but a declaration must occur first.', N'A definition occurs once, but a declaration may occur many times.', N'Both can occur multiple times, but a definition must occur first.', N'A declaration occurs once, but a definition may occur many times.', N'A declaration occurs once, but a definition may occur many times.')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (6, 2, N'Which of the following is not a type of constructor?', N'Copy constructor', N'Friend constructor', N'Default constructor', N'Parameterized constructor', N'Friend constructor')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (7, 2, N'How many instances of an abstract class can be created?', N'1', N'5', N'13', N'0', N'0')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (8, 2, N'cout is a/an __________ .', N'operator', N'function', N'object', N'macro', N'object')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (9, 2, N'How many types of polymorphisms are supported by C++?', N'1', N'2', N'3', N'4', N'2')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (10, 2, N'How "Late binding" is implemented in C++?', N'Using C++ tables', N'Using Virtual tables', N'Using Indexed virtual tables', N'Using polymorphic tables', N'Using Virtual tables')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (11, 3, N'Which is a valid keyword in java?', N'interface', N'string', N'float', N'unsigned', N'interface')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (12, 3, N'Which one of the following will declare an array and initialize it with five numbers?', N'Array a = new Array(5);', N'int [] a = {23,22,21,20,19};', N'int a [] = new int[5];', N'int [5] array;', N'int [] a = {23,22,21,20,19};')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (13, 3, N'Which is the valid declarations within an interface definition?', N'public double methoda();', N'public final double methoda();', N'static void methoda(double d1);', N'protected void methoda(double d1);', N'public double methoda();')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (14, 3, N'Which is a valid declarations of a String?', N'String s1 = null;', N'String s2 = ''null'';', N'String s3 = (String) ''abc'';', N'String s4 = (String) ''\ufeed'';', N'String s1 = null;')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (15, 3, N'What is the numerical range of a char?', N'-128 to 127', N'-(215) to (215) - 1', N'0 to 32767', N'0 to 65535', N'0 to 65535')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (16, 8, N'The DROP TABLE statement:', N'deletes the table structure only.', N'deletes the table structure along with the table data.', N'works whether or not referential integrity constraints would be violated.', N'is not an SQL statement.', N'deletes the table structure along with the table data.')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (17, 8, N'SQL views can be used to hide:', N'columns and rows only.', N'complicated SQL syntax only.', N'both of the above can be hidden by an SQL view.', N'None of the above is correct.', N'both of the above can be hidden by an SQL view.')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (18, 8, N'A ________ is a program that performs some common action on database data and that is stored in the database.', N'trigger', N'stored procedure', N'pseudofile', N'None of the above is correct.', N'stored procedure')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (19, 8, N'A reason for using an SQL view to hide columns is:', N'to simplify a result only.', N'to prevent the display of sensitive data only.', N'to accomplish both of the above.', N'None of the above are reasons for using an SQL view.', N'to accomplish both of the above.')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (20, 8, N'What SQL structure is used to limit column values of a table?', N'The LIMIT constraint', N'The CHECK constraint', N'The VALUE constraint', N'None of the above is correct.', N'The CHECK constraint')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (21, 16, N'Drop shadow, inner glow and bevel are examples of _________ you need to use with text.', N'filters', N'blending options ', N'image adjustments', N'layer modes', N'blending options ')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (22, 16, N'To select a new color in the foreground or background squares, use the _________ tool', N'color picker', N'i-dropper', N'eye dropper', N'All of the above', N'All of the above')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (23, 16, N'To delete a series of steps that have been used in a graphic design, you would need to use the _________ pallette.', N'layer', N'action', N'history', N'path', N'history')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (24, 16, N'Pixels represent tiny ________ of color, which are typically unseen by the naked eye.', N'circles', N'squares', N'inches', N'swatches', N'squares')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (25, 16, N'To fill in a layer as a background, which of the following tools would be useful? ', N'line ', N'paint bucket', N'crop', N'smudge', N'paint bucket')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (26, 22, N'Which measurement in cricket has remained unchanged since 1744?', N'pitch', N'stumps', N'bat', N'ball', N'pitch')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (27, 22, N'How many balls or deliveries are bowled in one over?', N'2', N'6', N'14', N'22', N'6')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (28, 22, N'What does the term "LBW" stand for in cricket?', N'Lift Bat and Whack', N'Leg Before Wicket', N'Launch Ball Wicketwards', N'Let''s Behave Wickedly', N'Leg Before Wicket')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (29, 22, N'Which two countries compete for cricket''s "Ashes"?', N'Cook Islands & Turkey', N'India & Pakistan', N'England & Australia', N'South Africa & New Zealand', N'England & Australia')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (30, 22, N'If a batsman is out on the very first ball he faced, what is it called?', N'Golden Elephant', N'Golden Duck', N'Golden Fleece', N'Mallard Duck', N'Golden Duck')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (31, 1, N'Address stored in the pointer variable is of type', N'Floating', N'Array', N'Integer', N'Character', N'Integer')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (32, 1, N'Pointer variable is declared using preceding _________ sign.', N'^', N'%', N'*', N'&', N'*')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (33, 1, N'Set of consecutive memory locations is called as ________.', N'Function ', N'Loop', N'Array', N'Pointer', N'Array')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (34, 1, N'Which of the following is a logical NOT operator?', N'!', N'&&', N'&', N'$', N'!')
INSERT [dbo].[AptitudeQuestions] ([id], [Skillid], [Question], [OptOne], [OptTwo], [OptThree], [OptFour], [CrtAnswer]) VALUES (35, 1, N'Which of these is not a version of C language ?', N'Microsoft C', N'Quick C', N'Turbo C', N'Fast C', N'Fast C')
SET IDENTITY_INSERT [dbo].[AptitudeQuestions] OFF
SET IDENTITY_INSERT [dbo].[AptitudeScoreCard] ON 

INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (1, N'1', N'1', N'C', N'2', CAST(N'2019-04-16T15:07:52.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (2, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T15:09:36.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (3, N'1', N'1', N'C', N'6', CAST(N'2019-04-16T16:18:55.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (4, N'1', N'1', N'C', N'9', CAST(N'2019-04-16T16:38:42.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (5, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T16:39:47.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (6, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T16:41:17.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (7, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T16:42:20.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (8, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T16:43:44.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (9, N'1', N'1', N'C', N'0', CAST(N'2019-04-16T16:46:33.000' AS DateTime))
INSERT [dbo].[AptitudeScoreCard] ([id], [userid], [skillid], [skillname], [counter], [Datetaken]) VALUES (10, N'1', N'1', N'C', N'6', CAST(N'2019-04-16T16:51:26.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AptitudeScoreCard] OFF
SET IDENTITY_INSERT [dbo].[RatingMaster] ON 

INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (1, 1)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (2, 2)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (3, 3)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (4, 4)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (5, 5)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (6, 6)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (7, 7)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (8, 8)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (9, 9)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[RatingMaster] OFF
SET IDENTITY_INSERT [dbo].[SkillMaster] ON 

INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (1, N'Computer ', N'C')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (2, N'Computer ', N'C++')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (3, N'Computer ', N'Java')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (4, N'Computer ', N'Python')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (5, N'Computer ', N'Ruby')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (6, N'Computer ', N'PHP')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (7, N'Computer ', N'HTML')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (8, N'Computer ', N'SQL')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (9, N'Computer ', N'MySql')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (10, N'Computer ', N'Machine Learning')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (11, N'Computer ', N'Artificial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (12, N'Computer ', N'Node JS')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (13, N'Computer ', N'Bootstrap')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (14, N'Computer ', N'.Net')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (15, N'Computer ', N'MongoDB')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (16, N'Computer ', N'Photoshop')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (17, N'Sports', N'Football')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (18, N'Sports', N'Throwball')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (19, N'Sports', N'Table Tennis')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (20, N'Sports', N'VolleyBall')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (21, N'Sports', N'BasketBall')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (22, N'Sports', N'Cricket')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (23, N'Sports', N'Trekking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (24, N'Sports', N'Carrom')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (25, N'Sports', N'Cards')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (26, N'Sports', N'Swimming')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (27, N'Sports', N'Chess')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (28, N'Arts', N'Drawing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (29, N'Arts', N'Painting')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (30, N'Arts', N'Designing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (31, N'Arts', N'Rangoli')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (32, N'Arts', N'BeautyParlour')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (33, N'Arts', N'Mehndi')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (34, N'Arts', N'Decoration')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (35, N'Arts', N'Creativity')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (36, N'Mechanical', N'Thermodyne')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (37, N'Mechanical', N'Energy Systems')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (38, N'Mechanical', N'Manufacturing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (39, N'Mechanical', N'Mechanical Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (40, N'Mechanical', N'Thermal')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (41, N'Mechanical', N'Heat Transfer')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (42, N'Mechanical', N'Air Conditioning')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (43, N'Mechanical', N'Auto Parts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (44, N'Mechanical', N'Fluid Mechanics')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (45, N'Mechanical', N'Hydraukic Machinery')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (46, N'Civil', N'Building Technology')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (47, N'Civil', N'Land Technician')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (48, N'Civil', N'Railway Technician')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (49, N'Civil', N'Bridge Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (50, N'Civil', N'Material Testing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (51, N'Electrial', N'Coding')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (52, N'Electrial', N'Testing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (53, N'Electrial', N'Circuit Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (54, N'Electrial', N'IOT')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (55, N'Electrial', N'Networking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (56, N'Dancing', N'Ballet')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (57, N'Dancing', N'Bharatnatyam')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (58, N'Dancing', N'Kathak')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (59, N'Dancing', N'Break Dance')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (60, N'Dancing', N'Lion Dance')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (61, N'Dancing', N'Salsa')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (62, N'Dancing', N'Disco')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (63, N'Chef ', N'Baking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (64, N'Chef ', N'Catering')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (65, N'Chef ', N'Cooking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (66, N'Chef ', N'Grilling')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (67, N'Chef ', N'cake Decorating')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (68, N'Chef ', N'Pastry')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (69, N'Chef ', N'Sea Food ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (70, N'Chef ', N'Maharashtrian ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (71, N'Chef ', N'Gujrati Dishes')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (72, N'Chef ', N'Rajsthani Dishes')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (73, N'Crafting', N'Glass Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (74, N'Crafting', N'Flower')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (75, N'Crafting', N'Networking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (76, N'Crafting', N'Needlework')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (77, N'Crafting', N'Paper Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (78, N'Crafting', N'Stone Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (79, N'Crafting', N'Furniture craft')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (80, N'Photography', N'Wildlife ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (81, N'Photography', N'Aerial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (82, N'Photography', N'Sports')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (83, N'Photography', N'Portrait')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (84, N'Photography', N'Wedding')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (85, N'Photography', N'Fashion')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (86, N'Doctor', N'Cardiologist')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (87, N'Doctor', N'Allergist')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (88, N'Doctor', N'Dermatologists')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (89, N'Doctor', N'Gastrologists')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (90, N'Accounting', N'Tax')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (91, N'Accounting', N'Financial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (92, N'Accounting', N'Management ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (93, N'Accounting', N'Public ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (94, N'Accounting', N'Forensic')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (95, N'Accounting', N'Government')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (96, N'Teacher', N'Math')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (97, N'Teacher', N'Physics')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (98, N'Teacher', N'Chemistry')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (99, N'Teacher', N'Histroy')
GO
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (100, N'Teacher', N'Geography')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (101, N'Teacher', N'Sports')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (102, N'Teacher', N'Singing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (103, N'Teacher', N'Dancing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (104, N'Teacher', N'English')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (105, N'Teacher', N'Hindi')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (106, N'Teacher', N'Marathi')
SET IDENTITY_INSERT [dbo].[SkillMaster] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (1, N'Prakash Kumar', N'rupali@gmail.com', N'dm2eZ5pXACT/0yJoyoaJ70xeiMkOg8ph5xTXCCQjxUKC6lRjexHfpabzzxi/f/HdpzngAlWzIC0pbUigpNWDGkQifkwaGQ==', N'1236', N'Mumbai', NULL, N'2 Years', N'Coding', N'Photography', N'Python, Java', N'Software Developer', N'94.4', N'79.69', N'8.2', N'', N'Computer', N'', N'', N'', N'', N'Mumbai University', N'')
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (2, N'dssdfds', N'dsfdsf@g.com', N'WaA1t1TKrP3kprOPP85WMujYEKsYyRRxAaxxg90qm2+kTkA7jPya+iqsBH135GALwH4tHwhTVYerlH49CqjAz7fXtQxNmA==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (3, N'asfjop', N'jospdjf@gmail.com', N'q13Htm9Gvdinbjo4QYHHX/glRsFZeLPidNQI/I6iqTqWOdLk4nzng1Wc6bW/MY9H4QH38zJCCcyiCpsMSV86i2PburLB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (4, N'', N'', N'4Mzg5QccStavjlstcBei9XRICnY8xEP6fGn75taMVeuR16mAUHX8bNx+gV9AD4+UNh2JYv/Qx8bvYVaK0YRqDycwNWvStg==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (5, N'', N'', N'oupeutxSDQxafRMTu57ZjnW31joT2JX0l3ONTyR2aAjTSOdXezEgDXxwDaS738narasa/+g2rx683vejJHMwVJZb3zBt9Q==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (6, N'', N'', N'mIETxPKQC2GTvVNApvfa1dAWoBk06zaWapHPJePaWkCzr4LH6qQsXc6dIoaNU//YSwfxIe4ChKtQWCJNs43Li4ZLoas=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (7, N'', N'', N'lsx+CZJDXfL/3AExBGssmrWKeAvtaaykvawI+TBP5pXhIKx2UhN2O3AlNNAIrP23n7j5qUP/a0M1sNqfTWogT2ti+WBpkA==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (8, N'', N'', N'o37iPR8WTHPDkwC+3qWjQ0Z9BGaAW82w7zl52wkx0L0+xR5HRWUiBkAvGVkhJ9l2etvjdFFj0RjF2wg3PJsIfjCUcCLQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (9, N'sf', N'sdf@gmail.com', N'WZszD64yjWqqETdHpn5oIe7UPQj38iSM9h2O0+LhQWt6ccgbisvhqFdu+rlzvQPri1dYAWd57rp+XjxerIQBbRGBOEag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
SET IDENTITY_INSERT [dbo].[UserSkill] ON 

INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (2, N'1', N'3', N'6', N'PHP')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (3, N'1', N'6', N'1', N'Cooking')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (4, N'1', N'5', N'5', N'Designing')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (9, N'1', N'1', N'10', N'C')
SET IDENTITY_INSERT [dbo].[UserSkill] OFF
ALTER TABLE [dbo].[AptitudeAnswers] ADD  CONSTRAINT [DF_AptitudeAnswers_datetaken]  DEFAULT (getdate()) FOR [Datetaken]
GO
ALTER TABLE [dbo].[AptitudeScoreCard] ADD  CONSTRAINT [DF_AptitudeScoreCard_Datetaken]  DEFAULT (getdate()) FOR [Datetaken]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Phone]  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_City]  DEFAULT (NULL) FOR [Location]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_photo]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Experience]  DEFAULT (NULL) FOR [Experience]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Passion]  DEFAULT (NULL) FOR [Passion]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Interest]  DEFAULT (NULL) FOR [Interest]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Skill]  DEFAULT (NULL) FOR [Skill]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_JobRole]  DEFAULT (NULL) FOR [JobRole]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_TenthMarks]  DEFAULT (NULL) FOR [TenthMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_TwelthMarks]  DEFAULT (NULL) FOR [TwelthMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_UGMarks]  DEFAULT (NULL) FOR [UGMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_PGMarks]  DEFAULT (NULL) FOR [GMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_UGStream]  DEFAULT (NULL) FOR [UGStream]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_PGStream]  DEFAULT (NULL) FOR [GStream]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Profession]  DEFAULT (NULL) FOR [Profession]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_OtherEducation]  DEFAULT (NULL) FOR [OtherEducation]
GO
/****** Object:  StoredProcedure [dbo].[addaptiresult]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addaptiresult]
	-- Add the parameters for the stored procedure here
	@userid varchar(50),
	@questionid varchar(255),
	@selectanswer varchar(255),
	@Datetaken datetime2(7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into AptitudeAnswers(userid, questionid, selectanswer, Datetaken) Values(@userid, @questionid, @selectanswer, @Datetaken)
END
GO
/****** Object:  StoredProcedure [dbo].[addskill]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addskill] 
	-- Add the parameters for the stored procedure here
	@Userid varchar(255),
	@Skillid varchar(255),
	@Skillrate varchar(255),
	@Skillname varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into UserSkill(Userid, Skillid, Skillrate, SkillName) Values(@Userid, @Skillid, @Skillrate, @Skillname)
END
GO
/****** Object:  StoredProcedure [dbo].[aptiscorecard]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[aptiscorecard] 
	-- Add the parameters for the stored procedure here
	@userid varchar(255),
	@skillid varchar(255),
	@skillname varchar(255),
	@counter varchar(255),
	@Datetaken datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into AptitudeScoreCard(userid, skillid, skillname, counter, Datetaken) Values(@userid,@skillid,@skillname,@counter, @Datetaken)
END
GO
/****** Object:  StoredProcedure [dbo].[deleteskillid]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteskillid] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from UserSkill
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getaptianswers]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getaptianswers]
	-- Add the parameters for the stored procedure here
          @id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

	Select AptitudeScoreCard.counter, AptitudeScoreCard.skillname, AptitudeAnswers.questionid, AptitudeAnswers.selectanswer, AptitudeQuestions.Question, AptitudeScoreCard.Datetaken,
	       AptitudeQuestions.OptOne, AptitudeQuestions.OptTwo, AptitudeQuestions.OptThree, AptitudeQuestions.OptFour, AptitudeQuestions.CrtAnswer
	from ((AptitudeScoreCard
	INNER JOIN AptitudeAnswers ON AptitudeScoreCard.Datetaken = AptitudeAnswers.Datetaken and AptitudeScoreCard.id=@id )
	INNER JOIN AptitudeQuestions ON AptitudeAnswers.questionid=AptitudeQuestions.id)


END
GO
/****** Object:  StoredProcedure [dbo].[getaptilist]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getaptilist] 
	-- Add the parameters for the stored procedure here
	@userid varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if(@userid=0)
	   BEGIN
			SELECT * from AptitudeScoreCard
	   END
	else
	   BEGIN
			SELECT * from AptitudeScoreCard where userid=@userid
	   END
	
END
GO
/****** Object:  StoredProcedure [dbo].[getAptiQuestions]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAptiQuestions]
	-- Add the parameters for the stored procedure here
	@Skillid int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 10 * From AptitudeQuestions where Skillid=@Skillid
	ORDER BY NEWID()



END


GO
/****** Object:  StoredProcedure [dbo].[getrating]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getrating]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from RatingMaster
END
GO
/****** Object:  StoredProcedure [dbo].[getskilldatabyid]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getskilldatabyid]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from UserSkill where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getskilllist]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getskilllist]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from SkillMaster
END
GO
/****** Object:  StoredProcedure [dbo].[getuserdata]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getuserdata] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from UserMaster where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getuserskilllist]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getuserskilllist]
	-- Add the parameters for the stored procedure here
	@Userid varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@Userid=0)
	   BEGIN 
	      select * from UserSkill 
	   END
	else
	    BEGIN
		   SELECT * from UserSkill where Userid=@userid
		END

    -- Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[loginuser]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[loginuser]
	-- Add the parameters for the stored procedure here
	@Email varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id, Name, Email, Password from UserMaster where Email=@Email 
END
GO
/****** Object:  StoredProcedure [dbo].[registeruser]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[registeruser]
	-- Add the parameters for the stored procedure here
	@Name varchar(255),
	@Email varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into UserMaster(Name,Email,Password) Values(@Name, @Email, @Password)
END
GO
/****** Object:  StoredProcedure [dbo].[resultspara]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[resultspara] 
	-- Add the parameters for the stored procedure here
	@userid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Skillrate, SkillName     from UserSkill where Userid=@userid

	select counter, skillname from AptitudeScoreCard where userid=@userid
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePassword]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePassword] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Password varchar(255)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET Password=@Password
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserBasicDetail]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUserBasicDetail] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Email varchar(255),
	@Phone varchar(255),
	@Location varchar(255),
	@Experience varchar(255),
	@Passion varchar(255),
	@Interest varchar(255),
	@Skill varchar(255),
	@JobRole varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET Email=@Email, Phone=@Phone, Location=@Location, Experience=@Experience, Passion=@Passion, Interest=@Interest, Skill=@Skill, JobRole=@JobRole
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEducationData]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUserEducationData]
	-- Add the parameters for the stored procedure here
	@id int,
	@TenthMarks varchar(255),
	@TwelthMarks varchar(255),
	@UGMarks varchar(255),
	@GMarks varchar(255),
	@UGStream varchar(255),
	@GStream varchar(255),
	@Profession varchar(255),
	@OtherEducation varchar(255),
	@HighSchool varchar(255),
	@UGSchool varchar(255),
	@GSchool varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET TenthMarks=@TenthMarks, TwelthMarks=@TwelthMarks, UGMarks=@UGMarks, GMarks=@GMarks, UGStream=@UGStream, GStream=@GStream, Profession=@Profession, OtherEducation=@OtherEducation, HighSchool=@HighSchool, UGSchool=@UGSchool, GSchool =@GSchool
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[updateuserskill]    Script Date: 18-04-2019 09:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateuserskill] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Skillrate varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserSkill
	set Skillrate=@Skillrate
	where id=@id
END
GO
