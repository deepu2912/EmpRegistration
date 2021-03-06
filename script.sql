USE [master]
GO
/****** Object:  Database [Emp_reg]    Script Date: 30-08-2020 6:56:36 PM ******/
CREATE DATABASE [Emp_reg]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Emp_reg', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Emp_reg.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Emp_reg_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Emp_reg_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Emp_reg] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Emp_reg].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Emp_reg] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Emp_reg] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Emp_reg] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Emp_reg] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Emp_reg] SET ARITHABORT OFF 
GO
ALTER DATABASE [Emp_reg] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Emp_reg] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Emp_reg] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Emp_reg] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Emp_reg] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Emp_reg] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Emp_reg] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Emp_reg] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Emp_reg] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Emp_reg] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Emp_reg] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Emp_reg] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Emp_reg] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Emp_reg] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Emp_reg] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Emp_reg] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Emp_reg] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Emp_reg] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Emp_reg] SET  MULTI_USER 
GO
ALTER DATABASE [Emp_reg] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Emp_reg] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Emp_reg] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Emp_reg] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Emp_reg] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Emp_reg]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 30-08-2020 6:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NULL,
	[Address] [nchar](100) NULL,
	[City] [nchar](100) NULL,
	[DateofBirth] [nchar](100) NULL,
	[Age] [nchar](100) NULL,
	[PhoneNumber] [nchar](100) NULL,
	[Department] [nchar](100) NULL,
	[Manager] [nchar](100) NULL,
	[DateofJoining] [nchar](100) NULL,
	[DateofLeaving] [nchar](100) NULL,
	[CreationDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 30-08-2020 6:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (1, N'Deepanshu Ahuja                                                                                     ', N'Gurgaon                                                                                             ', N'Gurgaon                                                                                             ', N'2020-02-12                                                                                          ', N'0                                                                                                   ', N'07206969076                                                                                         ', N'Engineering                                                                                         ', N'Mr. Abc                                                                                             ', N'                                                                                                    ', N'                                                                                                    ', CAST(N'2020-06-18T15:21:11.493' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (2, N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', CAST(N'2020-06-18T15:21:23.933' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (3, N'Deepanshu Ahuja                                                                                     ', N'Gurgaon                                                                                             ', N'Gurgaon                                                                                             ', N'2020-06-19                                                                                          ', N'-1                                                                                                  ', N'8395956059                                                                                          ', N'Engineering                                                                                         ', N'Mr. Abc                                                                                             ', N'                                                                                                    ', N'                                                                                                    ', CAST(N'2020-06-18T15:28:04.697' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (4, N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', CAST(N'2020-06-18T16:20:44.760' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (5, N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', N'                                                                                                    ', CAST(N'2020-06-18T16:22:47.583' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (6, N'Deepanshu Ahuja                                                                                     ', N'316, Near Gandhi Park, New Colony                                                                   ', N'Palwal                                                                                              ', N'2017-06-05                                                                                          ', N'3                                                                                                   ', N'4327492389                                                                                          ', N'Engineering                                                                                         ', N'Mr. Abc                                                                                             ', N'2020-06-17                                                                                          ', N'2020-06-16                                                                                          ', CAST(N'2020-06-18T16:49:40.740' AS DateTime))
INSERT [dbo].[tblEmployee] ([ID], [Name], [Address], [City], [DateofBirth], [Age], [PhoneNumber], [Department], [Manager], [DateofJoining], [DateofLeaving], [CreationDate]) VALUES (7, N'Deepanshu Ahuja                                                                                     ', N'316, Near Gandhi Park, New Colony                                                                   ', N'Palwal                                                                                              ', N'2017-06-05                                                                                          ', N'3                                                                                                   ', N'4327492389                                                                                          ', N'Engineering                                                                                         ', N'Mr. Abc                                                                                             ', N'2020-06-23                                                                                          ', N'                                                                                                    ', CAST(N'2020-06-18T16:51:11.193' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
SET IDENTITY_INSERT [dbo].[tblProducts] ON 

INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (1, N'Product - 1', N'Product Description - 1', 10)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (2, N'Product - 2', N'Product Description - 2', 20)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (3, N'Product - 3', N'Product Description - 3', 30)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (4, N'Product - 4', N'Product Description - 4', 40)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (5, N'Product - 5', N'Product Description - 5', 50)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (6, N'Product - 6', N'Product Description - 6', 60)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (7, N'Product - 7', N'Product Description - 7', 70)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (8, N'Product - 8', N'Product Description - 8', 80)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (9, N'Product - 9', N'Product Description - 9', 90)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (10, N'Product - 10', N'Product Description - 10', 100)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (11, N'Product - 11', N'Product Description - 11', 110)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (12, N'Product - 12', N'Product Description - 12', 120)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (13, N'Product - 13', N'Product Description - 13', 130)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (14, N'Product - 14', N'Product Description - 14', 140)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (15, N'Product - 15', N'Product Description - 15', 150)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (16, N'Product - 16', N'Product Description - 16', 160)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (17, N'Product - 17', N'Product Description - 17', 170)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (18, N'Product - 18', N'Product Description - 18', 180)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (19, N'Product - 19', N'Product Description - 19', 190)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (20, N'Product - 20', N'Product Description - 20', 200)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (21, N'Product - 21', N'Product Description - 21', 210)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (22, N'Product - 22', N'Product Description - 22', 220)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (23, N'Product - 23', N'Product Description - 23', 230)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (24, N'Product - 24', N'Product Description - 24', 240)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (25, N'Product - 25', N'Product Description - 25', 250)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (26, N'Product - 26', N'Product Description - 26', 260)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (27, N'Product - 27', N'Product Description - 27', 270)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (28, N'Product - 28', N'Product Description - 28', 280)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (29, N'Product - 29', N'Product Description - 29', 290)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (30, N'Product - 30', N'Product Description - 30', 300)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (31, N'Product - 31', N'Product Description - 31', 310)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (32, N'Product - 32', N'Product Description - 32', 320)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (33, N'Product - 33', N'Product Description - 33', 330)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (34, N'Product - 34', N'Product Description - 34', 340)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (35, N'Product - 35', N'Product Description - 35', 350)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (36, N'Product - 36', N'Product Description - 36', 360)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (37, N'Product - 37', N'Product Description - 37', 370)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (38, N'Product - 38', N'Product Description - 38', 380)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (39, N'Product - 39', N'Product Description - 39', 390)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (40, N'Product - 40', N'Product Description - 40', 400)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (41, N'Product - 41', N'Product Description - 41', 410)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (42, N'Product - 42', N'Product Description - 42', 420)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (43, N'Product - 43', N'Product Description - 43', 430)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (44, N'Product - 44', N'Product Description - 44', 440)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (45, N'Product - 45', N'Product Description - 45', 450)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (46, N'Product - 46', N'Product Description - 46', 460)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (47, N'Product - 47', N'Product Description - 47', 470)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (48, N'Product - 48', N'Product Description - 48', 480)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (49, N'Product - 49', N'Product Description - 49', 490)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (50, N'Product - 50', N'Product Description - 50', 500)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (51, N'Product - 51', N'Product Description - 51', 510)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (52, N'Product - 52', N'Product Description - 52', 520)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (53, N'Product - 53', N'Product Description - 53', 530)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (54, N'Product - 54', N'Product Description - 54', 540)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (55, N'Product - 55', N'Product Description - 55', 550)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (56, N'Product - 56', N'Product Description - 56', 560)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (57, N'Product - 57', N'Product Description - 57', 570)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (58, N'Product - 58', N'Product Description - 58', 580)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (59, N'Product - 59', N'Product Description - 59', 590)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (60, N'Product - 60', N'Product Description - 60', 600)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (61, N'Product - 61', N'Product Description - 61', 610)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (62, N'Product - 62', N'Product Description - 62', 620)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (63, N'Product - 63', N'Product Description - 63', 630)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (64, N'Product - 64', N'Product Description - 64', 640)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (65, N'Product - 65', N'Product Description - 65', 650)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (66, N'Product - 66', N'Product Description - 66', 660)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (67, N'Product - 67', N'Product Description - 67', 670)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (68, N'Product - 68', N'Product Description - 68', 680)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (69, N'Product - 69', N'Product Description - 69', 690)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (70, N'Product - 70', N'Product Description - 70', 700)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (71, N'Product - 71', N'Product Description - 71', 710)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (72, N'Product - 72', N'Product Description - 72', 720)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (73, N'Product - 73', N'Product Description - 73', 730)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (74, N'Product - 74', N'Product Description - 74', 740)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (75, N'Product - 75', N'Product Description - 75', 750)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (76, N'Product - 76', N'Product Description - 76', 760)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (77, N'Product - 77', N'Product Description - 77', 770)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (78, N'Product - 78', N'Product Description - 78', 780)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (79, N'Product - 79', N'Product Description - 79', 790)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (80, N'Product - 80', N'Product Description - 80', 800)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (81, N'Product - 81', N'Product Description - 81', 810)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (82, N'Product - 82', N'Product Description - 82', 820)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (83, N'Product - 83', N'Product Description - 83', 830)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (84, N'Product - 84', N'Product Description - 84', 840)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (85, N'Product - 85', N'Product Description - 85', 850)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (86, N'Product - 86', N'Product Description - 86', 860)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (87, N'Product - 87', N'Product Description - 87', 870)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (88, N'Product - 88', N'Product Description - 88', 880)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (89, N'Product - 89', N'Product Description - 89', 890)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (90, N'Product - 90', N'Product Description - 90', 900)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (91, N'Product - 91', N'Product Description - 91', 910)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (92, N'Product - 92', N'Product Description - 92', 920)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (93, N'Product - 93', N'Product Description - 93', 930)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (94, N'Product - 94', N'Product Description - 94', 940)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (95, N'Product - 95', N'Product Description - 95', 950)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (96, N'Product - 96', N'Product Description - 96', 960)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (97, N'Product - 97', N'Product Description - 97', 970)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (98, N'Product - 98', N'Product Description - 98', 980)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (99, N'Product - 99', N'Product Description - 99', 990)
GO
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (100, N'Product - 100', N'Product Description - 100', 1000)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (101, N'Product - 101', N'Product Description - 101', 1010)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (102, N'Product - 102', N'Product Description - 102', 1020)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (103, N'Product - 103', N'Product Description - 103', 1030)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (104, N'Product - 104', N'Product Description - 104', 1040)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (105, N'Product - 105', N'Product Description - 105', 1050)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (106, N'Product - 106', N'Product Description - 106', 1060)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (107, N'Product - 107', N'Product Description - 107', 1070)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (108, N'Product - 108', N'Product Description - 108', 1080)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (109, N'Product - 109', N'Product Description - 109', 1090)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (110, N'Product - 110', N'Product Description - 110', 1100)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (111, N'Product - 111', N'Product Description - 111', 1110)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (112, N'Product - 112', N'Product Description - 112', 1120)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (113, N'Product - 113', N'Product Description - 113', 1130)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (114, N'Product - 114', N'Product Description - 114', 1140)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (115, N'Product - 115', N'Product Description - 115', 1150)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (116, N'Product - 116', N'Product Description - 116', 1160)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (117, N'Product - 117', N'Product Description - 117', 1170)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (118, N'Product - 118', N'Product Description - 118', 1180)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (119, N'Product - 119', N'Product Description - 119', 1190)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (120, N'Product - 120', N'Product Description - 120', 1200)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (121, N'Product - 121', N'Product Description - 121', 1210)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (122, N'Product - 122', N'Product Description - 122', 1220)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (123, N'Product - 123', N'Product Description - 123', 1230)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (124, N'Product - 124', N'Product Description - 124', 1240)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (125, N'Product - 125', N'Product Description - 125', 1250)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (126, N'Product - 126', N'Product Description - 126', 1260)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (127, N'Product - 127', N'Product Description - 127', 1270)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (128, N'Product - 128', N'Product Description - 128', 1280)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (129, N'Product - 129', N'Product Description - 129', 1290)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (130, N'Product - 130', N'Product Description - 130', 1300)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (131, N'Product - 131', N'Product Description - 131', 1310)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (132, N'Product - 132', N'Product Description - 132', 1320)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (133, N'Product - 133', N'Product Description - 133', 1330)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (134, N'Product - 134', N'Product Description - 134', 1340)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (135, N'Product - 135', N'Product Description - 135', 1350)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (136, N'Product - 136', N'Product Description - 136', 1360)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (137, N'Product - 137', N'Product Description - 137', 1370)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (138, N'Product - 138', N'Product Description - 138', 1380)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (139, N'Product - 139', N'Product Description - 139', 1390)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (140, N'Product - 140', N'Product Description - 140', 1400)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (141, N'Product - 141', N'Product Description - 141', 1410)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (142, N'Product - 142', N'Product Description - 142', 1420)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (143, N'Product - 143', N'Product Description - 143', 1430)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (144, N'Product - 144', N'Product Description - 144', 1440)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (145, N'Product - 145', N'Product Description - 145', 1450)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (146, N'Product - 146', N'Product Description - 146', 1460)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (147, N'Product - 147', N'Product Description - 147', 1470)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (148, N'Product - 148', N'Product Description - 148', 1480)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (149, N'Product - 149', N'Product Description - 149', 1490)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (150, N'Product - 150', N'Product Description - 150', 1500)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (151, N'Product - 151', N'Product Description - 151', 1510)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (152, N'Product - 152', N'Product Description - 152', 1520)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (153, N'Product - 153', N'Product Description - 153', 1530)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (154, N'Product - 154', N'Product Description - 154', 1540)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (155, N'Product - 155', N'Product Description - 155', 1550)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (156, N'Product - 156', N'Product Description - 156', 1560)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (157, N'Product - 157', N'Product Description - 157', 1570)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (158, N'Product - 158', N'Product Description - 158', 1580)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (159, N'Product - 159', N'Product Description - 159', 1590)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (160, N'Product - 160', N'Product Description - 160', 1600)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (161, N'Product - 161', N'Product Description - 161', 1610)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (162, N'Product - 162', N'Product Description - 162', 1620)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (163, N'Product - 163', N'Product Description - 163', 1630)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (164, N'Product - 164', N'Product Description - 164', 1640)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (165, N'Product - 165', N'Product Description - 165', 1650)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (166, N'Product - 166', N'Product Description - 166', 1660)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (167, N'Product - 167', N'Product Description - 167', 1670)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (168, N'Product - 168', N'Product Description - 168', 1680)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (169, N'Product - 169', N'Product Description - 169', 1690)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (170, N'Product - 170', N'Product Description - 170', 1700)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (171, N'Product - 171', N'Product Description - 171', 1710)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (172, N'Product - 172', N'Product Description - 172', 1720)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (173, N'Product - 173', N'Product Description - 173', 1730)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (174, N'Product - 174', N'Product Description - 174', 1740)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (175, N'Product - 175', N'Product Description - 175', 1750)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (176, N'Product - 176', N'Product Description - 176', 1760)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (177, N'Product - 177', N'Product Description - 177', 1770)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (178, N'Product - 178', N'Product Description - 178', 1780)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (179, N'Product - 179', N'Product Description - 179', 1790)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (180, N'Product - 180', N'Product Description - 180', 1800)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (181, N'Product - 181', N'Product Description - 181', 1810)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (182, N'Product - 182', N'Product Description - 182', 1820)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (183, N'Product - 183', N'Product Description - 183', 1830)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (184, N'Product - 184', N'Product Description - 184', 1840)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (185, N'Product - 185', N'Product Description - 185', 1850)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (186, N'Product - 186', N'Product Description - 186', 1860)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (187, N'Product - 187', N'Product Description - 187', 1870)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (188, N'Product - 188', N'Product Description - 188', 1880)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (189, N'Product - 189', N'Product Description - 189', 1890)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (190, N'Product - 190', N'Product Description - 190', 1900)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (191, N'Product - 191', N'Product Description - 191', 1910)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (192, N'Product - 192', N'Product Description - 192', 1920)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (193, N'Product - 193', N'Product Description - 193', 1930)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (194, N'Product - 194', N'Product Description - 194', 1940)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (195, N'Product - 195', N'Product Description - 195', 1950)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (196, N'Product - 196', N'Product Description - 196', 1960)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (197, N'Product - 197', N'Product Description - 197', 1970)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (198, N'Product - 198', N'Product Description - 198', 1980)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (199, N'Product - 199', N'Product Description - 199', 1990)
GO
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (200, N'Product - 200', N'Product Description - 200', 2000)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (201, N'Product - 201', N'Product Description - 201', 2010)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (202, N'Product - 202', N'Product Description - 202', 2020)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (203, N'Product - 203', N'Product Description - 203', 2030)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (204, N'Product - 204', N'Product Description - 204', 2040)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (205, N'Product - 205', N'Product Description - 205', 2050)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (206, N'Product - 206', N'Product Description - 206', 2060)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (207, N'Product - 207', N'Product Description - 207', 2070)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (208, N'Product - 208', N'Product Description - 208', 2080)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (209, N'Product - 209', N'Product Description - 209', 2090)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (210, N'Product - 210', N'Product Description - 210', 2100)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (211, N'Product - 211', N'Product Description - 211', 2110)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (212, N'Product - 212', N'Product Description - 212', 2120)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (213, N'Product - 213', N'Product Description - 213', 2130)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (214, N'Product - 214', N'Product Description - 214', 2140)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (215, N'Product - 215', N'Product Description - 215', 2150)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (216, N'Product - 216', N'Product Description - 216', 2160)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (217, N'Product - 217', N'Product Description - 217', 2170)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (218, N'Product - 218', N'Product Description - 218', 2180)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (219, N'Product - 219', N'Product Description - 219', 2190)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (220, N'Product - 220', N'Product Description - 220', 2200)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (221, N'Product - 221', N'Product Description - 221', 2210)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (222, N'Product - 222', N'Product Description - 222', 2220)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (223, N'Product - 223', N'Product Description - 223', 2230)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (224, N'Product - 224', N'Product Description - 224', 2240)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (225, N'Product - 225', N'Product Description - 225', 2250)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (226, N'Product - 226', N'Product Description - 226', 2260)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (227, N'Product - 227', N'Product Description - 227', 2270)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (228, N'Product - 228', N'Product Description - 228', 2280)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (229, N'Product - 229', N'Product Description - 229', 2290)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (230, N'Product - 230', N'Product Description - 230', 2300)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (231, N'Product - 231', N'Product Description - 231', 2310)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (232, N'Product - 232', N'Product Description - 232', 2320)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (233, N'Product - 233', N'Product Description - 233', 2330)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (234, N'Product - 234', N'Product Description - 234', 2340)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (235, N'Product - 235', N'Product Description - 235', 2350)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (236, N'Product - 236', N'Product Description - 236', 2360)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (237, N'Product - 237', N'Product Description - 237', 2370)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (238, N'Product - 238', N'Product Description - 238', 2380)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (239, N'Product - 239', N'Product Description - 239', 2390)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (240, N'Product - 240', N'Product Description - 240', 2400)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (241, N'Product - 241', N'Product Description - 241', 2410)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (242, N'Product - 242', N'Product Description - 242', 2420)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (243, N'Product - 243', N'Product Description - 243', 2430)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (244, N'Product - 244', N'Product Description - 244', 2440)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (245, N'Product - 245', N'Product Description - 245', 2450)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (246, N'Product - 246', N'Product Description - 246', 2460)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (247, N'Product - 247', N'Product Description - 247', 2470)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (248, N'Product - 248', N'Product Description - 248', 2480)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (249, N'Product - 249', N'Product Description - 249', 2490)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (250, N'Product - 250', N'Product Description - 250', 2500)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (251, N'Product - 251', N'Product Description - 251', 2510)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (252, N'Product - 252', N'Product Description - 252', 2520)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (253, N'Product - 253', N'Product Description - 253', 2530)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (254, N'Product - 254', N'Product Description - 254', 2540)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (255, N'Product - 255', N'Product Description - 255', 2550)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (256, N'Product - 256', N'Product Description - 256', 2560)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (257, N'Product - 257', N'Product Description - 257', 2570)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (258, N'Product - 258', N'Product Description - 258', 2580)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (259, N'Product - 259', N'Product Description - 259', 2590)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (260, N'Product - 260', N'Product Description - 260', 2600)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (261, N'Product - 261', N'Product Description - 261', 2610)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (262, N'Product - 262', N'Product Description - 262', 2620)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (263, N'Product - 263', N'Product Description - 263', 2630)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (264, N'Product - 264', N'Product Description - 264', 2640)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (265, N'Product - 265', N'Product Description - 265', 2650)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (266, N'Product - 266', N'Product Description - 266', 2660)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (267, N'Product - 267', N'Product Description - 267', 2670)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (268, N'Product - 268', N'Product Description - 268', 2680)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (269, N'Product - 269', N'Product Description - 269', 2690)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (270, N'Product - 270', N'Product Description - 270', 2700)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (271, N'Product - 271', N'Product Description - 271', 2710)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (272, N'Product - 272', N'Product Description - 272', 2720)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (273, N'Product - 273', N'Product Description - 273', 2730)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (274, N'Product - 274', N'Product Description - 274', 2740)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (275, N'Product - 275', N'Product Description - 275', 2750)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (276, N'Product - 276', N'Product Description - 276', 2760)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (277, N'Product - 277', N'Product Description - 277', 2770)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (278, N'Product - 278', N'Product Description - 278', 2780)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (279, N'Product - 279', N'Product Description - 279', 2790)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (280, N'Product - 280', N'Product Description - 280', 2800)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (281, N'Product - 281', N'Product Description - 281', 2810)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (282, N'Product - 282', N'Product Description - 282', 2820)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (283, N'Product - 283', N'Product Description - 283', 2830)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (284, N'Product - 284', N'Product Description - 284', 2840)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (285, N'Product - 285', N'Product Description - 285', 2850)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (286, N'Product - 286', N'Product Description - 286', 2860)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (287, N'Product - 287', N'Product Description - 287', 2870)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (288, N'Product - 288', N'Product Description - 288', 2880)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (289, N'Product - 289', N'Product Description - 289', 2890)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (290, N'Product - 290', N'Product Description - 290', 2900)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (291, N'Product - 291', N'Product Description - 291', 2910)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (292, N'Product - 292', N'Product Description - 292', 2920)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (293, N'Product - 293', N'Product Description - 293', 2930)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (294, N'Product - 294', N'Product Description - 294', 2940)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (295, N'Product - 295', N'Product Description - 295', 2950)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (296, N'Product - 296', N'Product Description - 296', 2960)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (297, N'Product - 297', N'Product Description - 297', 2970)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (298, N'Product - 298', N'Product Description - 298', 2980)
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (299, N'Product - 299', N'Product Description - 299', 2990)
GO
INSERT [dbo].[tblProducts] ([Id], [Name], [Description], [Price]) VALUES (300, N'Product - 300', N'Product Description - 300', 3000)
SET IDENTITY_INSERT [dbo].[tblProducts] OFF
ALTER TABLE [dbo].[tblEmployee] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
/****** Object:  StoredProcedure [dbo].[Employee_REG]    Script Date: 30-08-2020 6:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Employee_REG] 
		@ID INT = Null,
		@Type INT = null,
		@Name nchar(100) = null ,
		@Address nchar(100) = null ,
		@City nchar(100) = null ,
		@DateofBirth nchar(100) = null ,
		@Age nchar(100) = null,
		@PhoneNumber nchar(100) = null,
		@Department nchar(100) = null,
		@Manager nchar(100) = null,
		@DateofJoining nchar(100) = null, 
		@DateofLeaving  nchar(100) = null
AS
BEGIN
	 IF(@Type = 1)
	 BEGIN
			IF NOT EXists(select 1 from [tblEmployee] WHERE Name = @Name AND Address = @Address AND PhoneNumber = @PhoneNumber AND DateofJoining = @DateofJoining)
			BEGIN
			INSERT INTO [tblEmployee](Name,Address,City,DateofBirth,Age,PhoneNumber,Department,Manager,DateofJoining,DateofLeaving)
			Values(@Name,@Address,@City,@DateofBirth,@Age,@PhoneNumber,@Department,@Manager,@DateofJoining,@DateofLeaving)
				Select '1' AS RESULT
			END
			ELSE
			BEGIN
				Select '2' AS RESULT
			END
	 END
	 ELSE IF(@Type = 2)
	 BEGIN
			Select ID from [tblEmployee]
	 END
	  ELSE IF(@Type = 3)
	 BEGIN
			Select * from [tblEmployee] WHERE ID = @ID
	 END
    ELSE IF(@Type = 4)
	 BEGIN
			UPDATE [tblEmployee]
			SET Name = @Name,Address = @Address,
				City = @City ,DateofBirth = @DateofBirth ,
				Age = @Age ,PhoneNumber = @PhoneNumber ,Department = @Department 
				,Manager = @Manager ,DateofJoining =@DateofJoining,DateofLeaving = @DateofLeaving
			WHERE ID = @ID
			Select '1' AS RESULT
	 END
END
GO
/****** Object:  StoredProcedure [dbo].[getDatabyPageNumber_PageSize]    Script Date: 30-08-2020 6:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 Create Proc [dbo].[getDatabyPageNumber_PageSize]
 @PageNumber INT,
 @PageSize INT
 AS
 BEGIN
		Select * from tblProducts
		Order by ID
		OFFSET (@PageNumber-1)*@PageSize ROWS
		FETCH NEXT @PageSize ROWS ONLY
END
GO
USE [master]
GO
ALTER DATABASE [Emp_reg] SET  READ_WRITE 
GO
