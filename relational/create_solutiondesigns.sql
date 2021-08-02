USE [master]
GO
/****** Object:  Database [solutiondesigns]    Script Date: 7/29/2021 5:27:10 PM ******/
CREATE DATABASE [solutiondesigns]
GO

USE [solutiondesigns]
GO
/****** Object:  Table [dbo].[sd_actiontypes]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_actiontypes](
	[actiontypeid] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[iconurl] [varchar](128) NOT NULL,
 CONSTRAINT [PK_sd_actiontypes] PRIMARY KEY CLUSTERED 
(
	[actiontypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_designs]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_designs](
	[designid] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [text] NOT NULL,
	[ownerid] [bigint] NOT NULL,
	[creationdate] [datetime] NOT NULL,
	[publishdate] [datetime] NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_sd_designs] PRIMARY KEY CLUSTERED 
(
	[designid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_keywords]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_keywords](
	[keywordid] [int] IDENTITY(1,1) NOT NULL,
	[word] [varchar](30) NULL,
 CONSTRAINT [PK_sd_keywords] PRIMARY KEY CLUSTERED 
(
	[keywordid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_links]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_links](
	[linkid] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](128) NULL,
 CONSTRAINT [PK_sd_links] PRIMARY KEY CLUSTERED 
(
	[linkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_owners]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_owners](
	[ownerid] [bigint] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](40) NOT NULL,
	[lastname] [varchar](40) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varbinary](200) NOT NULL,
	[enabled] [bit] NOT NULL,
	[creationdate] [datetime] NOT NULL,
 CONSTRAINT [PK_sd_owners] PRIMARY KEY CLUSTERED 
(
	[ownerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_problemkeywords]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_problemkeywords](
	[problemid] [int] NOT NULL,
	[keywordid] [int] NOT NULL,
	[deleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_problemlinks]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_problemlinks](
	[problemid] [int] NOT NULL,
	[linkid] [int] NOT NULL,
	[deleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_problems]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_problems](
	[problemid] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](60) NOT NULL,
	[description] [text] NOT NULL,
	[creationdate] [datetime] NOT NULL,
	[active] [bit] NOT NULL,
	[ownerid] [bigint] NULL,
 CONSTRAINT [PK_sd_problems] PRIMARY KEY CLUSTERED 
(
	[problemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_solutions]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_solutions](
	[problemid] [int] NOT NULL,
	[designid] [bigint] NOT NULL,
	[comments] [nvarchar](2000) NOT NULL,
	[posttime] [datetime] NOT NULL,
	[active] [bit] NOT NULL,
	[solutionid] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_sd_solutions] PRIMARY KEY CLUSTERED 
(
	[solutionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sd_solutionslog]    Script Date: 7/29/2021 5:27:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sd_solutionslog](
	[solutionlogid] [bigint] IDENTITY(1,1) NOT NULL,
	[posttime] [datetime] NULL,
	[actiontypeid] [smallint] NULL,
	[solutionid] [bigint] NULL,
 CONSTRAINT [PK_sd_solutionslog] PRIMARY KEY CLUSTERED 
(
	[solutionlogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sd_designs] ADD  CONSTRAINT [DF_sd_designs_creationdate]  DEFAULT (getdate()) FOR [creationdate]
GO
ALTER TABLE [dbo].[sd_designs] ADD  CONSTRAINT [DF_sd_designs_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[sd_owners] ADD  CONSTRAINT [DF_sd_owners_enabled]  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[sd_owners] ADD  CONSTRAINT [DF_sd_owners_creationdate]  DEFAULT (getdate()) FOR [creationdate]
GO
ALTER TABLE [dbo].[sd_problemkeywords] ADD  CONSTRAINT [DF_sd_problemkeywords_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[sd_problemlinks] ADD  CONSTRAINT [DF_sd_problemlinks_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[sd_problems] ADD  CONSTRAINT [DF_sd_problems_creationdate]  DEFAULT (getdate()) FOR [creationdate]
GO
ALTER TABLE [dbo].[sd_problems] ADD  CONSTRAINT [DF_sd_problems_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[sd_solutions] ADD  CONSTRAINT [DF_sd_solutions_posttime]  DEFAULT (getdate()) FOR [posttime]
GO
ALTER TABLE [dbo].[sd_solutions] ADD  CONSTRAINT [DF_sd_solutions_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[sd_designs]  WITH CHECK ADD  CONSTRAINT [FK_sd_designs_sd_owners] FOREIGN KEY([ownerid])
REFERENCES [dbo].[sd_owners] ([ownerid])
GO
ALTER TABLE [dbo].[sd_designs] CHECK CONSTRAINT [FK_sd_designs_sd_owners]
GO
ALTER TABLE [dbo].[sd_problemkeywords]  WITH CHECK ADD  CONSTRAINT [FK_sd_problemkeywords_sd_keywords] FOREIGN KEY([keywordid])
REFERENCES [dbo].[sd_keywords] ([keywordid])
GO
ALTER TABLE [dbo].[sd_problemkeywords] CHECK CONSTRAINT [FK_sd_problemkeywords_sd_keywords]
GO
ALTER TABLE [dbo].[sd_problemkeywords]  WITH CHECK ADD  CONSTRAINT [FK_sd_problemkeywords_sd_problems] FOREIGN KEY([problemid])
REFERENCES [dbo].[sd_problems] ([problemid])
GO
ALTER TABLE [dbo].[sd_problemkeywords] CHECK CONSTRAINT [FK_sd_problemkeywords_sd_problems]
GO
ALTER TABLE [dbo].[sd_problemlinks]  WITH CHECK ADD  CONSTRAINT [FK_sd_problemlinks_sd_links] FOREIGN KEY([linkid])
REFERENCES [dbo].[sd_links] ([linkid])
GO
ALTER TABLE [dbo].[sd_problemlinks] CHECK CONSTRAINT [FK_sd_problemlinks_sd_links]
GO
ALTER TABLE [dbo].[sd_problemlinks]  WITH CHECK ADD  CONSTRAINT [FK_sd_problemlinks_sd_problems] FOREIGN KEY([problemid])
REFERENCES [dbo].[sd_problems] ([problemid])
GO
ALTER TABLE [dbo].[sd_problemlinks] CHECK CONSTRAINT [FK_sd_problemlinks_sd_problems]
GO
ALTER TABLE [dbo].[sd_problems]  WITH CHECK ADD  CONSTRAINT [FK_sd_problems_sd_owners] FOREIGN KEY([ownerid])
REFERENCES [dbo].[sd_owners] ([ownerid])
GO
ALTER TABLE [dbo].[sd_problems] CHECK CONSTRAINT [FK_sd_problems_sd_owners]
GO
ALTER TABLE [dbo].[sd_solutions]  WITH CHECK ADD  CONSTRAINT [FK_sd_solutions_sd_designs] FOREIGN KEY([designid])
REFERENCES [dbo].[sd_designs] ([designid])
GO
ALTER TABLE [dbo].[sd_solutions] CHECK CONSTRAINT [FK_sd_solutions_sd_designs]
GO
ALTER TABLE [dbo].[sd_solutions]  WITH CHECK ADD  CONSTRAINT [FK_sd_solutions_sd_problems] FOREIGN KEY([problemid])
REFERENCES [dbo].[sd_problems] ([problemid])
GO
ALTER TABLE [dbo].[sd_solutions] CHECK CONSTRAINT [FK_sd_solutions_sd_problems]
GO
ALTER TABLE [dbo].[sd_solutionslog]  WITH CHECK ADD  CONSTRAINT [FK_sd_solutionslog_sd_actiontypes] FOREIGN KEY([actiontypeid])
REFERENCES [dbo].[sd_actiontypes] ([actiontypeid])
GO
ALTER TABLE [dbo].[sd_solutionslog] CHECK CONSTRAINT [FK_sd_solutionslog_sd_actiontypes]
GO
ALTER TABLE [dbo].[sd_solutionslog]  WITH CHECK ADD  CONSTRAINT [FK_sd_solutionslog_sd_solutions] FOREIGN KEY([solutionid])
REFERENCES [dbo].[sd_solutions] ([solutionid])
GO
ALTER TABLE [dbo].[sd_solutionslog] CHECK CONSTRAINT [FK_sd_solutionslog_sd_solutions]
GO
USE [master]
GO
ALTER DATABASE [solutiondesigns] SET  READ_WRITE 
GO