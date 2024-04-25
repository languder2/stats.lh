USE [Абитуриенты]
GO
/****** Object:  Table [dbo].[AchievementCategory]    Script Date: 12.03.2024 14:01:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AchievementCategory](
    [ID] [int] NOT NULL,
    [Actual] [bit] NULL,
    [Name] [nvarchar](400) NULL,
    [IdDocumentType] [int] NULL,
    CONSTRAINT [PK_AchievementCategory] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[AllowedDirections]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[AllowedDirections](
    [DirectionID] [int] NOT NULL,
    [AdmissionItemTypeID] [int] NOT NULL,
    [Name] [varchar](250) NOT NULL,
    [Code] [varchar](50) NULL,
    [LevelID] [int] NULL,
    [DepartmentID] [int] NULL,
    CONSTRAINT [PK_AllowedDirections] PRIMARY KEY CLUSTERED
(
[DirectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Components]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Components](
    [Iden] [int] IDENTITY(1,1) NOT NULL,
    [ComponentName] [varchar](25) NULL,
    [SerialNumber] [varchar](25) NULL,
    [Comments] [varchar](75) NULL,
    [UserName] [varchar](50) NULL,
    [UpdateDate] [datetime] NULL,
    [UpdatedBy] [varchar](35) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ComponentsDeleted]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ComponentsDeleted](
    [Iden] [int] NOT NULL,
    [ComponentName] [varchar](25) NULL,
    [SerialNumber] [varchar](25) NULL,
    [Comments] [varchar](75) NULL,
    [UserName] [varchar](50) NULL,
    [DeletedDate] [datetime] NULL,
    [DeletedBy] [varchar](35) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Departments]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Departments](
    [DepartmentID] [int] IDENTITY(1,1) NOT NULL,
    [DepartmentName] [varchar](1000) NOT NULL,
    [DepartmentShort] [varchar](250) NOT NULL,
    [DepartmentTypeID] [int] NOT NULL,
    [DirectorName] [varchar](250) NULL,
    [DirectorPost] [varchar](250) NULL,
    [StartDate] [datetime] NULL,
    [EndDate] [datetime] NULL,
    [DepartmentParentID] [int] NULL,
    [DepartmentAddress] [varchar](1000) NULL,
    [DepartmentPhone] [varchar](250) NULL,
    [DepartmentOrder] [int] NOT NULL,
    [DepartmentUID] [varchar](50) NULL,
    [isHidden] [bit] NULL,
    [IsDelete] [bit] NOT NULL,
    [KPP] [varchar](50) NULL,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED
(
[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DepartmentTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DepartmentTypes](
    [DepartmentTypeID] [int] NOT NULL,
    [DepartmentTypeName] [nvarchar](150) NOT NULL,
    CONSTRAINT [PK_DepartmentTypes] PRIMARY KEY CLUSTERED
(
[DepartmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[DocumentCategories]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DocumentCategories](
    [DocumentCategoryId] [int] NOT NULL,
    [DocumentCategoryName] [nvarchar](500) NOT NULL,
    [DocumentCategoryNote] [nvarchar](4000) NULL,
    [DocumentCategoryOrder] [int] NULL,
    [IsVisibleSite] [bit] NOT NULL,
    CONSTRAINT [PK_DocumentCategories] PRIMARY KEY CLUSTERED
(
[DocumentCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguActionTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguActionTypes](
    [ActionTypeId] [int] NOT NULL,
    [ActionTypeName] [nvarchar](50) NULL,
    [ActionTypeTitle] [nvarchar](50) NULL,
    CONSTRAINT [PK_EpguActionTypes] PRIMARY KEY CLUSTERED
(
[ActionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguAdmissionEvents]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguAdmissionEvents](
    [EventID] [int] IDENTITY(1,1) NOT NULL,
    [EventTypeID] [int] NOT NULL,
    [LevelID] [int] NULL,
    [FormID] [int] NULL,
    [StageID] [int] NULL,
    [PlaceTypeID] [int] NULL,
    [StartEvent] [datetime] NULL,
    [EndEvent] [datetime] NULL,
    [DepartmentID] [int] NULL,
    CONSTRAINT [PK_EpguAdmissionEvents_1] PRIMARY KEY CLUSTERED
(
[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguAdmissionEventTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguAdmissionEventTypes](
    [EventTypeID] [int] NOT NULL,
    [EventName] [varchar](150) NOT NULL,
    [Actual] [bit] NULL,
    [StageID] [int] NULL,
    CONSTRAINT [PK_EpguAdmissionEventsCls] PRIMARY KEY CLUSTERED
(
[EventTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguApplicationStatuses]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguApplicationStatuses](
    [ID] [int] NOT NULL,
    [Name] [varchar](150) NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguApplicationStatuses] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguContractStatus]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguContractStatus](
    [Id] [int] NOT NULL,
    [Name] [varchar](150) NOT NULL,
    [Actual] [bit] NOT NULL,
    CONSTRAINT [PK_EpguContractStatus] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguDirections]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguDirections](
    [ID] [int] NOT NULL,
    [Section] [int] NULL,
    [Code] [nvarchar](50) NOT NULL,
    [Name] [nvarchar](700) NOT NULL,
    [CodeMcko2011] [nvarchar](50) NULL,
    [CodeMcko2013] [nvarchar](50) NULL,
    [Actual] [bit] NULL,
    [IDParent] [int] NULL,
    [IdEducationLevel] [int] NULL,
    CONSTRAINT [PK_EpguDirections] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguDocumentTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguDocumentTypes](
    [ID] [int] NOT NULL,
    [Name] [nvarchar](400) NOT NULL,
    [IDCategory] [int] NULL,
    [Actual] [bit] NOT NULL,
    [IdParent] [int] NULL,
    [Fields] [varchar](2000) NULL,
    CONSTRAINT [PK_EpguDocumentTypes] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguLogs]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguLogs](
    [EpguLogId] [int] IDENTITY(1,1) NOT NULL,
    [UID] [nvarchar](50) NOT NULL,
    [PackageTypeId] [int] NOT NULL,
    [DateCreation] [smalldatetime] NOT NULL,
    [LastModified] [smalldatetime] NULL,
    CONSTRAINT [PK_EpguLogs] PRIMARY KEY CLUSTERED
(
[EpguLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguOkcms]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguOkcms](
    [ID] [int] NOT NULL,
    [Code] [nvarchar](50) NULL,
    [ShortName] [nvarchar](100) NULL,
    [FullName] [nvarchar](100) NOT NULL,
    [Af] [nvarchar](50) NULL,
    [Afg] [nvarchar](50) NULL,
    [UtvDate] [datetime] NULL,
    [VvedDate] [datetime] NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguOkcms] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguOlympicCls]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguOlympicCls](
    [Id] [int] NOT NULL,
    [Name] [varchar](250) NULL,
    [OrderNumber] [int] NULL,
    [Year] [varchar](10) NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguOlympicCls] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguOlympicDiplomaTypeCls]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguOlympicDiplomaTypeCls](
    [Id] [int] NOT NULL,
    [Name] [varchar](250) NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguOlympicDiplomaTypeCls] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguOlympicProfileCls]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguOlympicProfileCls](
    [Id] [int] NOT NULL,
    [Name] [varchar](250) NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguOlympicProfileCls] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguOlympicRelationProfileCls]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguOlympicRelationProfileCls](
    [Id] [int] NULL,
    [IdOlympic] [int] NULL,
    [IdProfile] [int] NULL,
    [IdLevel] [int] NULL,
    [Actual] [bit] NULL
) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguPackages]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguPackages](
    [PackageId] [int] IDENTITY(1,1) NOT NULL,
    [PackageTypeId] [int] NOT NULL,
    [ActionTypeId] [int] NOT NULL,
    [PackageStatusId] [int] NULL,
    [IDJWT] [bigint] NULL,
    [DateCreation] [smalldatetime] NULL,
    [DateLastCheck] [smalldatetime] NULL,
    [EntityUID] [nvarchar](250) NULL,
    [QueueNumber] [int] NULL,
    [Payload] [nvarchar](1) NULL,
    [Response] [nvarchar](1) NULL,
    [UIDEpgu] [bigint] NULL,
    [ResponseType] [nvarchar](100) NULL,
    [Value] [varchar](50) NULL,
    [DepartmentID] [int] NULL,
    [Comment] [varchar](500) NULL,
    [AbitID] [int] NULL,
    [IdObject] [int] NULL,
    CONSTRAINT [PK_EpguPackages] PRIMARY KEY CLUSTERED
(
[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguPackageTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguPackageTypes](
    [PackageTypeId] [int] NOT NULL,
    [PackageTypeName] [nvarchar](250) NOT NULL,
    [PackageTypeTitle] [nvarchar](250) NOT NULL,
    [NаmeEPGU] [nvarchar](250) NULL,
    CONSTRAINT [PK_EpguPackageTypes] PRIMARY KEY CLUSTERED
(
[PackageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguPlaceTypes]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguPlaceTypes](
    [PlaceTypeID] [int] NOT NULL,
    [PlaceType] [varchar](100) NULL,
    [Virtual] [bit] NULL,
    CONSTRAINT [PK_EpguPlaceTypes] PRIMARY KEY CLUSTERED
(
[PlaceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguReasons]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguReasons](
    [Id] [int] NOT NULL,
    [Name] [varchar](1000) NOT NULL,
    [Actual] [bit] NULL,
    CONSTRAINT [PK_EpguReasons] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguSessionKeys]    Script Date: 12.03.2024 14:01:19 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguSessionKeys](
    [SessionID] [int] IDENTITY(1,1) NOT NULL,
    [SessionKey] [varchar](250) NOT NULL,
    [SessionDate] [datetime] NOT NULL,
    [KPP] [varchar](50) NOT NULL,
    [Test] [bit] NOT NULL,
    CONSTRAINT [PK_EpguSessionKeys] PRIMARY KEY CLUSTERED
(
[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguSubjects]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguSubjects](
    [ID] [int] NOT NULL,
    [Code] [nvarchar](50) NULL,
    [Name] [nvarchar](500) NOT NULL,
    [Actual] [bit] NULL,
    [Olympic] [bit] NULL,
    [Ege] [bit] NULL,
    [Sport] [bit] NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EpguUids]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EpguUids](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [UidEpgu] [varchar](100) NOT NULL,
    [Uid] [varchar](100) NOT NULL,
    [PackageTypeID] [int] NULL,
    CONSTRAINT [PK_EpguUids] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EventLog]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EventLog](
    [EventLogID] [int] IDENTITY(1,1) NOT NULL,
    [EventLogTypeID] [int] NOT NULL,
    [EventLogDate] [datetime] NOT NULL,
    [ApplicantID] [int] NULL,
    [ComputerIP] [nvarchar](50) NULL,
    [Payload] [nvarchar](500) NULL,
    [IsDeleted] [bit] NOT NULL,
    [ObjectID] [int] NULL,
    [UserID] [int] NULL,
    [SourceID] [int] NULL,
    CONSTRAINT [PK_EventLog] PRIMARY KEY CLUSTERED
(
[EventLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[EventLogTypes]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[EventLogTypes](
    [EventLogTypeID] [int] IDENTITY(1,1) NOT NULL,
    [EventLogTypeName] [nvarchar](500) NOT NULL,
    CONSTRAINT [PK_EventLogTypes] PRIMARY KEY CLUSTERED
(
[EventLogTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Files]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Files](
    [FileID] [int] IDENTITY(1,1) NOT NULL,
    [FileName] [nvarchar](500) NOT NULL,
    [FileExt] [nvarchar](50) NOT NULL,
    [FileContent] [image] NULL,
    [Length] [bigint] NOT NULL,
    [DocumentID] [int] NULL,
    [AchievementID] [int] NULL,
    [CreatedOnDate] [datetime] NOT NULL,
    [CreatedByUserID] [int] NOT NULL,
    [IsDeleted] [bit] NOT NULL,
    [IsUnloaded] [bit] NOT NULL,
    [UnloadDate] [datetime] NULL,
    [FileGuid] [uniqueidentifier] NULL,
    [FileNo] [int] NULL,
    [FileCaption] [nvarchar](500) NULL,
    CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED
(
[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[KLADR]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KLADR](
    [Kod] [int] NULL,
    [Name] [nvarchar](255) NULL,
    [socr] [nvarchar](255) NULL,
    [code] [nvarchar](255) NULL,
    [Ind] [float] NULL,
    [Gninmb] [float] NULL,
    [Uno] [nvarchar](255) NULL,
    [Ocatd] [nvarchar](255) NULL,
    [Status] [float] NULL,
    [List] [int] NULL,
    [id_parent] [bigint] NULL,
    [id] [bigint] NOT NULL,
    [priority] [int] NULL,
    [Okcm] [int] NULL,
    [IsActual] [bit] NULL,
    CONSTRAINT [PK_KLADR] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[KLADR_LAND]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KLADR_LAND](
    [Kod] [int] NOT NULL,
    [Name] [varchar](150) NOT NULL,
    [Sort] [int] NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[KLADR_ST]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KLADR_ST](
    [kod] [int] IDENTITY(1,1) NOT NULL,
    [Name] [varchar](50) NULL,
    [Code] [varchar](50) NULL,
    [Socr] [varchar](50) NULL,
    [Ind] [int] NULL,
    [Gninmb] [int] NULL,
    [Uno] [int] NULL,
    [Ocatd] [bigint] NULL,
    [id_parent] [bigint] NULL,
    CONSTRAINT [PK_KLADR_ST] PRIMARY KEY CLUSTERED
(
[kod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Locks]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Locks](
    [LockID] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [UserID] [int] NOT NULL,
    [CompName] [varchar](100) NOT NULL,
    [LockDate] [datetime] NOT NULL,
    [UserName] [varchar](100) NULL,
    CONSTRAINT [PK_Locks] PRIMARY KEY CLUSTERED
(
[LockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[LogErrors]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[LogErrors](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Дата] [datetime] NULL,
    [Программа] [varchar](50) NULL,
    [Компьютер] [varchar](100) NULL,
    [Пользователь] [varchar](100) NULL,
    [НомерОшибки] [varchar](50) NULL,
    [Описание] [varchar](200) NULL,
    [Источник] [varchar](100) NULL,
    [Ведомость] [varchar](250) NULL,
    [Sub] [varchar](50) NULL,
    CONSTRAINT [PK_LogErrors] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Messages]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Messages](
    [MessageID] [int] IDENTITY(1,1) NOT NULL,
    [ApplicantID] [int] NOT NULL,
    [UserID] [int] NULL,
    [MessageText] [nvarchar](4000) NOT NULL,
    [MessageDate] [datetime] NOT NULL,
    [MessageIsRead] [bit] NOT NULL,
    CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED
(
[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[NotificationOptions]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NotificationOptions](
    [OptionId] [int] IDENTITY(1,1) NOT NULL,
    [NotificationId] [int] NOT NULL,
    [FormId] [int] NULL,
    [LevelId] [int] NULL,
    [SourceId] [int] NULL,
    [SpecialtyCode] [nvarchar](50) NULL,
    [IsForeigner] [bit] NULL,
    [IsEnrolled] [bit] NULL,
    [IsAgree] [bit] NULL,
    CONSTRAINT [PK_NotificationOptions] PRIMARY KEY CLUSTERED
(
[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Notifications](
    [NotificationId] [int] IDENTITY(1,1) NOT NULL,
    [NotificationTitle] [nvarchar](800) NOT NULL,
    [NotificationText] [nvarchar](2000) NULL,
    [NotificationDate] [datetime] NOT NULL,
    [IsPublished] [bit] NOT NULL,
    CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED
(
[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Picture]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Picture](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Picture] [image] NULL,
    [PictureType] [nvarchar](50) NULL,
    [КодАбит] [int] NULL,
    [NameFile] [nvarchar](50) NULL,
    [HashFile] [nvarchar](50) NULL,
    CONSTRAINT [PK_Таблица1] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ReportForms]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ReportForms](
    [ReportFormID] [int] IDENTITY(1,1) NOT NULL,
    [LevelID] [int] NULL,
    [FormID] [int] NULL,
    [SourceID] [int] NULL,
    [SpecialtyCode] [nvarchar](50) NULL,
    [FileName] [nvarchar](100) NOT NULL,
    [ReportUrl] [nvarchar](500) NULL,
    [ReportHtml] [nvarchar](2000) NULL,
    [DocumentTypeID] [int] NULL,
    [DepartmentID] [int] NULL,
    [ReportTypeID] [int] NULL,
    [VisibilityTypeID] [int] NULL,
    CONSTRAINT [PK_ReportForms] PRIMARY KEY CLUSTERED
(
[ReportFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[АбитГруппы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[АбитГруппы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодЗаявления] [int] NOT NULL,
    [КодГруппы] [int] NOT NULL,
    [ID] [int] NULL,
    [Результат] [float] NULL,
    [СтатусЗаписи] [int] NULL,
    [ДатаЗаписи] [datetime] NULL,
    [СтатусЕПГУ] [int] NULL,
    CONSTRAINT [PK_АбитуриентыГуппы] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[АбитДисциплины]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[АбитДисциплины](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Дисциплина] [varchar](100) NOT NULL,
    [ДисСокращ] [varchar](50) NULL,
    [ЦТ1] [int] NULL,
    [ЦТ2] [int] NULL,
    [ЦТ3] [int] NULL,
    [ЦТ4] [int] NULL,
    [ЕГЭ1] [int] NULL,
    [ЕГЭ2] [int] NULL,
    [ЕГЭ3] [int] NULL,
    [ЕГЭ4] [int] NULL,
    [КодЕГЭ] [varchar](50) NULL,
    [КодДня] [int] NULL,
    [Вывод] [bit] NULL,
    [ИН_ЯЗ] [bit] NULL,
    [ФИС1] [int] NULL,
    [ВидИспытания] [int] NULL,
    [КодЕПГУ] [int] NULL,
    [СПО] [bit] NOT NULL,
    CONSTRAINT [PK__АбитДисциплины__1A0AC1F4] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[АбитОтчет_Заявления1]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[АбитОтчет_Заявления1](
    [ПолныйАдрес] [nvarchar](255) NULL,
    [ВсеДисциплины] [nvarchar](255) NULL,
    [ID] [nvarchar](255) NULL,
    [ФИО] [nvarchar](255) NULL,
    [Дата_Рождения] [nvarchar](255) NULL,
    [Дата_Выдачи] [nvarchar](255) NULL,
    [Пол] [nvarchar](255) NULL,
    [Статус] [nvarchar](255) NULL,
    [Тип_Удостоверения] [nvarchar](255) NULL,
    [Изучаемый_Язык] [nvarchar](255) NULL,
    [Уч_Заведение] [nvarchar](255) NULL,
    [Где_Находится_УЗ] [nvarchar](255) NULL,
    [Год_Окончания_УЗ] [nvarchar](255) NULL,
    [Страна_ПП] [nvarchar](255) NULL,
    [Регион_ПП] [nvarchar](255) NULL,
    [Индекс_ПП] [nvarchar](255) NULL,
    [Дом_Кв_ПП] [nvarchar](255) NULL,
    [Город_ПП] [nvarchar](255) NULL,
    [Телефон_ПП] [nvarchar](255) NULL,
    [Улица_ПП] [nvarchar](255) NULL,
    [Мобильный] [nvarchar](255) NULL,
    [Тип_Образ_Документа] [nvarchar](255) NULL,
    [НеМестный] [nvarchar](255) NULL,
    [Год_Набора] [nvarchar](255) NULL,
    [ТипОбразования] [nvarchar](255) NULL,
    [Место_Рождения] [nvarchar](255) NULL,
    [Дата_Выдачи_УД] [nvarchar](255) NULL,
    [Код_Заявления] [nvarchar](255) NULL,
    [Основания] [nvarchar](255) NULL,
    [Код_Специальности] [nvarchar](255) NULL,
    [ДистОбразование] [nvarchar](255) NULL,
    [НомерЛД] [nvarchar](255) NULL,
    [Номер] [nvarchar](255) NULL,
    [Шифр] [nvarchar](255) NULL,
    [Оригинал] [nvarchar](255) NULL,
    [СтатусСпец] [nvarchar](255) NULL,
    [Номер_договора] [nvarchar](255) NULL,
    [Сокр_Обучение] [nvarchar](255) NULL,
    [Затраты] [nvarchar](255) NULL,
    [УслОбучения] [nvarchar](255) NULL,
    [Название_Спец] [nvarchar](255) NULL,
    [Название_Специальности] [nvarchar](255) NULL,
    [ОКСО] [nvarchar](255) NULL,
    [Название] [nvarchar](255) NULL,
    [ФормаОбучения] [nvarchar](255) NULL,
    [ФормаОбуч] [nvarchar](255) NULL,
    [Сокращение] [nvarchar](255) NULL,
    [Факультет] [nvarchar](255) NULL,
    [Кем_Выдан] [nvarchar](255) NULL,
    [Номер_Паспорта] [nvarchar](255) NULL,
    [ЭкзЛист] [nvarchar](255) NULL,
    [Фамилия] [nvarchar](255) NULL,
    [Имя] [nvarchar](255) NULL,
    [Отчество] [nvarchar](255) NULL,
    [Аттестат] [nvarchar](255) NULL,
    [Адресс] [nvarchar](255) NULL,
    [Ин_яз] [nvarchar](255) NULL,
    [Дисциплина] [nvarchar](255) NULL,
    [Код_Факультета] [nvarchar](255) NULL,
    [СпецОКСО] [nvarchar](255) NULL,
    [НеМест] [nvarchar](255) NULL,
    [ЛД] [nvarchar](255) NULL,
    [ВтороеОбр] [nvarchar](255) NULL,
    [Срок_Обучения] [nvarchar](255) NULL,
    [ГодОкончания] [nvarchar](255) NULL,
    [ДатаПодачиДокументов] [nvarchar](255) NULL,
    [Трудовой_Стаж] [nvarchar](255) NULL,
    [Специализация] [nvarchar](255) NULL,
    [НомерГруппы] [nvarchar](255) NULL,
    [НазваниеГруппы] [nvarchar](255) NULL,
    [КодГруппы] [nvarchar](255) NULL,
    [Зачислен] [nvarchar](255) NULL,
    [Село] [nvarchar](255) NULL,
    [Состоит_В_Браке] [nvarchar](255) NULL,
    [Число_Братьев_И_Сестер] [nvarchar](255) NULL,
    [СокрОбуч] [nvarchar](255) NULL,
    [НаправлениеЦП] [nvarchar](255) NULL,
    [Дата_Подачи] [nvarchar](255) NULL,
    [Отличник_УЗ] [nvarchar](255) NULL,
    [Отличие] [nvarchar](255) NULL,
    [СокрОтл] [nvarchar](255) NULL,
    [Общежитие] [nvarchar](255) NULL,
    [Льготы] [nvarchar](255) NULL,
    [СокрЛьгот] [nvarchar](255) NULL,
    [КодЛьгот] [nvarchar](255) NULL,
    [Число_Детей] [nvarchar](255) NULL,
    [Примечание] [nvarchar](255) NULL,
    [Олимпиада] [nvarchar](255) NULL,
    [Гражданство] [nvarchar](255) NULL,
    [БывКвалификация] [nvarchar](255) NULL,
    [Опекунство] [nvarchar](255) NULL,
    [Дата_Зачисления] [nvarchar](255) NULL,
    [E_Mail] [nvarchar](255) NULL,
    [Приказ] [nvarchar](255) NULL,
    [БывСпециальность] [nvarchar](255) NULL,
    [Второе_Образование] [nvarchar](255) NULL,
    [Код_Пред] [nvarchar](255) NULL,
    [ДокументНаЛьготы] [nvarchar](255) NULL,
    [Код_региона] [nvarchar](255) NULL,
    [Фотография] [nvarchar](255) NULL,
    [Приоритет] [nvarchar](255) NULL,
    [Код_заказчика] [nvarchar](255) NULL,
    [СрокОт] [nvarchar](255) NULL,
    [Должность] [nvarchar](255) NULL,
    [Место_Работы] [nvarchar](255) NULL,
    [ЗабралДок] [nvarchar](255) NULL,
    [Вид_спорта] [nvarchar](255) NULL,
    [Разряд] [nvarchar](255) NULL,
    [Район_ПП] [nvarchar](255) NULL,
    [СрокДо] [nvarchar](255) NULL,
    [КодПрофиля] [nvarchar](255) NULL,
    [Перевод] [nvarchar](255) NULL,
    [ЗабралДата] [nvarchar](255) NULL,
    [Профиль] [nvarchar](255) NULL,
    [МестоСдачиЕГЭ] [nvarchar](255) NULL,
    [СрБаллАттестата] [nvarchar](255) NULL,
    [КодПользователя] [nvarchar](255) NULL,
    [ОператорПК] [nvarchar](255) NULL,
    [Логин] [nvarchar](255) NULL,
    [РегНомерДиплома] [nvarchar](255) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[АбитОтчет_Заявления2]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[АбитОтчет_Заявления2](
    [ПолныйАдрес] [nvarchar](255) NULL,
    [ВсеДисциплины] [nvarchar](255) NULL,
    [ID] [nvarchar](255) NULL,
    [ФИО] [nvarchar](255) NULL,
    [Дата_Рождения] [nvarchar](255) NULL,
    [Дата_Выдачи] [nvarchar](255) NULL,
    [Пол] [nvarchar](255) NULL,
    [Статус] [nvarchar](255) NULL,
    [Тип_Удостоверения] [nvarchar](255) NULL,
    [Изучаемый_Язык] [nvarchar](255) NULL,
    [Уч_Заведение] [nvarchar](255) NULL,
    [Где_Находится_УЗ] [nvarchar](255) NULL,
    [Год_Окончания_УЗ] [nvarchar](255) NULL,
    [Страна_ПП] [nvarchar](255) NULL,
    [Регион_ПП] [nvarchar](255) NULL,
    [Индекс_ПП] [nvarchar](255) NULL,
    [Дом_Кв_ПП] [nvarchar](255) NULL,
    [Город_ПП] [nvarchar](255) NULL,
    [Телефон_ПП] [nvarchar](255) NULL,
    [Улица_ПП] [nvarchar](255) NULL,
    [Мобильный] [nvarchar](255) NULL,
    [Тип_Образ_Документа] [nvarchar](255) NULL,
    [НеМестный] [nvarchar](255) NULL,
    [Год_Набора] [nvarchar](255) NULL,
    [ТипОбразования] [nvarchar](255) NULL,
    [Место_Рождения] [nvarchar](255) NULL,
    [Дата_Выдачи_УД] [nvarchar](255) NULL,
    [Код_Заявления] [nvarchar](255) NULL,
    [Основания] [nvarchar](255) NULL,
    [Код_Специальности] [nvarchar](255) NULL,
    [ДистОбразование] [nvarchar](255) NULL,
    [НомерЛД] [nvarchar](255) NULL,
    [Номер] [nvarchar](255) NULL,
    [Шифр] [nvarchar](255) NULL,
    [Оригинал] [nvarchar](255) NULL,
    [СтатусСпец] [nvarchar](255) NULL,
    [Номер_договора] [nvarchar](255) NULL,
    [Сокр_Обучение] [nvarchar](255) NULL,
    [Затраты] [nvarchar](255) NULL,
    [УслОбучения] [nvarchar](255) NULL,
    [Название_Спец] [nvarchar](255) NULL,
    [Название_Специальности] [nvarchar](255) NULL,
    [ОКСО] [nvarchar](255) NULL,
    [Название] [nvarchar](255) NULL,
    [ФормаОбучения] [nvarchar](255) NULL,
    [ФормаОбуч] [nvarchar](255) NULL,
    [Сокращение] [nvarchar](255) NULL,
    [Факультет] [nvarchar](255) NULL,
    [Кем_Выдан] [nvarchar](255) NULL,
    [Номер_Паспорта] [nvarchar](255) NULL,
    [ЭкзЛист] [nvarchar](255) NULL,
    [Фамилия] [nvarchar](255) NULL,
    [Имя] [nvarchar](255) NULL,
    [Отчество] [nvarchar](255) NULL,
    [Аттестат] [nvarchar](255) NULL,
    [Адресс] [nvarchar](255) NULL,
    [Ин_яз] [nvarchar](255) NULL,
    [Дисциплина] [nvarchar](255) NULL,
    [Код_Факультета] [nvarchar](255) NULL,
    [СпецОКСО] [nvarchar](255) NULL,
    [НеМест] [nvarchar](255) NULL,
    [ЛД] [nvarchar](255) NULL,
    [ВтороеОбр] [nvarchar](255) NULL,
    [Срок_Обучения] [nvarchar](255) NULL,
    [ГодОкончания] [nvarchar](255) NULL,
    [ДатаПодачиДокументов] [nvarchar](255) NULL,
    [Трудовой_Стаж] [nvarchar](255) NULL,
    [Специализация] [nvarchar](255) NULL,
    [НомерГруппы] [nvarchar](255) NULL,
    [НазваниеГруппы] [nvarchar](255) NULL,
    [КодГруппы] [nvarchar](255) NULL,
    [Зачислен] [nvarchar](255) NULL,
    [Село] [nvarchar](255) NULL,
    [Состоит_В_Браке] [nvarchar](255) NULL,
    [Число_Братьев_И_Сестер] [nvarchar](255) NULL,
    [СокрОбуч] [nvarchar](255) NULL,
    [НаправлениеЦП] [nvarchar](255) NULL,
    [Дата_Подачи] [nvarchar](255) NULL,
    [Отличник_УЗ] [nvarchar](255) NULL,
    [Отличие] [nvarchar](255) NULL,
    [СокрОтл] [nvarchar](255) NULL,
    [Общежитие] [nvarchar](255) NULL,
    [Льготы] [nvarchar](255) NULL,
    [СокрЛьгот] [nvarchar](255) NULL,
    [КодЛьгот] [nvarchar](255) NULL,
    [Число_Детей] [nvarchar](255) NULL,
    [Примечание] [nvarchar](255) NULL,
    [Олимпиада] [nvarchar](255) NULL,
    [Гражданство] [nvarchar](255) NULL,
    [БывКвалификация] [nvarchar](255) NULL,
    [Опекунство] [nvarchar](255) NULL,
    [Дата_Зачисления] [nvarchar](255) NULL,
    [E_Mail] [nvarchar](255) NULL,
    [Приказ] [nvarchar](255) NULL,
    [БывСпециальность] [nvarchar](255) NULL,
    [Второе_Образование] [nvarchar](255) NULL,
    [Код_Пред] [nvarchar](255) NULL,
    [ДокументНаЛьготы] [nvarchar](255) NULL,
    [Код_региона] [nvarchar](255) NULL,
    [Фотография] [nvarchar](255) NULL,
    [Приоритет] [nvarchar](255) NULL,
    [Код_заказчика] [nvarchar](255) NULL,
    [СрокОт] [nvarchar](255) NULL,
    [Должность] [nvarchar](255) NULL,
    [Место_Работы] [nvarchar](255) NULL,
    [ЗабралДок] [nvarchar](255) NULL,
    [Вид_спорта] [nvarchar](255) NULL,
    [Разряд] [nvarchar](255) NULL,
    [Район_ПП] [nvarchar](255) NULL,
    [СрокДо] [nvarchar](255) NULL,
    [КодПрофиля] [nvarchar](255) NULL,
    [Перевод] [nvarchar](255) NULL,
    [ЗабралДата] [nvarchar](255) NULL,
    [Профиль] [nvarchar](255) NULL,
    [МестоСдачиЕГЭ] [nvarchar](255) NULL,
    [СрБаллАттестата] [nvarchar](255) NULL,
    [КодПользователя] [nvarchar](255) NULL,
    [ОператорПК] [nvarchar](255) NULL,
    [Логин] [nvarchar](255) NULL,
    [РегНомерДиплома] [nvarchar](255) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Аудитории]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Аудитории](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Аудитория] [nvarchar](10) NULL,
    [Номер_корпуса] [smallint] NULL,
    [Вместимость] [int] NULL,
    CONSTRAINT [PK_Аудитории] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[БазаДанных]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[БазаДанных](
    [Код] [int] NOT NULL,
    [Версия] [int] NOT NULL,
     CONSTRAINT [PK_БазаДанных] PRIMARY KEY CLUSTERED
    (
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Вид_Документа]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Вид_Документа](
    [Код_Документа] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](500) NOT NULL,
    [Комментарий] [varchar](250) NULL,
    [Сокращение] [varchar](250) NULL,
    [Документ] [bit] NULL,
    [Вывод] [bit] NULL,
    [Испытание] [int] NULL,
    [ДокументУЗ] [int] NULL,
    [ФИС31] [int] NULL,
    [КодКатегории] [int] NULL,
    [КодРодителя] [int] NULL,
    [ГражданствоСтатус] [int] NULL,
    [МаскаСерия] [nvarchar](250) NULL,
    [МаскаНомер] [nvarchar](250) NULL,
    [СтруктураФайлов] [nvarchar](800) NULL,
    [Обязателен] [bit] NOT NULL,
    [ЗагрузкаФайлов] [int] NULL,
    [КодПодгруппыФИС] [int] NULL,
    [КодЕПГУ] [int] NULL,
    [ВыводНаСайте] [bit] NOT NULL,
    [Архив] [int] NULL,
    CONSTRAINT [PK_Вид_Документа] PRIMARY KEY CLUSTERED
(
[Код_Документа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Вид_Испытания]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Вид_Испытания](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](50) NOT NULL,
    [Комментарий] [varchar](200) NULL,
    [Сокращение] [varchar](50) NULL,
    [ОО] [bit] NULL,
    [ЦН] [bit] NULL,
    [СН] [bit] NULL,
    [ОО_ЕГЭ] [bit] NULL,
    [ЦН_ЕГЭ] [bit] NULL,
    [СН_ЕГЭ] [bit] NULL,
    [Документ] [bit] NULL,
    [ВыводДокумента] [bit] NULL,
    [IDdoc] [int] NULL,
    [ФИС11] [int] NULL,
    [ФИС6] [int] NULL,
    [ЕГЭ] [int] NULL,
    CONSTRAINT [PK__Вид_Испытания__4C8B54C9] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ВорДокумент]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ВорДокумент](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Серия] [varchar](50) NULL,
    [Начал_номер] [int] NULL,
    [Конеч_номер] [int] NULL,
    CONSTRAINT [PK_ВорДокумент] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Время_занятий]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Время_занятий](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Занятие] [nvarchar](50) NULL,
    [Начало] [nvarchar](50) NULL,
    [Конец] [nvarchar](50) NULL,
    CONSTRAINT [PK_Время_занятий] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Все_Абитуриенты]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Все_Абитуриенты](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Фамилия] [varchar](50) NOT NULL,
    [Имя] [varchar](50) NOT NULL,
    [Отчество] [varchar](50) NULL,
    [Дата_Рождения] [datetime] NULL,
    [Пол] [varchar](8) NULL,
    [Статус] [int] NULL,
    [Тип_Удостоверения] [varchar](250) NULL,
    [Номер_Паспорта] [varchar](50) NULL,
    [Дата_Выдачи] [datetime] NULL,
    [Кем_Выдан] [varchar](800) NULL,
    [Изучаемый_Язык] [int] NULL,
    [Уч_Заведение] [varchar](800) NULL,
    [Где_Находится_УЗ] [varchar](800) NULL,
    [Год_Окончания_УЗ] [smallint] NULL,
    [Отличник_УЗ] [int] NULL,
    [Страна_ПП] [varchar](50) NULL,
    [Регион_ПП] [varchar](50) NULL,
    [Город_ПП] [varchar](250) NULL,
    [Индекс_ПП] [varchar](200) NULL,
    [Улица_ПП] [varchar](100) NULL,
    [Дом_Кв_ПП] [varchar](50) NULL,
    [Телефон_ПП] [varchar](50) NULL,
    [Мобильный] [varchar](50) NULL,
    [E_Mail] [varchar](50) NULL,
    [Общежитие] [bit] NULL,
    [Номер_Общежития] [tinyint] NULL,
    [Номер_Комнаты] [varchar](50) NULL,
    [Наличие_Матери] [bit] NULL,
    [Наличие_Отца] [bit] NULL,
    [ФИО_Матери] [varchar](50) NULL,
    [Место_Раб_Матери] [varchar](50) NULL,
    [Должность_Матери] [varchar](50) NULL,
    [ФИО_Отца] [varchar](50) NULL,
    [Место_Раб_Отца] [varchar](50) NULL,
    [Должность_Отца] [varchar](50) NULL,
    [Число_Братьев_И_Сестер] [tinyint] NULL,
    [Страна_Родители] [varchar](50) NULL,
    [Регион_Родители] [varchar](50) NULL,
    [Город_Родители] [varchar](250) NULL,
    [Индекс_Родители] [varchar](50) NULL,
    [Улица_Родители] [varchar](50) NULL,
    [Дом_Кв_Родители] [varchar](50) NULL,
    [Телефон_Родители] [varchar](50) NULL,
    [Опекунство] [bit] NULL,
    [Состоит_В_Браке] [bit] NULL,
    [Число_Детей] [tinyint] NULL,
    [Льготы] [int] NULL,
    [Серия_Аттестата] [varchar](50) NULL,
    [Номер_Аттестата] [varchar](50) NULL,
    [Тип_Образ_Документа] [varchar](200) NULL,
    [НеМестный] [bit] NULL,
    [Село] [bit] NULL,
    [Год_Набора] [int] NULL,
    [ТипОбразования] [varchar](50) NULL,
    [Место_Рождения] [varchar](800) NULL,
    [Второе_Образование] [bit] NULL,
    [Фотография] [varchar](100) NULL,
    [Мат] [tinyint] NULL,
    [Рус] [tinyint] NULL,
    [ИнЯз] [tinyint] NULL,
    [Ист] [tinyint] NULL,
    [Примечание] [varchar](200) NULL,
    [ДатаПодачиДокументов] [datetime] NULL,
    [Олимпиада] [varchar](50) NULL,
    [Трудовой_Стаж] [varchar](50) NULL,
    [Дата_Выдачи_УД] [datetime] NULL,
    [НеМест] [bit] NULL,
    [общ] [tinyint] NULL,
    [Гражданство] [varchar](50) NULL,
    [ДокументНаЛьготы] [varchar](50) NULL,
    [БывКвалификация] [varchar](250) NULL,
    [БывСпециальность] [varchar](200) NULL,
    [ОригиналЕГЭ] [bit] NULL,
    [ВсеЛД] [varchar](200) NULL,
    [ОригиналЛД] [varchar](200) NULL,
    [Код_региона] [int] NULL,
    [Место_Работы] [varchar](100) NULL,
    [Должность] [varchar](150) NULL,
    [Вид_спорта] [varchar](50) NULL,
    [Разряд] [varchar](50) NULL,
    [Резерв1] [varchar](50) NULL,
    [Резерв2] [varchar](50) NULL,
    [Резерв3] [varchar](50) NULL,
    [Резерв4] [varchar](50) NULL,
    [Резерв5] [varchar](50) NULL,
    [Район_ПП] [varchar](100) NULL,
    [Район_Родители] [varchar](100) NULL,
    [СелоПоПрописке] [bit] NULL,
    [GUID] [uniqueidentifier] NULL,
    [Иностранец] [bit] NULL,
    [ВторойНабор] [bit] NULL,
    [Заблокировать] [bit] NOT NULL,
    [ПроверкаФБС] [bit] NOT NULL,
    [НеНайденФБС] [bit] NOT NULL,
    [Город] [int] NULL,
    [ФИС] [bit] NOT NULL,
    [РегНомерДиплома] [varchar](50) NULL,
    [МестоСдачиЕГЭ] [varchar](250) NULL,
    [КодПользователя] [int] NULL,
    [СрБаллАттестата] [float] NULL,
    [КодСпец] [int] NULL,
    [Кладр_ПП] [varchar](50) NULL,
    [Кладр_Родители] [varchar](50) NULL,
    [КодПодр] [varchar](50) NULL,
    [НомерДела] [varchar](50) NULL,
    [НомДела] [int] NULL,
    [ПаспортНомер] [varchar](50) NULL,
    [ПаспортСерия] [varchar](50) NULL,
    [Поселок_ПП] [varchar](250) NULL,
    [Квартира_ПП] [varchar](50) NULL,
    [Дата_Регистрации_ПП] [datetime] NULL,
    [Поселок_Родители] [varchar](250) NULL,
    [Квартира_Родители] [varchar](50) NULL,
    [ВидОбразования] [varchar](250) NULL,
    [ТипУведомления] [int] NULL,
    [ГражданинКрыма] [bit] NULL,
    [ТипНП_ПП] [int] NULL,
    [ТипНП_Родители] [int] NULL,
    [БывшаяФамилия] [varchar](50) NULL,
    [ПриказФИС] [bit] NOT NULL,
    [DepartmentID] [int] NULL,
    [Пароль] [nvarchar](500) NULL,
    [EmailConfirmed] [bit] NOT NULL,
    [СНИЛС] [varchar](50) NULL,
    [ДатаИзмененияОператором] [datetime] NULL,
    [ДатаИзмененияАбитуриентом] [datetime] NULL,
    [ВидТестирования] [int] NULL,
    [КодЕПГУ] [bigint] NULL,
    [ДатаПросмотраЛенты] [datetime] NULL,
    [Страна_УЗ] [varchar](250) NULL,
    [ПередаватьЕПГУ] [bit] NULL,
    [Паспорт_ЕПГУ] [date] NULL,
    [Аттестат_ЕПГУ] [date] NULL,
    [КоличествоОтл] [int] NULL,
    [КоличествоХор] [int] NULL,
    [КоличествоУдл] [int] NULL,
    [КодВоенкомата] [int] NULL,
    [Заметки] [nvarchar](1000) NULL,
    [ДатаОкончанияПаспорта] [datetime] NULL,
    [КодПаспортаЕПГУ] [varchar](150) NULL,
    [КодАттестатаЕПГУ] [varchar](150) NULL,
    [ОригиналСтатусЕПГУ] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [ОригиналДокумента] [bit] NULL,
    [ОригиналДатаПодачи] [datetime] NULL,
    [ОригиналКодВида] [int] NULL,
    [КодДокументаУЛ] [int] NULL,
    [КодДокументаУЗ] [int] NULL,
    [Звание] [varchar](150) NULL,
    [РаботаПодразделение] [varchar](250) NULL,
    [Корпус_ПП] [varchar](50) NULL,
    [Корпус_Родители] [varchar](50) NULL,
    [ОригиналДрВуз] [varchar](200) NULL,
    CONSTRAINT [PK__Копия All_Abitur__339589CD] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Все_Документы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Все_Документы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [Код_Документа] [int] NULL,
    [Документ] [varchar](550) NULL,
    [Количество] [int] NULL,
    [Серия_Документа] [varchar](50) NULL,
    [Номер_Документа] [varchar](50) NULL,
    [Код_Дисциплины] [int] NULL,
    [Баллы] [varchar](50) NULL,
    [Дополнительно] [varchar](50) NULL,
    [Дата] [datetime] NULL,
    [Военкомат] [varchar](150) NULL,
    [ОригиналДокумента] [bit] NULL,
    [ТипографскийНомер] [varchar](50) NULL,
    [СтатусЕГЭ] [int] NULL,
    [Год] [int] NULL,
    [Организация] [varchar](1000) NULL,
    [КодДочернегоДокумента] [int] NULL,
    [ДФамилия] [varchar](150) NULL,
    [ДИмя] [varchar](150) NULL,
    [ДОтчество] [varchar](150) NULL,
    [СтатусДокумента] [int] NULL,
    [ДатаДействияС] [datetime] NULL,
    [ДатаДействияПо] [datetime] NULL,
    [КодЕПГУ] [varchar](50) NULL,
    [КодВерификатора] [int] NULL,
    [ДатаИзменения] [datetime] NULL,
    [Код_Заявления] [int] NULL,
    [КодУсловия] [int] NULL,
    [FileHash] [varchar](50) NULL,
    [DepartmentId] [int] NULL,
    [Код_Специальности] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Все_Заявления]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Все_Заявления](
    [Код_Заявления] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [Код_Специальности] [int] NOT NULL,
    [Основания] [varchar](50) NULL,
    [ДистОбразование] [bit] NULL,
    [НомерЛД] [varchar](50) NULL,
    [Номер] [int] NULL,
    [Шифр] [varchar](50) NULL,
    [Факультет] [int] NULL,
    [Статус] [int] NULL,
    [Оригинал] [bit] NULL,
    [Номер_договора] [nvarchar](50) NULL,
    [Сокр_Обучение] [bit] NULL,
    [Затраты] [nvarchar](50) NULL,
    [СрокОт] [datetime] NULL,
    [СрокДо] [datetime] NULL,
    [Дата_Подачи] [datetime] NULL,
    [Код_Пред] [int] NULL,
    [УслОбучения] [int] NULL,
    [КодГруппы] [int] NULL,
    [ЭкзЛист] [varchar](5) NULL,
    [Дата_Зачисления] [datetime] NULL,
    [Приказ] [nvarchar](50) NULL,
    [НаправлениеЦП] [varchar](100) NULL,
    [Зачислен] [bit] NULL,
    [Приоритет] [int] NULL,
    [Код_заказчика] [int] NULL,
    [Тип_Договора] [int] NULL,
    [НомерКвитанции] [varchar](30) NULL,
    [ДатаОплаты] [varchar](30) NULL,
    [Сумма] [varchar](30) NULL,
    [Слушатель] [bit] NULL,
    [ЗабралДок] [bit] NULL,
    [ЗабралДата] [smalldatetime] NULL,
    [ДатаПодачиОригинала] [smalldatetime] NULL,
    [GUIDz] [uniqueidentifier] NULL,
    [Перевод] [int] NULL,
    [Восстановление] [bit] NULL,
    [Курс] [varchar](20) NULL,
    [Проверено] [bit] NULL,
    [ВП] [bit] NULL,
    [КодПрофиля] [int] NULL,
    [ОтказалсяОтЗачисления] [bit] NOT NULL,
    [ВыгрузкаФИС] [bit] NOT NULL,
    [ВыгрузкаФИСДата] [smalldatetime] NULL,
    [НомДоговора] [int] NULL,
    [ПриоритетУсл] [int] NULL,
    [Проходит] [bit] NOT NULL,
    [КодОператора] [int] NULL,
    [ДатаЗаключения] [datetime] NULL,
    [Удалена] [bit] NOT NULL,
    [УдаленаДата] [smalldatetime] NULL,
    [УдаленаОператор] [int] NULL,
    [Комментарии] [varchar](100) NULL,
    [ПричинаУдаления] [varchar](700) NULL,
    [БаллИД] [float] NULL,
    [КодФормы] [int] NULL,
    [КодДокументаВП] [int] NULL,
    [КодДокументаПП] [int] NULL,
    [КодДокументаОП] [int] NULL,
    [ОтказалсяОтЗачисленияДата] [smalldatetime] NULL,
    [КодДокументаЛьготы] [int] NULL,
    [ВидЛьготы] [int] NULL,
    [СогласенНаЗачисление] [bit] NULL,
    [СогласенДата] [smalldatetime] NULL,
    [КодПериодаОплаты] [int] NULL,
    [Рекомендован] [bit] NULL,
    [РекомендованДата] [smalldatetime] NULL,
    [КодПриказа] [int] NULL,
    [КодОплаты] [int] NULL,
    [ПериодОплаты] [smalldatetime] NULL,
    [Корреспонденция] [int] NULL,
    [ДопСоглашение] [bit] NULL,
    [ДатаСоглашения] [smalldatetime] NULL,
    [ИзменениеФИС] [smalldatetime] NULL,
    [Примечание] [varchar](100) NULL,
    [ВИ_Место] [varchar](350) NULL,
    [ВИ_ДО] [bit] NULL,
    [КодДокументаВИ] [int] NULL,
    [ПримечаниеФИС] [varchar](500) NULL,
    [СписокВсехЛД] [varchar](500) NULL,
    [ТипПлательщика] [int] NULL,
    [КодЕПГУ] [bigint] NULL,
    [СтатусЕПГУ] [int] NULL,
    [ЗачетнаяКнижка] [varchar](350) NULL,
    [ДатаИзмененияСтатуса] [datetime] NULL,
    [ДатаИзмененияЗаявления] [datetime] NULL,
    [ДатаЕпгу] [datetime] NULL,
    [КодСпособаПодачи] [int] NULL,
    [СогласиеЕПГУ] [bit] NULL,
    [СогласиеДатаЕПГУ] [smalldatetime] NULL,
    [КодВидаОригинала] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [ПриоритетЕПГУ] [int] NULL,
    [ВысшийПриоритет] [bit] NULL,
    [ВысшийПриоритетМесто] [int] NULL,
    [КодПараметраСпециальности] [int] NULL,
    [ОригиналПриоритет] [bit] NULL,
    [ОригиналПриоритетМесто] [int] NULL,
    [КодПараметра1] [int] NULL,
    [КодПараметра2] [int] NULL,
    [ВидЛьготыЕПГУ] [int] NULL,
    [КодПричиныОтклонения] [int] NULL,
    [СтатусДоговораЕПГУ] [int] NULL,
    CONSTRAINT [PK__Копия All_Statem__394E6323] PRIMARY KEY CLUSTERED
(
[Код_Заявления] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Все_Оценки]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Все_Оценки](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [Код_Заявления] [int] NOT NULL,
    [Код_Дисц] [int] NULL,
    [Код_Испытания] [int] NULL,
    [Код_Дисциплины] [int] NOT NULL,
    [Оценка] [float] NULL,
    [Серия_Документа] [varchar](20) NULL,
    [Номер_Документа] [varchar](50) NULL,
    [ИтогОценка] [int] NULL,
    [На_Выбор] [bit] NULL,
    [КодЭкз] [int] NULL,
    [Дата_Экзамена] [smalldatetime] NULL,
    [КодОснования] [int] NULL,
    [Год_Документа] [int] NULL,
    [Номер_Дисциплины] [int] NULL,
    [ДатаЕпгу] [datetime] NULL,
    [КодЭкзамГруппы] [int] NULL,
    CONSTRAINT [PK__Копия All_Estima__37661AB1] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Вуз_настройки]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Вуз_настройки](
    [Код] [int] NOT NULL,
    [ВУЗ] [varchar](550) NULL,
    [Сокращение] [varchar](100) NULL,
    [Адрес] [varchar](200) NULL,
    [Сайт] [nvarchar](50) NULL,
    [ректор] [varchar](50) NULL,
    [Заявление] [nvarchar](4000) NULL,
    [Кому] [varchar](400) NULL,
    [УчебныйГод] [varchar](50) NULL,
    [Удаление] [bit] NULL,
    [Отличать_ФО] [bit] NULL,
    [ВестиЛог] [bit] NULL,
    [ПроверкаЕГЭ] [bit] NULL,
    [ТипНумерации] [int] NULL,
    [ПроверкаПаспорта] [bit] NULL,
    [ЗабралДок] [bit] NULL,
    [ИзменениеЛД] [bit] NULL,
    [Маска] [varchar](50) NULL,
    [ПраваЛД] [int] NULL,
    [ОригиналДок] [int] NULL,
    [МаскаДоговора] [varchar](50) NULL,
    [ПроверкаФИС] [int] NULL,
    [Изменение] [bit] NULL,
    [Нумерация] [int] NULL,
    [НумерацияДоговора] [int] NULL,
    CONSTRAINT [PK_Вуз_настройки] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Гражданство]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Гражданство](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Гражданство] [varchar](100) NULL,
    [Сокращение] [varchar](50) NULL,
    [Страна] [varchar](100) NULL,
    [ФИС21] [int] NULL,
    [ОКСМ] [int] NULL,
    [ФорматСерия] [nvarchar](250) NULL,
    [ФорматНомер] [nvarchar](250) NULL,
    [КодЕПГУ] [int] NULL,
    CONSTRAINT [PK_Гражданство] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Группы_Специальности]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Группы_Специальности](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Код_Группы] [int] NOT NULL,
    [Код_Спец] [int] NOT NULL,
    [Код_УслОбучения] [int] NULL,
    [Комментарии] [varchar](50) NULL,
    CONSTRAINT [PK_Группы_Специальности] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Дисциплины_Оценки]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Дисциплины_Оценки](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Код_Документа] [varchar](50) NULL,
    [Балл] [varchar](50) NULL,
    [Код_Дициплины] [varchar](50) NULL,
    CONSTRAINT [PK_Документы_Оценки] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Дисциплины-Специальности]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Дисциплины-Специальности](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Код_Специальности] [int] NOT NULL,
    [Код_Дисциплины] [int] NOT NULL,
    [ЕГЭ] [bit] NULL,
    [ДатаЭкзамена] [datetime] NULL,
    [ДатаСобеседования] [datetime] NULL,
    [Номер] [int] NULL,
    [По_Умолчанию] [int] NULL,
    [По_Выбору] [int] NULL,
    [Собеседование] [bit] NULL,
    [СобВсегда] [bit] NULL,
    [КодЭкз] [int] NULL,
    [ШкалаЕГЭ] [int] NULL,
    [ШкалаЕГЭ2] [int] NULL,
    [ШкалаЕГЭ3] [int] NULL,
    [ШкалаЦТ] [int] NULL,
    [ШкалаЦТ2] [int] NULL,
    [ШкалаЦТ3] [int] NULL,
    [По_УмолчаниюСН] [int] NULL,
    [ИспытаниеСПО] [bit] NULL,
    [КодТипаВИ] [int] NULL,
    CONSTRAINT [PK_Дисциплины-Специальности] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Дни_недели]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Дни_недели](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [День_недели] [nvarchar](50) NULL,
    CONSTRAINT [PK_Дни_недели] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Договор]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Договор](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Id] [int] NULL,
    [ФФамилия] [varchar](50) NULL,
    [ФИмя] [varchar](50) NULL,
    [ФОтчество] [varchar](50) NULL,
    [ФПаспортСерия] [varchar](30) NULL,
    [ФПаспортНомер] [varchar](30) NULL,
    [ФКемВыдан] [varchar](70) NULL,
    [ФДатаВыдачи] [datetime] NULL,
    [ФАдрес] [varchar](150) NULL,
    [ФТелефон] [varchar](30) NULL,
    [ФДокумент] [varchar](50) NULL,
    [ЮНазвание] [varchar](150) NULL,
    [ЮИНН] [varchar](30) NULL,
    [ЮКПП] [varchar](30) NULL,
    [ЮАдрес] [varchar](300) NULL,
    [ЮЛС] [varchar](30) NULL,
    [ЮРС] [varchar](300) NULL,
    [ЮБИК] [varchar](30) NULL,
    [ЮОКОНХ] [varchar](30) NULL,
    [ЮОКПО] [varchar](30) NULL,
    [ЮОКАТО] [varchar](30) NULL,
    [ЮКонтЛицо] [varchar](50) NULL,
    [ЮДолжность] [varchar](50) NULL,
    [ЮДокумент] [varchar](50) NULL,
    [ЮТелефон] [varchar](30) NULL,
    [ФГражданство] [varchar](50) NULL,
    [ФСрокПаспорта] [varchar](50) NULL,
    [ФГодРождения] [varchar](50) NULL,
    [ФEmail] [varchar](70) NULL,
    CONSTRAINT [PK_Договор] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДокументыВидыВГруппах]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДокументыВидыВГруппах](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодГруппы] [int] NULL,
    [КодВидаДокумента] [int] NULL,
    CONSTRAINT [PK_ДокументыВидыВГруппах] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДокументыГруппы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДокументыГруппы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [НазваниеГруппы] [varchar](500) NULL,
    [isDelete] [bit] NULL,
    CONSTRAINT [PK_ДокументыГруппы] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДопДанные]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДопДанные](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Выпускник] [varchar](100) NULL,
    [Льготы] [varchar](100) NULL,
    [Отличия] [varchar](100) NULL,
    [Иностранный_Язык] [varchar](100) NULL,
    [Перевод_Документов] [varchar](100) NULL,
    [Вид_Испытания] [varchar](100) NULL,
    [Документ_Об_Образовании] [varchar](100) NULL,
    [Тип_Документа] [varchar](100) NULL,
    [ПоданныеДокументы] [varchar](100) NULL,
    [ТипОУ] [varchar](100) NULL,
    [СокрОтл] [varchar](10) NULL,
    [Приоритет] [int] NULL,
    [Вид_Образования] [varchar](100) NULL,
    [Источник_информации] [varchar](100) NULL,
    CONSTRAINT [PK__ДопДанные__65570293] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Достижения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Достижения](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NULL,
    [КодИД] [int] NULL,
    [СерияИД] [varchar](50) NULL,
    [НомерИД] [varchar](50) NULL,
    [ДатаИД] [smalldatetime] NULL,
    [ОрганизацияИД] [varchar](1000) NULL,
    [ОригиналИД] [bit] NULL,
    [БаллИД] [float] NULL,
    [Примечание] [varchar](1000) NULL,
    [Код_Заявления] [int] NULL,
    [СтатусИД] [int] NULL,
    [КодЕПГУ] [bigint] NULL,
    [КодВерификатора] [int] NULL,
    [ДатаИзменения] [datetime] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [FileHash] [varchar](50) NULL,
    [КодОлимпиады] [int] NULL,
    [КодДипломаОлимпиады] [int] NULL,
    [КодПрофиляОлимпиады] [int] NULL,
    [КодДисциплины] [int] NULL,
    CONSTRAINT [PK_Достижения_1] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДостиженияВиды]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДостиженияВиды](
    [КодДостижения] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](1000) NOT NULL,
    [Сокращение] [varchar](100) NULL,
    [Балл] [float] NOT NULL,
    [Вывод] [bit] NOT NULL,
    [Год] [int] NULL,
    [ФИС36] [int] NULL,
    [ИзменениеБалла] [bit] NULL,
    [КодПК] [int] NULL,
    [КодЕПГУ] [int] NULL,
    [ВесДостижения] [float] NULL,
    CONSTRAINT [PK_Достижения] PRIMARY KEY CLUSTERED
(
[КодДостижения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДостиженияВидыВГруппах]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДостиженияВидыВГруппах](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодГруппы] [int] NULL,
    [КодВидаДостижения] [int] NULL,
    CONSTRAINT [PK_ДостиженияВидыВГруппах] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ДостиженияГруппы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ДостиженияГруппы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [НазваниеГруппы] [nvarchar](500) NOT NULL,
    [isDelete] [bit] NOT NULL,
    CONSTRAINT [PK_ДостиженияКатегории] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Заказчики]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Заказчики](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Заказчик] [varchar](200) NULL,
    [Сокращение] [varchar](50) NULL,
    [Адрес] [varchar](200) NULL,
    [Банк] [varchar](400) NULL,
    [ИНН] [varchar](50) NULL,
    [БИК] [varchar](200) NULL,
    [РС] [varchar](200) NULL,
    [КС] [varchar](50) NULL,
    [ОКПО] [varchar](50) NULL,
    [ОКВД] [varchar](50) NULL,
    [ПаспортныеДанные] [varchar](200) NULL,
    [ПаспортВыдан] [varchar](50) NULL,
    [ПаспортДата] [smalldatetime] NULL,
    [Лицо] [varchar](200) NULL,
    [Основание] [varchar](200) NULL,
    [Вывод] [bit] NULL,
    [ДоговорЦО] [bit] NULL,
    [НомерДоговораЦО] [varchar](200) NULL,
    [ДатаДоговораЦО] [datetime] NULL,
    [ОГРН] [varchar](200) NULL,
    [КПП] [varchar](10) NULL,
    CONSTRAINT [PK_Заказчики] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Кафедры]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Кафедры](
    [Код] [int] NOT NULL,
    [Название] [varchar](150) NULL,
    [Сокращение] [varchar](12) NULL,
    [Номер] [int] NULL,
    [Код_Факультета] [int] NULL,
    [ЗавКафедрой] [varchar](100) NULL,
    [Аудитория] [varchar](50) NULL,
    [Телефон] [varchar](50) NULL,
    [ВнутрТелефон] [varchar](50) NULL,
    [EMail] [varbinary](100) NULL,
    [URL] [varchar](200) NULL,
    CONSTRAINT [PK_Кафедры] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Логи]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Логи](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Код_операции] [int] NULL,
    [Операция] [varchar](50) NULL,
    [Логин] [varchar](50) NULL,
    [компьютер] [varchar](50) NULL,
    [код_абитуриента] [int] NULL,
    [дата] [smalldatetime] NULL,
    [Основное] [varchar](500) NULL,
    [Адрес] [varchar](500) NULL,
    [Образование] [varchar](500) NULL,
    [Заявление] [varchar](500) NULL,
    [Паспорт] [varchar](250) NULL,
    [Код_заявления] [int] NULL,
    CONSTRAINT [PK_Логи] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Льготы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Льготы](
    [КодЛьгот] [int] IDENTITY(1,1) NOT NULL,
    [Льготы] [varchar](50) NOT NULL,
    [СокрЛьгот] [varchar](50) NULL,
    [Вывод] [bit] NOT NULL,
    CONSTRAINT [PK__Копия Отличия__2E31B632] PRIMARY KEY CLUSTERED
(
[КодЛьгот] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Олимпиады]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Олимпиады](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [НазваниеОлимп] [varchar](50) NULL,
    CONSTRAINT [PK_Олимпиады] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ОплатаДоговора]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ОплатаДоговора](
    [ОплатаКод] [int] IDENTITY(1,1) NOT NULL,
    [ОплатаСумма] [int] NOT NULL,
    [ОплатаДата] [smalldatetime] NULL,
    [ОплатаТип] [int] NOT NULL,
    [УчебныйГод] [varchar](50) NULL,
    [Код_Заявления] [int] NOT NULL,
    [ОплатаПримечание] [varchar](250) NULL,
    CONSTRAINT [PK_ОплатаДоговора] PRIMARY KEY CLUSTERED
(
[ОплатаКод] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ОплатаПериоды]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ОплатаПериоды](
    [ПериодКод] [int] IDENTITY(1,1) NOT NULL,
    [Форма_Обучения] [int] NOT NULL,
    [Год_Набора] [int] NOT NULL,
    [КодОплаты] [int] NOT NULL,
    [Период1] [nvarchar](50) NULL,
    [Период2] [nvarchar](50) NULL,
    [Период3] [nvarchar](50) NULL,
    [Период4] [nvarchar](50) NULL,
    [УчебныйГод] [nvarchar](50) NULL,
    [Уровень] [int] NULL,
    CONSTRAINT [PK_ОплатаПериоды] PRIMARY KEY CLUSTERED
(
[ПериодКод] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ОснованияИспытаний]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ОснованияИспытаний](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](150) NOT NULL,
    [Вывод] [bit] NULL,
    CONSTRAINT [PK_ОснованияИспытаний] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Отличия]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Отличия](
    [КодОтл] [int] IDENTITY(1,1) NOT NULL,
    [Отличие] [varchar](50) NOT NULL,
    [СокрОтл] [varchar](50) NULL,
    CONSTRAINT [PK_Отличия] PRIMARY KEY CLUSTERED
(
[КодОтл] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Отчеты]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Отчеты](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название_Отчета] [varchar](100) NOT NULL,
    [Файл] [varchar](100) NOT NULL,
    [Вывод] [bit] NULL,
    [ДляФормыОтчеты] [int] NULL,
    [Сортировка] [int] NULL,
    [DepartmentID] [int] NULL,
    [CampaignId] [int] NULL,
    CONSTRAINT [PK_Отчеты] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Параметры]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Параметры](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Параметр] [varchar](300) NOT NULL,
    [Значение] [varchar](2000) NULL,
    [Комментарий] [varchar](300) NULL,
    [Категория] [varchar](50) NULL,
    [Сайт] [bit] NULL,
    CONSTRAINT [PK_Параметры] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Подразделения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Подразделения](
    [Код] [int] NOT NULL,
    [Подразделение] [varchar](200) NULL,
    [Сокращение] [varchar](50) NULL,
    [Адрес] [varchar](50) NULL,
    [Название] [varchar](200) NULL,
    [Город] [varchar](200) NULL,
    [Регион] [varchar](200) NULL,
    [Телефон] [varchar](50) NULL,
    [Email] [varchar](50) NULL,
    [ICQ] [varchar](50) NULL,
    [Skype] [varchar](50) NULL,
    [Директор] [varchar](100) NULL,
    [Префикс] [varchar](50) NULL,
    [КодФакультета] [int] NULL,
    [Обозначение] [varchar](10) NULL,
    [КодДеканат] [int] NULL,
    [СессионныйКлюч] [varchar](100) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Подразделения_old]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Подразделения_old](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Подразделение] [varchar](200) NULL,
    [Сокращение] [varchar](50) NULL,
    [Адрес] [varchar](50) NULL,
    [Название] [varchar](200) NULL,
    [Город] [varchar](200) NULL,
    [Регион] [varchar](200) NULL,
    [Телефон] [varchar](50) NULL,
    [Email] [varchar](50) NULL,
    [ICQ] [varchar](50) NULL,
    [Skype] [varchar](50) NULL,
    [Директор] [varchar](100) NULL,
    [Обозначение] [varchar](10) NULL,
    CONSTRAINT [PK_Подразделения] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Пользователи](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [Логин] [varchar](100) NULL,
    [ФИО] [varchar](100) NULL,
    [Описание] [varchar](150) NULL,
    [ДатаПослВхода] [datetime] NULL,
    [ПослКомпьютер] [varchar](100) NULL,
    [Домен] [varchar](100) NULL,
    [SID] [varchar](200) NULL,
    [Пароль] [varchar](200) NULL,
    [Заблокирован] [bit] NULL,
    [ФайлСтиля] [varchar](100) NULL,
    [Email] [varchar](150) NULL,
    [Телефон] [varchar](100) NULL,
    [ВремяБлокировки] [datetime] NULL,
    [СчетчикПопыток] [smallint] NULL,
    [ДатаСозданияПароля] [datetime] NULL,
    [Удален] [bit] NULL,
    [Должность] [varchar](250) NULL,
    CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
    CONSTRAINT [IX_Пользователи] UNIQUE NONCLUSTERED
(
[Логин] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ПользователиДоступ]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ПользователиДоступ](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодДоступа] [int] NOT NULL,
    [КодРолиПользователя] [int] NOT NULL,
    [Значение] [bit] NOT NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ПользователиОграничения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ПользователиОграничения](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодРолиПользователя] [int] NOT NULL,
    [Уровень] [int] NULL,
    [Форма] [int] NULL,
    [Условие] [int] NULL,
    CONSTRAINT [PK_ПользователиОграничения] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Пользователи-Роли]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Пользователи-Роли](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодПользователя] [int] NOT NULL,
    [КодРоли] [int] NOT NULL,
    [КодОбъекта] [int] NULL,
    CONSTRAINT [PK_Пользователи-Роли] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ПоляЛД]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ПоляЛД](
    [ПолеКод] [int] IDENTITY(1,1) NOT NULL,
    [ПолеПодпись] [nvarchar](50) NOT NULL,
    [ПолеКолонка] [nvarchar](50) NOT NULL,
    [ПолеВид] [int] NOT NULL,
    [ПолеСписок] [nvarchar](500) NULL,
    [ПолеСтрока] [int] NULL,
    [ПолеСтолбец] [int] NULL,
    CONSTRAINT [PK_ПоляЛД] PRIMARY KEY CLUSTERED
(
[ПолеКод] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Предметы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Предметы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Предмет] [nvarchar](50) NULL,
    CONSTRAINT [PK_Предметы] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Приемная_Компания]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Приемная_Компания](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [nvarchar](150) NOT NULL,
    [Статус] [int] NULL,
    [СрокС] [int] NULL,
    [СрокПО] [int] NULL,
    [UID] [nvarchar](50) NULL,
    [ТипПК] [int] NULL,
    [МаксБаллИД] [int] NULL,
    [DepartmentID] [int] NULL,
    [КоличествоСогласий] [int] NULL,
    CONSTRAINT [PK_Приемная_Компания] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ПриказыФИС]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ПриказыФИС](
    [КодПриказа] [int] IDENTITY(1,1) NOT NULL,
    [UID] [varchar](150) NOT NULL,
    [НазваниеПриказа] [varchar](500) NOT NULL,
    [РегНомерПриказа] [varchar](50) NOT NULL,
    [РегНомерФИС] [varchar](50) NOT NULL,
    [ДатаПриказа] [smalldatetime] NOT NULL,
    [КодПК] [int] NOT NULL,
    [Источник] [int] NOT NULL,
    [ЭтапПриема] [int] NOT NULL,
    [Уровень] [int] NULL,
    [ФормаОбучения] [int] NULL,
    [Вывод] [bit] NOT NULL,
    [Опубликован] [bit] NOT NULL,
    [ТитулПриказа] [varchar](1000) NULL,
    [Проведен] [bit] NULL,
    [ПроведенДата] [datetime] NULL,
    CONSTRAINT [PK_ПриказыФИС] PRIMARY KEY CLUSTERED
(
[КодПриказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Регионы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Регионы](
    [код] [int] IDENTITY(1,1) NOT NULL,
    [Регион] [varchar](200) NULL,
    [Описание] [varchar](100) NULL,
    CONSTRAINT [PK_Регионы] PRIMARY KEY CLUSTERED
(
[код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Роли]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Роли](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Имя] [varchar](100) NOT NULL,
    [Программа] [varchar](50) NULL,
    [Объект] [varchar](50) NULL,
    [Столбец] [varchar](50) NULL,
    [АктивностьГрафиков] [bit] NULL,
    CONSTRAINT [PK_Роли] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Семья]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Семья](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [IDa] [int] NOT NULL,
    [Родство] [varchar](50) NULL,
    [ФИО] [varchar](100) NULL,
    [Дата_Рождения] [smalldatetime] NULL,
    [Адрес] [nvarchar](500) NULL,
    [Телефон] [varchar](50) NULL,
    [Договор] [bit] NULL,
    [ПаспортНомер] [varchar](50) NULL,
    [ПаспортКемВыдан] [varchar](500) NULL,
    [ПаспортДата] [smalldatetime] NULL,
    [Адрес2] [nvarchar](500) NULL,
    [ПаспортТип] [varchar](100) NULL,
    [ПаспортСерия] [varchar](50) NULL,
    [ПаспортНом] [varchar](50) NULL,
    [МестоРождения] [varchar](500) NULL,
    [Фамилия] [varchar](200) NULL,
    [Имя] [varchar](200) NULL,
    [Отчество] [varchar](200) NULL,
    [Email] [varchar](100) NULL,
    [ПаспортКодПодр] [varchar](50) NULL,
    [ПаспортГражданство] [varchar](50) NULL,
    [СНИЛС_Номер] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Специальности]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Специальности](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Специальность] [varchar](20) NULL,
    [СтараяСпециальность] [varchar](50) NULL,
    [ОКСО] [varchar](50) NOT NULL,
    [Название] [varchar](50) NULL,
    [Прием] [bit] NULL,
    [Код_Факультета] [int] NULL,
    [Код_Кафедры] [int] NULL,
    [Квалификация] [varchar](500) NULL,
    [Название_Спец] [varchar](500) NULL,
    [Срок_Обучения] [varchar](50) NULL,
    [Цена1к] [money] NULL,
    [Цена2к] [money] NULL,
    [Цена3к] [money] NULL,
    [Цена4к] [money] NULL,
    [Цена5к] [money] NULL,
    [Цена6к] [money] NULL,
    [Шифр] [varchar](100) NULL,
    [ОО] [int] NULL,
    [ЦН] [int] NULL,
    [СН] [int] NULL,
    [Всего] [int] NULL,
    [Основания] [varchar](50) NULL,
    [Экзамены] [varchar](500) NULL,
    [Описание] [text] NULL,
    [СокрОбуч] [bit] NULL,
    [Собеседование] [bit] NULL,
    [ФормаОбучения] [int] NULL,
    [Специализация] [varchar](200) NULL,
    [СвояШкала] [bit] NULL,
    [КодВДеканате] [int] NULL,
    [Бакалавриат] [bit] NULL,
    [ДО] [bit] NULL,
    [Уровень] [int] NULL,
    [Срок_Обучения_ДО] [real] NULL,
    [СтатусНаправления] [int] NOT NULL,
    [СпециализацияСокр] [varchar](50) NULL,
    [СкрытьВотчетах] [bit] NOT NULL,
    [БезЭкзаменов] [bit] NULL,
    [КодПоФИС] [int] NULL,
    [Проверка] [bit] NOT NULL,
    [СписокЗаявлений] [varchar](500) NULL,
    [КВ] [int] NULL,
    [МИНОБР] [int] NULL,
    [ГодНабора] [int] NULL,
    [УГС] [varchar](250) NULL,
    [ВыгрузкаФИС] [bit] NULL,
    [КодПК] [int] NULL,
    [ПолнаяЦена] [money] NULL,
    [СК] [int] NULL,
    [СВК] [int] NULL,
    [UID1] [varchar](50) NULL,
    [UID2] [varchar](50) NULL,
    [UID3] [varchar](50) NULL,
    [UID5] [varchar](50) NULL,
    [КонкурсДляКрыма] [bit] NULL,
    [СкрытьНаСайте] [bit] NULL,
    [ДатаПриемаДо] [datetime] NULL,
    [ОтключитьОО] [bit] NULL,
    [ОтключитьОП] [bit] NULL,
    [ОтключитьСК] [bit] NULL,
    [ОтключитьЦН] [bit] NULL,
    [ОтключитьСН] [bit] NULL,
    [ДополнительныйНабор] [bit] NULL,
    [IDDirection] [int] NULL,
    [ДопКонкурс] [int] NULL,
    [Примечание] [varchar](500) NULL,
    [ДатаНачалаОбучения] [datetime] NULL,
    [ДатаОкончанияОбучения] [datetime] NULL,
    [ПоУГС] [bit] NULL,
    [СсылкаНаСайт] [varchar](500) NULL,
    [Псевдоним] [varchar](500) NULL,
    [ТипКГ] [int] NULL,
    [КодСовмещеннойКвоты] [int] NULL,
    [МедицинскийОсмотр] [bit] NULL,
    [Портфолио] [bit] NULL,
    [ПредварительныеПрослушивания] [bit] NULL,
    CONSTRAINT [PK__Специальности__170E59B8] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СпециальностиПараметры]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СпециальностиПараметры](
    [КодПараметраСпециальности] [int] IDENTITY(1,1) NOT NULL,
    [КодСправочника] [int] NOT NULL,
    [КодСпециальности] [int] NOT NULL,
    CONSTRAINT [PK_СпециальностиПараметры] PRIMARY KEY CLUSTERED
(
[КодПараметраСпециальности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СпециальностиПрофили]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СпециальностиПрофили](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Профиль] [varchar](250) NOT NULL,
    [ПрофильСокр] [varchar](50) NOT NULL,
    [КодСпециальности] [int] NOT NULL,
    [Вывод] [bit] NOT NULL,
    [ОО] [int] NULL,
    [ЦН] [int] NULL,
    [СН] [int] NULL,
    [ОП] [int] NULL,
    [МИНОБР] [int] NULL,
    [НаправлениеКод] [varchar](50) NULL,
    [НаправлениеНазвание] [varchar](500) NULL,
    [СсылкаНаСайт] [varchar](500) NULL,
    CONSTRAINT [PK_СпециальностиПрофили] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СпециальностиЦО]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СпециальностиЦО](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Код_Специальности] [int] NOT NULL,
    [Код_Организации] [int] NOT NULL,
    [Мест] [int] NOT NULL,
    CONSTRAINT [PK_СпециальностиЦО] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СправочникВоенкоматы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СправочникВоенкоматы](
    [КодВоенкомата] [int] IDENTITY(1,1) NOT NULL,
    [Военкомат] [nvarchar](800) NOT NULL,
    [ВоенкоматАдрес] [nvarchar](800) NULL,
    [ВоенкоматТелефон] [nvarchar](100) NULL,
    [ВоенкоматНачальник] [nvarchar](100) NULL,
    CONSTRAINT [PK_СправочникВоенкоматы] PRIMARY KEY CLUSTERED
(
[КодВоенкомата] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Справочники]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Справочники](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](100) NOT NULL,
    [Комментарий] [varchar](200) NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СправочникиСодержимое]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СправочникиСодержимое](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [КодСправочника] [int] NOT NULL,
    [Наименование] [varchar](120) NULL,
    [Комментарий] [varchar](200) NULL,
    [КодРодителя] [int] NULL,
    [Удалена] [bit] NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[СправочникОплата]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[СправочникОплата](
    [КодОплаты] [int] NOT NULL,
    [Оплата] [varchar](250) NOT NULL,
    [Дата] [bit] NULL,
    [Период] [int] NULL,
    [КодФормы] [int] NULL,
    [Удалена] [bit] NOT NULL,
    CONSTRAINT [PK_СправочникОплата] PRIMARY KEY CLUSTERED
(
[КодОплаты] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Статус_Студента]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Статус_Студента](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Статус] [varchar](50) NULL,
    [Описание] [varchar](50) NULL,
    [Сокращ] [varchar](50) NULL,
    CONSTRAINT [PK_Статус студента] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Тип_Обучения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Тип_Обучения](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](50) NULL,
    [Комментарий] [varchar](200) NULL,
    [Прием] [bit] NULL,
    [Префикс] [varchar](10) NULL,
    [КодЕПГУ] [int] NULL,
    CONSTRAINT [PK_Тип_Обучения] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Тип_Перемещения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Тип_Перемещения](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](100) NULL,
    [Статус1] [int] NULL,
    [Статус2] [int] NULL,
    [Комментарий] [varchar](100) NULL,
    [Действие] [varchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Типы_Недели]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Типы_Недели](
    [Код] [int] NOT NULL,
    [Название] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Уровень_образования]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Уровень_образования](
    [Код_записи] [int] IDENTITY(1,1) NOT NULL,
    [Название] [varchar](50) NULL,
    [Уровень] [varchar](50) NOT NULL,
    [Описание] [varchar](100) NULL,
    [Нумерация] [int] NULL,
    [Категория] [int] NULL,
    [Квалификация] [varchar](50) NULL,
    [Вывод] [bit] NULL,
    [ФИС2] [int] NULL,
    [КодКвалификации] [int] NULL,
    [ВсегоЗаявлений] [int] NULL,
    [ВсегоОО] [int] NULL,
    [ВсегоЦН] [int] NULL,
    [ВсегоОП] [int] NULL,
    [ВсегоСН] [int] NULL,
    [КодЕПГУ] [int] NULL,
    CONSTRAINT [PK_Уровень_образования] PRIMARY KEY CLUSTERED
(
[Код_записи] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Условия_Обучения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Условия_Обучения](
    [КодОсн] [int] NOT NULL,
    [Основания] [varchar](50) NULL,
    [Комментарии] [varchar](50) NULL,
    [Приём] [bit] NULL,
    [Условия] [varchar](50) NULL,
    [Префикс] [varchar](50) NULL,
    [ФИС15] [int] NULL,
    [Сортировка] [int] NULL,
    [КодЕПГУ] [int] NULL,
    CONSTRAINT [PK_Условия_Обучения] PRIMARY KEY CLUSTERED
(
[КодОсн] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[УчебныеГода]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[УчебныеГода](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Учебный_год] [varchar](50) NULL,
    [Год] [int] NOT NULL,
    [Вывод] [bit] NULL,
    CONSTRAINT [PK_УчебныеГода] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Файлы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Файлы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NULL,
    [Название] [varchar](50) NULL,
    [Размер] [bigint] NULL,
    [ТипФайла] [varchar](50) NULL,
    [Файл] [image] NULL,
    [Описание] [varchar](100) NULL,
    CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Факультеты]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Факультеты](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [Факультет] [varchar](250) NOT NULL,
    [Сокращение] [varchar](50) NOT NULL,
    [Псевдоним] [varchar](50) NULL,
    [Тип_Обучения] [int] NULL,
    [ПК] [bit] NULL,
    [Декан] [varchar](100) NULL,
    [Телефон] [varchar](50) NULL,
    [Аудитория] [varchar](50) NULL,
    [Сайт] [bit] NULL,
    [ВнутрТелефон] [varchar](50) NULL,
    [EMail] [varchar](50) NULL,
    [URL] [varchar](150) NULL,
    [ФайлСтиля] [varchar](50) NULL,
    [Шифр] [varchar](50) NULL,
    [Описание] [text] NULL,
    [Номер] [int] NULL,
    [Прием] [bit] NULL,
    [РодПадеж] [varchar](250) NULL,
    [DepartmentID] [int] NULL,
    CONSTRAINT [PK_Факультеты] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ФИС10]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ФИС10](
    [ID] [int] NOT NULL,
    [Code] [nvarchar](50) NULL,
    [Name] [nvarchar](500) NOT NULL,
    [Period] [nvarchar](50) NULL,
    [QualificationCode] [nvarchar](50) NULL,
    [UGSCode] [nvarchar](50) NULL,
    [UGSName] [nvarchar](500) NULL,
    [NewCode] [nvarchar](50) NULL,
    [ParentDirectionID] [int] NULL,
    [EducationLevel] [nvarchar](250) NULL,
    CONSTRAINT [PK_ФИС10] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ФИС31]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ФИС31](
    [UID] [int] NOT NULL,
    [Название] [varchar](500) NOT NULL,
    CONSTRAINT [PK_ФИС31] PRIMARY KEY CLUSTERED
(
[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ФИС36]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ФИС36](
    [UID] [int] NOT NULL,
    [Название] [varchar](250) NOT NULL,
    CONSTRAINT [PK_ФИС36] PRIMARY KEY CLUSTERED
(
[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Форма_Обучения]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Форма_Обучения](
    [КодФорм] [int] NOT NULL,
    [ФормаОбучения] [varchar](50) NULL,
    [Дополнительно] [varchar](50) NULL,
    [Приём] [bit] NULL,
    CONSTRAINT [PK__Копия Условия_Об__4826925F] PRIMARY KEY CLUSTERED
(
[КодФорм] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ШкалаОценок]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ШкалаОценок](
    [Код] [int] NOT NULL,
    [Оценка] [varchar](50) NULL,
    [Описание] [varchar](100) NULL,
    CONSTRAINT [PK_ШкалаОценок] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Экзаменаторы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Экзаменаторы](
    [КодЭкз] [int] IDENTITY(1,1) NOT NULL,
    [Экзаменатор] [varchar](50) NOT NULL,
    [Должность] [varchar](50) NULL,
    CONSTRAINT [PK_Экзаменаторы] PRIMARY KEY CLUSTERED
(
[КодЭкз] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[ЭкзаменационныеГруппы]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ЭкзаменационныеГруппы](
    [Код] [int] IDENTITY(1,1) NOT NULL,
    [НомерГруппы] [varchar](150) NULL,
    [НазваниеГруппы] [varchar](250) NULL,
    [Год] [int] NULL,
    [Вывод] [bit] NULL,
    [ДатаЭкзамена] [smalldatetime] NULL,
    [Код_Дисциплины] [int] NULL,
    [Код_Испытания] [int] NULL,
    [КодСценария] [int] NULL,
    [ДатаНачалаТестирования] [datetime] NULL,
    [ДатаОкончанияТестирования] [datetime] NULL,
    [КоличествоМест] [int] NULL,
    [КодФормы] [int] NULL,
    [КодУровня] [int] NULL,
    [КодУсловия] [int] NULL,
    [МестоПроведения] [varchar](500) NULL,
    [DepartmentId] [int] NULL,
    [Код_Специальности] [int] NULL,
    [ДатаНачалаРегистрации] [datetime] NULL,
    [ДатаОкончанияРегистрации] [datetime] NULL,
    [КодВидаСпорта] [int] NULL,
    [КодВидаЭкзамена] [int] NULL,
    [СтатусФилиала] [int] NULL,
    [РезервныйДень] [bit] NULL,
    CONSTRAINT [PK_АбитГруппы] PRIMARY KEY CLUSTERED
(
[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_StartDate]  DEFAULT (getdate()) FOR [StartDate]
    GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_DepartmentOrder]  DEFAULT ((0)) FOR [DepartmentOrder]
    GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_isHidden]  DEFAULT ((0)) FOR [isHidden]
    GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
    GO
ALTER TABLE [dbo].[DocumentCategories] ADD  CONSTRAINT [DF_DocumentCategories_IsVisibleSite]  DEFAULT ((0)) FOR [IsVisibleSite]
    GO
ALTER TABLE [dbo].[EpguLogs] ADD  CONSTRAINT [DF_EpguLogs_DateCreation]  DEFAULT (getdate()) FOR [DateCreation]
    GO
ALTER TABLE [dbo].[EventLog] ADD  CONSTRAINT [DF_EventLog_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
    GO
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_CreatedOnDate]  DEFAULT (getdate()) FOR [CreatedOnDate]
    GO
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
    GO
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_IsUnloaded]  DEFAULT ((0)) FOR [IsUnloaded]
    GO
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_FileGuid]  DEFAULT (newid()) FOR [FileGuid]
    GO
ALTER TABLE [dbo].[KLADR] ADD  CONSTRAINT [DF_KLADR_IsActual]  DEFAULT ((1)) FOR [IsActual]
    GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_MessageDate]  DEFAULT (getdate()) FOR [MessageDate]
    GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_MessageIsRead]  DEFAULT ((0)) FOR [MessageIsRead]
    GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_IsPublished]  DEFAULT ((0)) FOR [IsPublished]
    GO
ALTER TABLE [dbo].[АбитДисциплины] ADD  CONSTRAINT [DF_АбитДисциплины_ИН_ЯЗ]  DEFAULT (0) FOR [ИН_ЯЗ]
    GO
ALTER TABLE [dbo].[АбитДисциплины] ADD  CONSTRAINT [DF_АбитДисциплины_СПО]  DEFAULT ((0)) FOR [СПО]
    GO
ALTER TABLE [dbo].[Вид_Документа] ADD  CONSTRAINT [DF_Вид_Документа_Вывод]  DEFAULT ((1)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[Вид_Документа] ADD  CONSTRAINT [DF_Вид_Документа_Обязателен]  DEFAULT ((0)) FOR [Обязателен]
    GO
ALTER TABLE [dbo].[Вид_Документа] ADD  CONSTRAINT [DF_Вид_Документа_ВыводНаСайте]  DEFAULT ((0)) FOR [ВыводНаСайте]
    GO
ALTER TABLE [dbo].[ВорДокумент] ADD  CONSTRAINT [DF_ВорДокумент_Серия]  DEFAULT ('Б') FOR [Серия]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Общежитие]  DEFAULT ((0)) FOR [Общежитие]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Наличие_Матери]  DEFAULT ((0)) FOR [Наличие_Матери]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Наличие_Отца]  DEFAULT ((0)) FOR [Наличие_Отца]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Опекунство]  DEFAULT ((0)) FOR [Опекунство]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Состоит_В_Браке]  DEFAULT ((0)) FOR [Состоит_В_Браке]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_НеМестный]  DEFAULT ((1)) FOR [НеМестный]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Село]  DEFAULT ((0)) FOR [Село]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Второе_Образование]  DEFAULT ((0)) FOR [Второе_Образование]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_GUID]  DEFAULT (newid()) FOR [GUID]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_ВторойНабор]  DEFAULT ((0)) FOR [ВторойНабор]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_Заблокировать]  DEFAULT ((0)) FOR [Заблокировать]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_ПроверкаФБС]  DEFAULT ((0)) FOR [ПроверкаФБС]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_НеНайденФБС]  DEFAULT ((0)) FOR [НеНайденФБС]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_ФИС]  DEFAULT ((0)) FOR [ФИС]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_ПриказФИС]  DEFAULT ((0)) FOR [ПриказФИС]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_EmailConfirmed]  DEFAULT ((0)) FOR [EmailConfirmed]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] ADD  CONSTRAINT [DF_Все_Абитуриенты_ВидВИ]  DEFAULT ((0)) FOR [ВидТестирования]
    GO
ALTER TABLE [dbo].[Все_Документы] ADD  CONSTRAINT [DF_Все_Документы_СтатусДокумента]  DEFAULT ((0)) FOR [СтатусДокумента]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ДистОбразование]  DEFAULT ((0)) FOR [ДистОбразование]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Статус]  DEFAULT ((6)) FOR [Статус]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Оригинал]  DEFAULT ((0)) FOR [Оригинал]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Сокр_Обучение]  DEFAULT ((0)) FOR [Сокр_Обучение]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Зачислен]  DEFAULT ((0)) FOR [Зачислен]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Тип_Договора]  DEFAULT ((0)) FOR [Тип_Договора]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Слушатель]  DEFAULT ((0)) FOR [Слушатель]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ЗабралДок]  DEFAULT ((0)) FOR [ЗабралДок]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_GUIDz]  DEFAULT (newid()) FOR [GUIDz]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Перевод]  DEFAULT ((0)) FOR [Перевод]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Восстановление]  DEFAULT ((0)) FOR [Восстановление]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Проверено]  DEFAULT ((0)) FOR [Проверено]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ВП]  DEFAULT ((0)) FOR [ВП]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ОтказалсяОтЗачисления]  DEFAULT ((0)) FOR [ОтказалсяОтЗачисления]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ВыгрузкаФИС]  DEFAULT ((0)) FOR [ВыгрузкаФИС]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Проходит]  DEFAULT ((0)) FOR [Проходит]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_Удалено]  DEFAULT ((0)) FOR [Удалена]
    GO
ALTER TABLE [dbo].[Все_Заявления] ADD  CONSTRAINT [DF_Все_Заявления_ДО]  DEFAULT ((0)) FOR [ВИ_ДО]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_Удаление]  DEFAULT ((0)) FOR [Удаление]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_ВестиЛог]  DEFAULT ((0)) FOR [ВестиЛог]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_ПроверкаЕГЭ]  DEFAULT ((0)) FOR [ПроверкаЕГЭ]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_ИзменениеЛД]  DEFAULT ((0)) FOR [ИзменениеЛД]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_ПроверкаФИС]  DEFAULT ((0)) FOR [ПроверкаФИС]
    GO
ALTER TABLE [dbo].[Вуз_настройки] ADD  CONSTRAINT [DF_Вуз_настройки_Нумерация]  DEFAULT ((0)) FOR [Нумерация]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности] ADD  CONSTRAINT [DF_Дисциплины-Специальности_ЕГЭ]  DEFAULT (1) FOR [ЕГЭ]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности] ADD  CONSTRAINT [DF_Дисциплины-Специальности_Собеседование]  DEFAULT (1) FOR [Собеседование]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности] ADD  CONSTRAINT [DF_Дисциплины-Специальности_СобВсегда]  DEFAULT (0) FOR [СобВсегда]
    GO
ALTER TABLE [dbo].[ДостиженияГруппы] ADD  CONSTRAINT [DF_Table_1_Вывод]  DEFAULT ((0)) FOR [isDelete]
    GO
ALTER TABLE [dbo].[Заказчики] ADD  CONSTRAINT [DF_Заказчики_Вывод]  DEFAULT ((0)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[Льготы] ADD  CONSTRAINT [DF_Льготы_Вывод]  DEFAULT ((1)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[ОплатаДоговора] ADD  CONSTRAINT [DF_ОплатаДоговора_ОплатаТип]  DEFAULT ((-1)) FOR [ОплатаТип]
    GO
ALTER TABLE [dbo].[ОснованияИспытаний] ADD  CONSTRAINT [DF_ОснованияИспытаний_Вывод]  DEFAULT ((0)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[Приемная_Компания] ADD  CONSTRAINT [DF_Приемная_Компания_ТипПК]  DEFAULT ((1)) FOR [ТипПК]
    GO
ALTER TABLE [dbo].[ПриказыФИС] ADD  CONSTRAINT [DF_ПриказыФИС_Вывод]  DEFAULT ((0)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[ПриказыФИС] ADD  CONSTRAINT [DF_ПриказыФИС_Опубликован]  DEFAULT ((0)) FOR [Опубликован]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_Сокращение]  DEFAULT ((0)) FOR [СокрОбуч]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_Собеседование]  DEFAULT ((0)) FOR [Собеседование]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_Срок_Обучения_ДО]  DEFAULT ((5)) FOR [Срок_Обучения_ДО]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_СтатусНаправления]  DEFAULT ((0)) FOR [СтатусНаправления]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_СкрытьВотчетах]  DEFAULT ((0)) FOR [СкрытьВотчетах]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_БезВступительных]  DEFAULT ((0)) FOR [БезЭкзаменов]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_Проверка]  DEFAULT ((0)) FOR [Проверка]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_СкрытьНаСайте]  DEFAULT ((0)) FOR [СкрытьНаСайте]
    GO
ALTER TABLE [dbo].[Специальности] ADD  CONSTRAINT [DF_Специальности_ДополнительныйНабор]  DEFAULT ((0)) FOR [ДополнительныйНабор]
    GO
ALTER TABLE [dbo].[СпециальностиПрофили] ADD  CONSTRAINT [DF_СпециальностиПрофили_Вывод]  DEFAULT ((0)) FOR [Вывод]
    GO
ALTER TABLE [dbo].[СправочникОплата] ADD  CONSTRAINT [DF_СправочникОплата_Удалена]  DEFAULT ((0)) FOR [Удалена]
    GO
ALTER TABLE [dbo].[AllowedDirections]  WITH CHECK ADD  CONSTRAINT [FK_AllowedDirections_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[AllowedDirections] CHECK CONSTRAINT [FK_AllowedDirections_Departments]
    GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Departments] FOREIGN KEY([DepartmentParentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Departments]
    GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_DepartmentTypes] FOREIGN KEY([DepartmentTypeID])
    REFERENCES [dbo].[DepartmentTypes] ([DepartmentTypeID])
    GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_DepartmentTypes]
    GO
ALTER TABLE [dbo].[EpguAdmissionEvents]  WITH CHECK ADD  CONSTRAINT [FK_EpguAdmissionEvents_EpguAdmissionEventTypes] FOREIGN KEY([EventTypeID])
    REFERENCES [dbo].[EpguAdmissionEventTypes] ([EventTypeID])
    GO
ALTER TABLE [dbo].[EpguAdmissionEvents] CHECK CONSTRAINT [FK_EpguAdmissionEvents_EpguAdmissionEventTypes]
    GO
ALTER TABLE [dbo].[EpguLogs]  WITH CHECK ADD  CONSTRAINT [FK_EpguLogs_EpguPackageTypes] FOREIGN KEY([PackageTypeId])
    REFERENCES [dbo].[EpguPackageTypes] ([PackageTypeId])
    GO
ALTER TABLE [dbo].[EpguLogs] CHECK CONSTRAINT [FK_EpguLogs_EpguPackageTypes]
    GO
ALTER TABLE [dbo].[EpguPackages]  WITH CHECK ADD  CONSTRAINT [FK_EpguPackages_EpguPackageTypes] FOREIGN KEY([PackageTypeId])
    REFERENCES [dbo].[EpguPackageTypes] ([PackageTypeId])
    GO
ALTER TABLE [dbo].[EpguPackages] CHECK CONSTRAINT [FK_EpguPackages_EpguPackageTypes]
    GO
ALTER TABLE [dbo].[EventLog]  WITH CHECK ADD  CONSTRAINT [FK_EventLog_Applicants] FOREIGN KEY([ApplicantID])
    REFERENCES [dbo].[Все_Абитуриенты] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventLog] CHECK CONSTRAINT [FK_EventLog_Applicants]
    GO
ALTER TABLE [dbo].[EventLog]  WITH CHECK ADD  CONSTRAINT [FK_EventLog_EventLogTypes] FOREIGN KEY([EventLogTypeID])
    REFERENCES [dbo].[EventLogTypes] ([EventLogTypeID])
    GO
ALTER TABLE [dbo].[EventLog] CHECK CONSTRAINT [FK_EventLog_EventLogTypes]
    GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Achievements] FOREIGN KEY([AchievementID])
    REFERENCES [dbo].[Достижения] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Achievements]
    GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Documents] FOREIGN KEY([DocumentID])
    REFERENCES [dbo].[Все_Документы] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Documents]
    GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Files] FOREIGN KEY([FileID])
    REFERENCES [dbo].[Files] ([FileID])
    GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Files]
    GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Applicants] FOREIGN KEY([ApplicantID])
    REFERENCES [dbo].[Все_Абитуриенты] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Applicants]
    GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserID])
    REFERENCES [dbo].[Пользователи] ([ID])
    GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
    GO
ALTER TABLE [dbo].[NotificationOptions]  WITH CHECK ADD  CONSTRAINT [FK_NotificationOptions_Notifications] FOREIGN KEY([NotificationId])
    REFERENCES [dbo].[Notifications] ([NotificationId])
    GO
ALTER TABLE [dbo].[NotificationOptions] CHECK CONSTRAINT [FK_NotificationOptions_Notifications]
    GO
ALTER TABLE [dbo].[Все_Абитуриенты]  WITH CHECK ADD  CONSTRAINT [FK_Все_Абитуриенты_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[Все_Абитуриенты] CHECK CONSTRAINT [FK_Все_Абитуриенты_Departments]
    GO
ALTER TABLE [dbo].[Все_Заявления]  WITH CHECK ADD  CONSTRAINT [FK_ВсеЗаявления_Специальности] FOREIGN KEY([Код_Специальности])
    REFERENCES [dbo].[Специальности] ([Код])
    GO
ALTER TABLE [dbo].[Все_Заявления] CHECK CONSTRAINT [FK_ВсеЗаявления_Специальности]
    GO
ALTER TABLE [dbo].[Все_Заявления]  WITH CHECK ADD  CONSTRAINT [FK_ВсеЗаявления_СпециальностиПараметры] FOREIGN KEY([КодПараметраСпециальности])
    REFERENCES [dbo].[СпециальностиПараметры] ([КодПараметраСпециальности])
    GO
ALTER TABLE [dbo].[Все_Заявления] CHECK CONSTRAINT [FK_ВсеЗаявления_СпециальностиПараметры]
    GO
ALTER TABLE [dbo].[Все_Оценки]  WITH NOCHECK ADD  CONSTRAINT [FK_Все_Оценки_АбитДисциплины] FOREIGN KEY([Код_Дисциплины])
    REFERENCES [dbo].[АбитДисциплины] ([Код])
    GO
ALTER TABLE [dbo].[Все_Оценки] CHECK CONSTRAINT [FK_Все_Оценки_АбитДисциплины]
    GO
ALTER TABLE [dbo].[Все_Оценки]  WITH NOCHECK ADD  CONSTRAINT [FK_Все_Оценки_Вид_Испытания1] FOREIGN KEY([Код_Испытания])
    REFERENCES [dbo].[Вид_Испытания] ([Код])
    GO
ALTER TABLE [dbo].[Все_Оценки] CHECK CONSTRAINT [FK_Все_Оценки_Вид_Испытания1]
    GO
ALTER TABLE [dbo].[Все_Оценки]  WITH NOCHECK ADD  CONSTRAINT [FK_Все_Оценки_Все_Абитуриенты] FOREIGN KEY([ID])
    REFERENCES [dbo].[Все_Абитуриенты] ([ID])
    ON UPDATE CASCADE
       ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Все_Оценки] CHECK CONSTRAINT [FK_Все_Оценки_Все_Абитуриенты]
    GO
ALTER TABLE [dbo].[Все_Оценки]  WITH CHECK ADD  CONSTRAINT [FK_Все_Оценки_Экзаменаторы] FOREIGN KEY([КодЭкз])
    REFERENCES [dbo].[Экзаменаторы] ([КодЭкз])
    ON UPDATE CASCADE
           GO
ALTER TABLE [dbo].[Все_Оценки] CHECK CONSTRAINT [FK_Все_Оценки_Экзаменаторы]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности]  WITH NOCHECK ADD  CONSTRAINT [FK_Дисциплины-Специальности_АбитДисциплины1] FOREIGN KEY([Код_Дисциплины])
    REFERENCES [dbo].[АбитДисциплины] ([Код])
    ON UPDATE CASCADE
       ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Дисциплины-Специальности] CHECK CONSTRAINT [FK_Дисциплины-Специальности_АбитДисциплины1]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности]  WITH NOCHECK ADD  CONSTRAINT [FK_Дисциплины-Специальности_Специальности] FOREIGN KEY([Код_Специальности])
    REFERENCES [dbo].[Специальности] ([Код])
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности] CHECK CONSTRAINT [FK_Дисциплины-Специальности_Специальности]
    GO
ALTER TABLE [dbo].[Дисциплины-Специальности]  WITH CHECK ADD  CONSTRAINT [FK_Дисциплины-Специальности_Экзаменаторы] FOREIGN KEY([КодЭкз])
    REFERENCES [dbo].[Экзаменаторы] ([КодЭкз])
    ON UPDATE CASCADE
           GO
ALTER TABLE [dbo].[Дисциплины-Специальности] CHECK CONSTRAINT [FK_Дисциплины-Специальности_Экзаменаторы]
    GO
ALTER TABLE [dbo].[ДокументыВидыВГруппах]  WITH CHECK ADD  CONSTRAINT [FK_ДокументыВидыВГруппах_Вид_Документа] FOREIGN KEY([КодВидаДокумента])
    REFERENCES [dbo].[Вид_Документа] ([Код_Документа])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ДокументыВидыВГруппах] CHECK CONSTRAINT [FK_ДокументыВидыВГруппах_Вид_Документа]
    GO
ALTER TABLE [dbo].[ДокументыВидыВГруппах]  WITH CHECK ADD  CONSTRAINT [FK_ДокументыВидыВГруппах_ДокументыГруппы] FOREIGN KEY([КодГруппы])
    REFERENCES [dbo].[ДокументыГруппы] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ДокументыВидыВГруппах] CHECK CONSTRAINT [FK_ДокументыВидыВГруппах_ДокументыГруппы]
    GO
ALTER TABLE [dbo].[ДостиженияВидыВГруппах]  WITH CHECK ADD  CONSTRAINT [FK_ДостиженияВидыВГруппах_ДостиженияВиды] FOREIGN KEY([КодВидаДостижения])
    REFERENCES [dbo].[ДостиженияВиды] ([КодДостижения])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ДостиженияВидыВГруппах] CHECK CONSTRAINT [FK_ДостиженияВидыВГруппах_ДостиженияВиды]
    GO
ALTER TABLE [dbo].[ДостиженияВидыВГруппах]  WITH CHECK ADD  CONSTRAINT [FK_ДостиженияВидыВГруппах_ДостиженияГруппы] FOREIGN KEY([КодГруппы])
    REFERENCES [dbo].[ДостиженияГруппы] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ДостиженияВидыВГруппах] CHECK CONSTRAINT [FK_ДостиженияВидыВГруппах_ДостиженияГруппы]
    GO
ALTER TABLE [dbo].[ПользователиОграничения]  WITH CHECK ADD  CONSTRAINT [FK_ПользователиОграничения-ПользователиРоли] FOREIGN KEY([КодРолиПользователя])
    REFERENCES [dbo].[Пользователи-Роли] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ПользователиОграничения] CHECK CONSTRAINT [FK_ПользователиОграничения-ПользователиРоли]
    GO
ALTER TABLE [dbo].[Пользователи-Роли]  WITH NOCHECK ADD  CONSTRAINT [FK_Пользователи-Роли_Пользователи] FOREIGN KEY([КодПользователя])
    REFERENCES [dbo].[Пользователи] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Пользователи-Роли] CHECK CONSTRAINT [FK_Пользователи-Роли_Пользователи]
    GO
ALTER TABLE [dbo].[Пользователи-Роли]  WITH NOCHECK ADD  CONSTRAINT [FK_Пользователи-Роли_Роли] FOREIGN KEY([КодРоли])
    REFERENCES [dbo].[Роли] ([Код])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Пользователи-Роли] CHECK CONSTRAINT [FK_Пользователи-Роли_Роли]
    GO
ALTER TABLE [dbo].[Приемная_Компания]  WITH CHECK ADD  CONSTRAINT [FK_Приемная_Компания_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[Приемная_Компания] CHECK CONSTRAINT [FK_Приемная_Компания_Departments]
    GO
ALTER TABLE [dbo].[Специальности]  WITH NOCHECK ADD  CONSTRAINT [FK_Специальности_Тип_Обучения] FOREIGN KEY([ФормаОбучения])
    REFERENCES [dbo].[Тип_Обучения] ([Код])
    GO
ALTER TABLE [dbo].[Специальности] CHECK CONSTRAINT [FK_Специальности_Тип_Обучения]
    GO
ALTER TABLE [dbo].[Специальности]  WITH NOCHECK ADD  CONSTRAINT [FK_Специальности_Факультеты] FOREIGN KEY([Код_Факультета])
    REFERENCES [dbo].[Факультеты] ([Код])
    GO
ALTER TABLE [dbo].[Специальности] CHECK CONSTRAINT [FK_Специальности_Факультеты]
    GO
ALTER TABLE [dbo].[СпециальностиПараметры]  WITH CHECK ADD  CONSTRAINT [FK_Специальности_Параметры] FOREIGN KEY([КодСпециальности])
    REFERENCES [dbo].[Специальности] ([Код])
    GO
ALTER TABLE [dbo].[СпециальностиПараметры] CHECK CONSTRAINT [FK_Специальности_Параметры]
    GO
ALTER TABLE [dbo].[СправочникиСодержимое]  WITH CHECK ADD  CONSTRAINT [FK_СправочникиСодержимое_Справочники] FOREIGN KEY([КодСправочника])
    REFERENCES [dbo].[Справочники] ([Код])
    GO
ALTER TABLE [dbo].[СправочникиСодержимое] CHECK CONSTRAINT [FK_СправочникиСодержимое_Справочники]
    GO
ALTER TABLE [dbo].[Файлы]  WITH CHECK ADD  CONSTRAINT [FK_Файлы_Все_Абитуриенты] FOREIGN KEY([ID])
    REFERENCES [dbo].[Все_Абитуриенты] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Файлы] CHECK CONSTRAINT [FK_Файлы_Все_Абитуриенты]
    GO
ALTER TABLE [dbo].[Факультеты]  WITH CHECK ADD  CONSTRAINT [FK_Факультеты_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[Факультеты] CHECK CONSTRAINT [FK_Факультеты_Departments]
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1035 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2370 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2175 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Пользователь'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Пользователь'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1980 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Пользователь'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2205 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'НомерОшибки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4980 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Источник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Источник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=6525 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Источник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Ведомость'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'(((LogErrors.Описание="BOF или EOF имеет значение True, либо текущая запись удалена. Для выполняемой операции требуется текущая запись."))) AND ((LogErrors.Источник ALike "frmManager.cmdLoad_Click"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'LogErrors.Код DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=345 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=8000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1425 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3510 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2775 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'PictureType'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'КодАбит'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2445 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'NameFile'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=285 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Дисциплина'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Дисциплина'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2115 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Дисциплина'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ДисСокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ДисСокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ДисСокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЦТ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ЕГЭ4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(Номер для ФБС)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'КодДня'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ИН_ЯЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ИН_ЯЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ИН_ЯЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ИН_ЯЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины', @level2type=N'COLUMN',@level2name=N'ИН_ЯЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'АбитДисциплины.КодДня' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'АбитДисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2865 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1845 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'Испытание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа', @level2type=N'COLUMN',@level2name=N'ДокументУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1410 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3090 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1455 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=705 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=840 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=825 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=960 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ОО_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1020 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ЦН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1020 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'СН_ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1170 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'ВыводДокумента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Код_Документа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Вид_Испытания.Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Документы' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Серия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Начал_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент', @level2type=N'COLUMN',@level2name=N'Конеч_номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ВорДокумент'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фамилия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фамилия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фамилия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2340 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отчество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отчество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отчество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Пол'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Пол'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Пол'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=660 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Удостоверения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Удостоверения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Удостоверения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Паспорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Паспорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2385 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Паспорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кем_Выдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кем_Выдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кем_Выдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Изучаемый_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Изучаемый_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1905 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Изучаемый_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Уч_Заведение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Уч_Заведение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Уч_Заведение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Где_Находится_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Где_Находится_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Где_Находится_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Окончания_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=22 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Окончания_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Окончания_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отличник_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=23 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отличник_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Отличник_УЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=24 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=25 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3105 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=26 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=27 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=28 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=29 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=30 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мобильный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=31 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мобильный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мобильный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=32 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Общежитие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=33 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Общежитие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Общежитие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Общежития'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=34 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Общежития'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Общежития'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Комнаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=35 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Комнаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Комнаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=36 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=37 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Наличие_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=38 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=39 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=40 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Матери'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=41 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИО_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=42 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Раб_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=43 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность_Отца'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Братьев_И_Сестер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=44 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Братьев_И_Сестер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Братьев_И_Сестер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=45 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Страна_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=46 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Регион_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=47 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=48 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Индекс_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=49 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Улица_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=50 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дом_Кв_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=51 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Телефон_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Опекунство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=52 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Опекунство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Опекунство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Состоит_В_Браке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=53 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Состоит_В_Браке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Состоит_В_Браке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Детей'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=54 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Детей'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Число_Детей'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=55 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Серия_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Серия_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2265 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Серия_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1515 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Номер_Аттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Образ_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Образ_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Тип_Образ_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМестный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=56 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМестный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМестный'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Село'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=57 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Село'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Село'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Набора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Набора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Год_Набора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ТипОбразования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=58 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ТипОбразования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ТипОбразования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=59 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Рождения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Второе_Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=60 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Второе_Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Второе_Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фотография'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=61 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фотография'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Фотография'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=62 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Мат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Рус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=63 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Рус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Рус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ИнЯз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=64 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ИнЯз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ИнЯз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Ист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=65 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Ист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Ист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Примечание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=66 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Примечание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1320 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Примечание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДатаПодачиДокументов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДатаПодачиДокументов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДатаПодачиДокументов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=67 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1500 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Олимпиада'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=68 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2430 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Трудовой_Стаж'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=69 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Дата_Выдачи_УД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМест'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=70 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМест'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеМест'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'общ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=71 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'общ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'общ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=72 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДокументНаЛьготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=73 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДокументНаЛьготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ДокументНаЛьготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывКвалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=74 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывКвалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывКвалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=75 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'БывСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=76 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВсеЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВсеЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВсеЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ОригиналЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Код_региона'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Место_Работы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Вид_спорта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Разряд'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Резерв5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Район_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СелоПоПрописке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СелоПоПрописке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СелоПоПрописке'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Иностранец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Иностранец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Иностранец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВторойНабор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВторойНабор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ВторойНабор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Заблокировать'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Заблокировать'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Заблокировать'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ПроверкаФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ПроверкаФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ПроверкаФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеНайденФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеНайденФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НеНайденФБС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'ФИС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'РегНомерДиплома'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'РегНомерДиплома'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'РегНомерДиплома'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'МестоСдачиЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'МестоСдачиЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'МестоСдачиЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СрБаллАттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СрБаллАттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'СрБаллАттестата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодСпец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодСпец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодСпец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_ПП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'Кладр_Родители'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПодр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПодр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'КодПодр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомерДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомерДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомерДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты', @level2type=N'COLUMN',@level2name=N'НомДела'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((Фамилия="Турсунбаев"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Все_Абитуриенты.ID DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Абитуриенты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2400 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Документ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Количество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Количество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Количество'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1860 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Баллы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Баллы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Баллы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дополнительно'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дополнительно'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дополнительно'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Военкомат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Военкомат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы', @level2type=N'COLUMN',@level2name=N'Военкомат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'(((Все_Документы.Код_Документа=7))) AND ((Все_Документы.Номер_Документа="1142417"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Все_Документы.Номер_Документа DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Абитуриенты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Документы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДистОбразование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДистОбразование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДистОбразование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерЛД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1380 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Оригинал'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер_договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер_договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1800 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер_договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер_договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Номер_договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сокр_Обучение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сокр_Обучение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сокр_Обучение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сокр_Обучение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сокр_Обучение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Затраты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокОт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'СрокДо'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2130 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Подачи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Пред'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Пред'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Пред'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Пред'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_Пред'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'КодГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'КодГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'КодГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'КодГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'КодГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ЭкзЛист'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Зачисления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Зачисления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1890 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Дата_Зачисления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приказ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приказ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приказ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НаправлениеЦП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НаправлениеЦП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НаправлениеЦП'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Зачислен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Зачислен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Зачислен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Код_заказчика'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Тип_Договора'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'НомерКвитанции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'ДатаОплаты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сумма'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сумма'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления', @level2type=N'COLUMN',@level2name=N'Сумма'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Код_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Оценки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1125 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3345 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT ID, Фамилия + '' '' + Имя + '' '' + Отчество AS ФИО FROM Все_Абитуриенты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Код_Заявления, НомерЛД FROM Все_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Заявления'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисц'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисц'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисц'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2835 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Код, Название FROM Вид_Испытания' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2340 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Код, Дисциплина FROM АбитДисциплины' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Серия_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Номер_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ИтогОценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ИтогОценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'ИтогОценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'На_Выбор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'На_Выбор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'На_Выбор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Дата_Экзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Дата_Экзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки', @level2type=N'COLUMN',@level2name=N'Дата_Экзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((ID Is Null))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Код_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Все_Оценки.Код_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=270 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Заявления' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Все_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВУЗ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ректор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1695 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Кому'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1785 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'УчебныйГод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Удаление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Удаление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Удаление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Отличать_ФО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Отличать_ФО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'Отличать_ФО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВестиЛог'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВестиЛог'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ВестиЛог'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ПроверкаЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ПроверкаЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки', @level2type=N'COLUMN',@level2name=N'ПроверкаЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Вуз_настройки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Гражданство'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_Группы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_Группы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_Группы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_Спец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_Спец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Код_УслОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Группы_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Балл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4410 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки', @level2type=N'COLUMN',@level2name=N'Код_Дициплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины_Оценки'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2385 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Код_Дисциплины'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ЕГЭ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаЭкзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаЭкзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаЭкзамена'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаСобеседования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаСобеседования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2310 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'ДатаСобеседования'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Умолчанию'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'По_Выбору'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1620 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'СобВсегда'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'СобВсегда'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'СобВсегда'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'СобВсегда'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности', @level2type=N'COLUMN',@level2name=N'СобВсегда'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Дисциплины-Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Выпускник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Выпускник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Выпускник'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1590 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2085 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Иностранный_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Иностранный_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Иностранный_Язык'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Перевод_Документов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Перевод_Документов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2190 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Перевод_Документов'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1530 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Вид_Испытания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Документ_Об_Образовании'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Документ_Об_Образовании'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3900 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Документ_Об_Образовании'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Тип_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Тип_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3375 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Тип_Документа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ПоданныеДокументы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ПоданныеДокументы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2460 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ПоданныеДокументы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'ТипОУ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные', @level2type=N'COLUMN',@level2name=N'Приоритет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'ДопДанные.Приоритет DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ДопДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4185 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Заказчик'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4560 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'Банк'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ИНН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'БИК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1905 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'РС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'КС'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКПО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ОКВД'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортныеДанные'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортВыдан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики', @level2type=N'COLUMN',@level2name=N'ПаспортДата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Заказчики'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=6540 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ЗавКафедрой'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Кафедры.Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1890 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Код_операции'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3930 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Операция'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'компьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2715 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'код_абитуриента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2625 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'дата'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Основное'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Образование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Заявление'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Паспорт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Паспорт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи', @level2type=N'COLUMN',@level2name=N'Паспорт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Логи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'КодЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'КодЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'КодЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'СокрЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'СокрЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1995 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы', @level2type=N'COLUMN',@level2name=N'СокрЛьгот'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Льготы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5310 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады', @level2type=N'COLUMN',@level2name=N'НазваниеОлимп'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Олимпиады'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'КодОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'КодОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'КодОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'Отличие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'Отличие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3225 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'Отличие'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2640 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия', @level2type=N'COLUMN',@level2name=N'СокрОтл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отличия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3420 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Название_Отчета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2175 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Файл'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'ДляФормыОтчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'ДляФормыОтчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты', @level2type=N'COLUMN',@level2name=N'ДляФормыОтчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Отчеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Параметр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Параметр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1995 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Параметр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Значение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Значение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5925 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Значение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Категория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Категория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры', @level2type=N'COLUMN',@level2name=N'Категория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=100000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Параметры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Подразделение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Подразделение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Подразделение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3660 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Адрес'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1710 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Город'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Директор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Директор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Директор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old', @level2type=N'COLUMN',@level2name=N'Обозначение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Подразделения_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1170 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1380 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Логин'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ФИО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ФИО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5400 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ФИО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4605 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ДатаПослВхода'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ДатаПослВхода'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2865 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ДатаПослВхода'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ПослКомпьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ПослКомпьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'ПослКомпьютер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Домен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Домен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Домен'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Пароль'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Пароль'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи', @level2type=N'COLUMN',@level2name=N'Пароль'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((ДатаПослВхода Is Not Null))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'КодПользователя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Пользователи.ДатаПослВхода DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=315 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[Пользователи-Роли]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2220 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;2835.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.Пользователи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодПользователя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;2835.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.Роли' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодРоли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодОбъекта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодОбъекта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли', @level2type=N'COLUMN',@level2name=N'КодОбъекта'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'КодПользователя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Пользователи-Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2055 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3210 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Регион'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Регионы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2880 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Имя'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2955 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Программа'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Объект'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Объект'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Объект'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Столбец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Столбец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'Столбец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2940 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли', @level2type=N'COLUMN',@level2name=N'АктивностьГрафиков'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'КодРоли' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[Пользователи-Роли]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Роли'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Семья', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Семья', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Семья', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=675 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1860 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СтараяСпециальность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОКСО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОКСО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1305 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОКСО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=885 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Факультета'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Код_Кафедры'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Квалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Квалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2955 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Квалификация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название_Спец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название_Спец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=9255 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Название_Спец'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Срок_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена1к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена1к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена1к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена2к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=22 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена2к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена2к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена3к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=23 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена3к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена3к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена4к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=24 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена4к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена4к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена5к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=25 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена5к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена5к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена6к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=26 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена6к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Цена6к'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1305 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=945 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ОО'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=855 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ЦН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=810 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СН'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Всего'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Всего'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Всего'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=27 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=28 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Экзамены'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СокрОбуч'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СокрОбуч'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1050 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СокрОбуч'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СокрОбуч'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СокрОбуч'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=29 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Собеседование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ФормаОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ФормаОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=330 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ФормаОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ФормаОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'ФормаОбучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=30 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Специализация'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СвояШкала'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=31 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СвояШкала'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'СвояШкала'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=32 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'КодВДеканате'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности', @level2type=N'COLUMN',@level2name=N'Бакалавриат'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((Специальности.Прием=True))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Код_Специальности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Специальности.Код_Факультета' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[Дисциплины-Специальности]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Специальности'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3840 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'КодСправочника' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.СправочникиСодержимое' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Справочники'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'КодСправочника'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'КодСправочника'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'КодСправочника'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Наименование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Наименование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Наименование'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'СправочникиСодержимое'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Статус'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4245 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента', @level2type=N'COLUMN',@level2name=N'Сокращ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Статус' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Все_Абитуриенты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Статус_Студента'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2055 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Название'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=7350 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарий'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения', @level2type=N'COLUMN',@level2name=N'Префикс'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Тип_Обучения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Факультеты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'КодОсн'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'КодОсн'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'КодОсн'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'КодОсн'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'КодОсн'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Основания'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4140 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Комментарии'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Приём'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Приём'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Приём'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Приём'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Приём'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2895 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения', @level2type=N'COLUMN',@level2name=N'Условия'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Условия_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Учебный_год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Учебный_год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Учебный_год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Год'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода', @level2type=N'COLUMN',@level2name=N'Вывод'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'УчебныеГода'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1005 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4590 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Факультет'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сокращение'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Псевдоним'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2640 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;3402.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.Тип_Обучения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Тип_Обучения'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ПК'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3015 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Декан'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1635 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Телефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Аудитория'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Сайт'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ВнутрТелефон'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'ФайлСтиля'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Шифр'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2475 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Номер'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты', @level2type=N'COLUMN',@level2name=N'Прием'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'Код_Факультета' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Факультеты.Код' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=315 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.Специальности' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Факультеты'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Оценка'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок', @level2type=N'COLUMN',@level2name=N'Описание'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ШкалаОценок'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'КодЭкз'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Экзаменатор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Экзаменатор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2715 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Экзаменатор'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы', @level2type=N'COLUMN',@level2name=N'Должность'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Экзаменаторы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'Код'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3915 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НомерГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3510 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы', @level2type=N'COLUMN',@level2name=N'НазваниеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ЭкзаменационныеГруппы'
    GO
