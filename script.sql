USE [Upgrowth]
GO
/****** Object:  Table [dbo].[AptitudeAnswers]    Script Date: 16-Feb-19 1:38:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeAnswers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionid] [int] NULL,
	[options] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeAnswers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeQuestions]    Script Date: 16-Feb-19 1:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeQuestions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [varchar](255) NULL,
	[Skillid] [int] NULL,
	[SkillName] [varchar](255) NULL,
	[questions] [varchar](255) NULL,
	[answers] [varchar](255) NULL,
	[points] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeQuestions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeResult]    Script Date: 16-Feb-19 1:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeResult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[TestDate] [varchar](255) NULL,
	[SkillTag] [varchar](255) NULL,
	[TotalPoints] [varchar](255) NULL,
	[Points] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillMaster]    Script Date: 16-Feb-19 1:38:40 PM ******/
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
/****** Object:  Table [dbo].[UserData]    Script Date: 16-Feb-19 1:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenthMarks] [varchar](10) NULL,
	[TwelthMarks] [varchar](10) NULL,
	[UGMarks] [varchar](10) NULL,
	[PGMarks] [varchar](10) NULL,
	[UGStream] [varchar](255) NULL,
	[PGStream] [varchar](255) NULL,
	[Profession] [varchar](255) NULL,
	[JobPostion] [varchar](255) NULL,
	[Intrest] [varchar](max) NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 16-Feb-19 1:38:40 PM ******/
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
	[Address] [varchar](max) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Country] [varchar](255) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 16-Feb-19 1:38:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NULL,
	[Skillid] [int] NULL,
	[Skillrate] [varchar](20) NULL,
	[SkillName] [varchar](255) NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
