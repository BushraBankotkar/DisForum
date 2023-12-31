/****** Object:  StoredProcedure [dbo].[GetAllThreads]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllThreads]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllThreads]
GO
/****** Object:  StoredProcedure [dbo].[GetCategory]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCategory]
GO
/****** Object:  StoredProcedure [dbo].[MyThreads]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyThreads]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MyThreads]
GO
/****** Object:  StoredProcedure [dbo].[GetSubjectThreads]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubjectThreads]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSubjectThreads]
GO
/****** Object:  StoredProcedure [dbo].[LogAdmin]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogAdmin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LogAdmin]
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisterUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[RegisterUser]
GO
/****** Object:  StoredProcedure [dbo].[GetCommentDetails]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCommentDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCommentDetails]
GO
/****** Object:  UserDefinedFunction [dbo].[getCount]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetReplyCount]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReplyCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetReplyCount]
GO
/****** Object:  StoredProcedure [dbo].[AddNewThread]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewThread]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewThread]
GO
/****** Object:  StoredProcedure [dbo].[AddReply]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddReply]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddReply]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
DROP TABLE [dbo].[admin]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Dislikes]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dislikes]') AND type in (N'U'))
DROP TABLE [dbo].[Dislikes]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Report]') AND type in (N'U'))
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[Threads]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Threads]') AND type in (N'U'))
DROP TABLE [dbo].[Threads]
GO
/****** Object:  Table [dbo].[users]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Likes]') AND type in (N'U'))
DROP TABLE [dbo].[Likes]
GO
/****** Object:  Default [DF_Dislikes_dislikes]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Dislikes_dislikes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Dislikes]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Dislikes_dislikes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Dislikes] DROP CONSTRAINT [DF_Dislikes_dislikes]
END


End
GO
/****** Object:  Default [DF_Likes_likes]    Script Date: 08/15/2018 20:37:32 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Likes_likes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Likes]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Likes_likes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Likes] DROP CONSTRAINT [DF_Likes_likes]
END


End
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Likes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Likes](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[likes] [int] NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Likes] ON
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (3, 1, 1, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (6, 2, 3, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (7, 1, 3, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (29, 3, 1, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (35, 2, 9, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (49, 1, 2, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (50, 1, 10, 1)
INSERT [dbo].[Likes] ([lid], [uid], [tid], [likes]) VALUES (53, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[Likes] OFF
/****** Object:  Table [dbo].[users]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[uid] [int] NOT NULL,
	[fname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[lname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[gender] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[occupation] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mobile] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dj] [datetime] NULL,
	[profilePic] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[users] ([uid], [fname], [lname], [gender], [address], [country], [occupation], [mobile], [email], [password], [dj], [profilePic]) VALUES (1, N'Bushra', N'Bankotkar', N'Female', N'301, Satyam Heights, B wing, Kharghar, Sector 10.', N'USA', N'student', N'9048736802', N'bushrabankotkar@gmail.com', N'123', CAST(0x0000A928017D2E71 AS DateTime), N'~/uploads/?+91 90496 28054? 20180115_180844.jpg')
INSERT [dbo].[users] ([uid], [fname], [lname], [gender], [address], [country], [occupation], [mobile], [email], [password], [dj], [profilePic]) VALUES (2, N'Bushra', N'Bankotkar', N'Female', N'abcd', N'Sri Lanka', N'Student', N'94783649369', N'beccab9049@gmail.com', N'123', CAST(0x0000A9290157B505 AS DateTime), N'~/uploads/Welcome Scan.jpg')
INSERT [dbo].[users] ([uid], [fname], [lname], [gender], [address], [country], [occupation], [mobile], [email], [password], [dj], [profilePic]) VALUES (3, N'Neha', N'H', N'Female', N'abcd', N'China', N'Student', N'9837473902', N'bushrabankotkar@yahoo.com', N'123', CAST(0x0000A93201763448 AS DateTime), N'~/uploads/tulips.jpg')
/****** Object:  Table [dbo].[Threads]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Threads]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Threads](
	[tid] [int] NOT NULL,
	[sno] [int] NOT NULL,
	[title] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[uid] [int] NULL,
	[dp] [datetime] NULL,
	[catcode] [int] NULL,
 CONSTRAINT [PK_Threads] PRIMARY KEY CLUSTERED 
(
	[tid] ASC,
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (1, 1, N'[Deleted]', N'[Your post has been deleted]', 2, CAST(0x0000A931001214E8 AS DateTime), 6)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (2, 1, N'nope', N'kljf123', 2, CAST(0x0000A93100121E4E AS DateTime), 6)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (3, 1, N'gfkj', N'jkkbhjb', 1, CAST(0x0000A9310139F1C6 AS DateTime), 6)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (4, 1, N'what?', N'bbbbb', 2, CAST(0x0000A93301888624 AS DateTime), 5)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (5, 1, N'jehuiwefhwue', N'hbhjhbvw;qnk', 2, CAST(0x0000A93301889224 AS DateTime), 5)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (6, 1, N'lkhnj', N'bjh', 2, CAST(0x0000A9330188A210 AS DateTime), 7)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (8, 1, N'What is ASP.NET ?', N'ASP.NET is a Server-Side technology which uses object-oriented programming approach. 
Every element in ASP.NET is treated as an object and run on the server. 
ASP.NET allows you to use a fully featured programming language like C-Sharp (C#) or VB.NET to build web applications easily. 

ASP.NET life cycle specifies, how:

ASP.NET processes pages to produce dynamic output

The application and its pages are instantiated and processed

ASP.NET compiles the pages dynamically
The ASP.NET life cycle could be divided into two groups:

-Application Life Cycle
-Page Life Cycle
-hf', 2, CAST(0x0000A93701139F9B AS DateTime), 15)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (9, 1, N'why?', N'This is not the place.
    ehd[a
jhfdvghew 
                       lfpwr', 2, CAST(0x0000A93A0100FC84 AS DateTime), 12)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (10, 1, N'rkh', N'jkejhf 
enfv            kehf
          rkej', 2, CAST(0x0000A93A0102BDF6 AS DateTime), 24)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (11, 1, N'What are the different validators in ASP.NET?', N'', 2, CAST(0x0000A93A017EA30C AS DateTime), 15)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (12, 1, N'What is MVC?', N'', 2, CAST(0x0000A93A01801116 AS DateTime), 15)
INSERT [dbo].[Threads] ([tid], [sno], [title], [text], [uid], [dp], [catcode]) VALUES (13, 1, N'gs', N'ihdeu', 2, CAST(0x0000A93B010039B4 AS DateTime), 24)
/****** Object:  Table [dbo].[Report]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Report]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Report](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[tid] [int] NULL,
	[reason] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comments] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Report] ON
INSERT [dbo].[Report] ([rid], [uid], [tid], [reason], [comments]) VALUES (1, 3, 1, N'kjfh', N'jghjg')
INSERT [dbo].[Report] ([rid], [uid], [tid], [reason], [comments]) VALUES (2, 3, 2, N'kjght', N'jghjfgjh')
INSERT [dbo].[Report] ([rid], [uid], [tid], [reason], [comments]) VALUES (5, 2, 2, N'kdhgu', N'hjdhhejfd')
INSERT [dbo].[Report] ([rid], [uid], [tid], [reason], [comments]) VALUES (6, 2, 1, N'kjg`jh', N'jbjh')
SET IDENTITY_INSERT [dbo].[Report] OFF
/****** Object:  Table [dbo].[Dislikes]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dislikes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dislikes](
	[dis_id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[dislikes] [int] NULL,
 CONSTRAINT [PK_Dislikes] PRIMARY KEY CLUSTERED 
(
	[dis_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Dislikes] ON
INSERT [dbo].[Dislikes] ([dis_id], [uid], [tid], [dislikes]) VALUES (4, 2, 9, 1)
INSERT [dbo].[Dislikes] ([dis_id], [uid], [tid], [dislikes]) VALUES (24, 2, 8, 1)
INSERT [dbo].[Dislikes] ([dis_id], [uid], [tid], [dislikes]) VALUES (25, 2, 5, 1)
INSERT [dbo].[Dislikes] ([dis_id], [uid], [tid], [dislikes]) VALUES (26, 1, 8, 1)
SET IDENTITY_INSERT [dbo].[Dislikes] OFF
/****** Object:  Table [dbo].[Contact]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[con_id] [int] IDENTITY(1,1) NOT NULL,
	[emailID] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[message] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[name] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[con_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([con_id], [emailID], [message], [name]) VALUES (1, N'bushrabankotkar@gmail.com', N'123', N'Bushra')
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[comments]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[comments](
	[cid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[comm] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dp] [datetime] NULL,
	[uid] [int] NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (1, 3, N'kkk', CAST(0x0000A931013C14C1 AS DateTime), 1)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (2, 3, N'kkk', CAST(0x0000A931013C9F7D AS DateTime), 1)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (3, 1, N're', CAST(0x0000A931013CF3C0 AS DateTime), 1)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (4, 1, N'fgfg', CAST(0x0000A931013D69AE AS DateTime), 1)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (5, 3, N'no', CAST(0x0000A931014F02FB AS DateTime), 1)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (16, 1, N'kjfiejr', CAST(0x0000A933016C7A05 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (17, 2, N'hello this is me', CAST(0x0000A933017199C9 AS DateTime), 3)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (18, 6, N'no', CAST(0x0000A9330189979D AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (19, 2, N'klfjdf', CAST(0x0000A934000418BA AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (20, 4, N'i know', CAST(0x0000A9340006511B AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (21, 2, N'bjkn', CAST(0x0000A93500D5C5AF AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (22, 8, N'Good!!', CAST(0x0000A93701142CAE AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (23, 8, N'When a page is requested, it is loaded into the server memory,
processed, and sent to the browser. 
Then it is unloaded from the memory. 
At each of these steps, methods and events are available, 
which could be overridden according to the need of the application. 
In other words, you can write your own code to override the default code.

The Page class creates a hierarchical tree of all the controls on the page. 
All the components on the page, except the directives, are part of this control tree. 
You can see the control tree by adding trace= "true" to the page directive. 
We will cover page directives and tracing under ''directives'' and ''event handling''.', CAST(0x0000A93701154074 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (24, 8, N'This is njddhew ifhiuwebfg ewuoggewwwwwwwwwwwwwwwwwwelkhe.
         So djkfkgerjh
nmbfjer', CAST(0x0000A93A0100C082 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (25, 9, N'    f', CAST(0x0000A93A0101ABAA AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (26, 9, N'mndfjer 
     efr', CAST(0x0000A93A0101B55D AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (27, 5, N'why is it>
-dnfj
-dfh
', CAST(0x0000A93A0105BF33 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (28, 5, N'why?', CAST(0x0000A93A01060656 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (29, 8, N'<b>dd</b>', CAST(0x0000A93A01100A3A AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (30, 11, N'The following are the Validation Controls in ASP.NET:

-RequiredFieldValidator Control
-CompareValidator Control
-RangeValidator Control
-RegularExpressionValidator Control
-CustomFieldValidator Control
-ValidationSummary', CAST(0x0000A93A017FC80C AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (31, 12, N'Model-View-Controller (MVC) is a pattern to separate an application into the following three main components:

1 Model
2 View
3 Controller
The ASP.NET MVC framework provides an alternative to the ASP.NET Web Forms pattern for creating web applications. 
The ASP.NET MVC Framework is a lightweight, highly testable presentation framework that 
(as with Web Forms-based applications) is integrated with existing ASP.NET features, 
such as master pages and membership-based authentications. 
The MVC framework is defined in the System.Web.Mvc assembly. 
It provides full control over HTML, JavaScript and CSS. 
It''s the better as well as a recommended approach for large-scale applications where various teams are working together.
', CAST(0x0000A93A0180507C AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (32, 12, N'good!', CAST(0x0000A93A01807AE9 AS DateTime), 2)
INSERT [dbo].[comments] ([cid], [tid], [comm], [dp], [uid]) VALUES (33, 11, N'There are the following two types of validation in ASP.NET:

Client-Side Validation
Server-Side Validation

Client-Side Validation:

When validation is done on the client browser, then it is known as Client-Side Validation.
 We use JavaScript to do the Client-Side Validation.

Server-Side Validation:

When validation occurs on the server, then it is known as Server-Side Validation. 
Server-Side Validation is a secure form of validation. 
The main advantage of Server-Side Validation is if the user somehow bypasses the Client-Side Validation, 
we can still catch the problem on server-side.', CAST(0x0000A93A0180C62B AS DateTime), 1)
/****** Object:  Table [dbo].[Category]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[catcode] [int] IDENTITY(1,1) NOT NULL,
	[catname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nothreads] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[catcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (5, N'Language', 2)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (6, N'Books', 4)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (7, N'Religion', 1)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (8, N'Uncategorized', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (9, N'Comics', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (10, N'Movies', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (11, N'Television', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (12, N'Engineer', 1)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (13, N'MCA', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (14, N'SQL', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (15, N'ASP.NET', 3)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (16, N'Cooking', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (17, N'Entertainment', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (18, N'Countries', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (19, N'World', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (20, N'News', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (21, N'Jokes', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (22, N'People', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (23, N'Technology', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (24, N'Art', 2)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (25, N'Medical', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (26, N'Maths', 0)
INSERT [dbo].[Category] ([catcode], [catname], [nothreads]) VALUES (27, N'Industry', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[admin](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([aid], [username], [password]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[admin] ([aid], [username], [password]) VALUES (2, N'bushra', N'123456')
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  StoredProcedure [dbo].[AddReply]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddReply]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddReply]
	(@uid int, @tid int, @comm text)
AS
Declare @cid int
begin tran
    select @cid = isnull(max(cid),0) + 1
    from  comments;

	insert into comments 
      values(@cid,@tid,@comm,getdate(),@uid)

	  commit tran
    ' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewThread]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewThread]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddNewThread]
	(@uid int, @title text, @text text, @catcode int)
AS
Declare @tid int
  begin tran
    select @tid = isnull(max(tid),0) + 1
    from Threads;
    
    insert into Threads 
      values(@tid,1,@title,@text,@uid,getdate(),@catcode)
    
    update Category 
        set  nothreads = (select count(*) from Threads t
    where t.catcode = @catcode) where catcode=@catcode;
  
  commit tran
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetReplyCount]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReplyCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetReplyCount](@tid int)
	RETURNS int
AS
	BEGIN
	   declare @cnt int
	   select @cnt = count(*)
	   from comments
	   where tid = @tid
	   
	   return @cnt;
	END' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[getCount]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getCount]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getCount](@catcode int)
	RETURNS int
AS
	BEGIN
	   declare @cnt int
	   select @cnt = count(*)
	   from Threads
	   where catcode = @catcode
	   
	   return @cnt;
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCommentDetails]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCommentDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetCommentDetails](@tid int) as
	select c.uid, fname, comm, dp, profilePic, cid
from  comments c , users u 
where tid = @tid and  c.uid = u.uid;
' 
END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisterUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[RegisterUser]
	(
	@fname varchar(50),
	@lname varchar(50),
	@gender varchar(50),
	@address varchar(50),
	@country varchar(50),
	@occupation varchar(50),
	@mobile varchar(50),
	@email varchar(50),
	@password varchar(50),
	@profilePic varchar(50)
	)
	
AS
	declare @uid int

	select @uid = isnull( max(uid),0)  + 1
	from users;

	insert into users 
	  values(@uid, @fname, @lname, @gender, @address, @country, @occupation, @mobile, @email, @password,
	      getdate(), @profilePic); 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LogAdmin]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogAdmin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LogAdmin]
	
	(
	@username varchar(50),
	@password varchar(50)
	)
	
AS
	Select * from admin where username = @username and password = @password
	
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubjectThreads]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubjectThreads]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetSubjectThreads](@catcode int)
	as
 select  tid, convert(varchar(30),title) title, dp, u.uid, u.fname,
 dbo.GetReplyCount(tid)  noreplys
 from  Threads t, users u
 where catcode = @catcode and sno = 1 and t.uid = u.uid      ' 
END
GO
/****** Object:  StoredProcedure [dbo].[MyThreads]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyThreads]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[MyThreads](@uid int)
	AS
    SELECT t.tid, c.catname, 
    CONVERT(varchar(30),t.title) AS Title, 
    t.dp, dbo.GetReplyCount(t.tid) AS noreplys 
    FROM Threads AS t INNER JOIN Category AS c 
    ON t.catcode = c.catcode WHERE t.sno = 1 and
     uid = @uid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategory]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetCategory]
	
AS
SELECT catcode, catname, dbo.getCount(catcode) noOfThread
	from Category
	order by catname
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllThreads]    Script Date: 08/15/2018 20:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllThreads]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllThreads]

as
select  tid, convert(varchar(30),title) title, dp, u.uid, u.fname,
 dbo.GetReplyCount(tid)  noreplys
 from  Threads t, users u
	where t.uid=u.uid
	order by dp desc
	RETURN
' 
END
GO
/****** Object:  Default [DF_Dislikes_dislikes]    Script Date: 08/15/2018 20:37:32 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Dislikes_dislikes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Dislikes]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Dislikes_dislikes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Dislikes] ADD  CONSTRAINT [DF_Dislikes_dislikes]  DEFAULT ((0)) FOR [dislikes]
END


End
GO
/****** Object:  Default [DF_Likes_likes]    Script Date: 08/15/2018 20:37:32 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Likes_likes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Likes]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Likes_likes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Likes] ADD  CONSTRAINT [DF_Likes_likes]  DEFAULT ((0)) FOR [likes]
END


End
GO
