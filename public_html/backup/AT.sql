USE [�����������]
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
    [N�meEPGU] [nvarchar](250) NULL,
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
    [���] [int] IDENTITY(1,1) NOT NULL,
    [����] [datetime] NULL,
    [���������] [varchar](50) NULL,
    [���������] [varchar](100) NULL,
    [������������] [varchar](100) NULL,
    [�����������] [varchar](50) NULL,
    [��������] [varchar](200) NULL,
    [��������] [varchar](100) NULL,
    [���������] [varchar](250) NULL,
    [Sub] [varchar](50) NULL,
    CONSTRAINT [PK_LogErrors] PRIMARY KEY CLUSTERED
(
[���] ASC
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
    [�������] [int] NULL,
    [NameFile] [nvarchar](50) NULL,
    [HashFile] [nvarchar](50) NULL,
    CONSTRAINT [PK_�������1] PRIMARY KEY CLUSTERED
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
/****** Object:  Table [dbo].[����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [������������] [int] NOT NULL,
    [���������] [int] NOT NULL,
    [ID] [int] NULL,
    [���������] [float] NULL,
    [������������] [int] NULL,
    [����������] [datetime] NULL,
    [����������] [int] NULL,
    CONSTRAINT [PK_����������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [����������] [varchar](100) NOT NULL,
    [���������] [varchar](50) NULL,
    [��1] [int] NULL,
    [��2] [int] NULL,
    [��3] [int] NULL,
    [��4] [int] NULL,
    [���1] [int] NULL,
    [���2] [int] NULL,
    [���3] [int] NULL,
    [���4] [int] NULL,
    [������] [varchar](50) NULL,
    [������] [int] NULL,
    [�����] [bit] NULL,
    [��_��] [bit] NULL,
    [���1] [int] NULL,
    [������������] [int] NULL,
    [�������] [int] NULL,
    [���] [bit] NOT NULL,
    CONSTRAINT [PK__��������������__1A0AC1F4] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������_���������1]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������_���������1](
    [�����������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [ID] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [����_������] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���_�������������] [nvarchar](255) NULL,
    [���������_����] [nvarchar](255) NULL,
    [��_���������] [nvarchar](255) NULL,
    [���_���������_��] [nvarchar](255) NULL,
    [���_���������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [���_��_��] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [�������_��] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�����_���������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_������] [nvarchar](255) NULL,
    [��������������] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [����_������_��] [nvarchar](255) NULL,
    [���_���������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�����] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [��������_����] [nvarchar](255) NULL,
    [��������_�������������] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�����] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [��_��] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���_����������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [��] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [������������] [nvarchar](255) NULL,
    [��������������������] [nvarchar](255) NULL,
    [��������_����] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [��������������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [�������_�_�����] [nvarchar](255) NULL,
    [�����_�������_�_������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [����_������] [nvarchar](255) NULL,
    [��������_��] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�����_�����] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [����_����������] [nvarchar](255) NULL,
    [E_Mail] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [����������������] [nvarchar](255) NULL,
    [������_�����������] [nvarchar](255) NULL,
    [���_����] [nvarchar](255) NULL,
    [����������������] [nvarchar](255) NULL,
    [���_�������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_���������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [�����_������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�����] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������_���������2]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������_���������2](
    [�����������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [ID] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [����_������] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���_�������������] [nvarchar](255) NULL,
    [���������_����] [nvarchar](255) NULL,
    [��_���������] [nvarchar](255) NULL,
    [���_���������_��] [nvarchar](255) NULL,
    [���_���������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [������_��] [nvarchar](255) NULL,
    [���_��_��] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [�������_��] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�����_���������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_������] [nvarchar](255) NULL,
    [��������������] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [����_������_��] [nvarchar](255) NULL,
    [���_���������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�����] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [��������_����] [nvarchar](255) NULL,
    [��������_�������������] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_�����] [nvarchar](255) NULL,
    [�����_��������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [���] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [��_��] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���_����������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [��] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [����_��������] [nvarchar](255) NULL,
    [������������] [nvarchar](255) NULL,
    [��������������������] [nvarchar](255) NULL,
    [��������_����] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [��������������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [����] [nvarchar](255) NULL,
    [�������_�_�����] [nvarchar](255) NULL,
    [�����_�������_�_������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [����_������] [nvarchar](255) NULL,
    [��������_��] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [��������] [nvarchar](255) NULL,
    [�����_�����] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [�����������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [����_����������] [nvarchar](255) NULL,
    [E_Mail] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [����������������] [nvarchar](255) NULL,
    [������_�����������] [nvarchar](255) NULL,
    [���_����] [nvarchar](255) NULL,
    [����������������] [nvarchar](255) NULL,
    [���_�������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_���������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [�����_������] [nvarchar](255) NULL,
    [���������] [nvarchar](255) NULL,
    [���_������] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [�����_��] [nvarchar](255) NULL,
    [������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�������] [nvarchar](255) NULL,
    [�������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL,
    [����������] [nvarchar](255) NULL,
    [�����] [nvarchar](255) NULL,
    [���������������] [nvarchar](255) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������] [nvarchar](10) NULL,
    [�����_�������] [smallint] NULL,
    [�����������] [int] NULL,
    CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������](
    [���] [int] NOT NULL,
    [������] [int] NOT NULL,
     CONSTRAINT [PK_����������] PRIMARY KEY CLUSTERED
    (
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_���������](
    [���_���������] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](500) NOT NULL,
    [�����������] [varchar](250) NULL,
    [����������] [varchar](250) NULL,
    [��������] [bit] NULL,
    [�����] [bit] NULL,
    [���������] [int] NULL,
    [����������] [int] NULL,
    [���31] [int] NULL,
    [������������] [int] NULL,
    [�����������] [int] NULL,
    [�����������������] [int] NULL,
    [����������] [nvarchar](250) NULL,
    [����������] [nvarchar](250) NULL,
    [���������������] [nvarchar](800) NULL,
    [����������] [bit] NOT NULL,
    [��������������] [int] NULL,
    [���������������] [int] NULL,
    [�������] [int] NULL,
    [������������] [bit] NOT NULL,
    [�����] [int] NULL,
    CONSTRAINT [PK_���_���������] PRIMARY KEY CLUSTERED
(
[���_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](50) NOT NULL,
    [�����������] [varchar](200) NULL,
    [����������] [varchar](50) NULL,
    [��] [bit] NULL,
    [��] [bit] NULL,
    [��] [bit] NULL,
    [��_���] [bit] NULL,
    [��_���] [bit] NULL,
    [��_���] [bit] NULL,
    [��������] [bit] NULL,
    [��������������] [bit] NULL,
    [IDdoc] [int] NULL,
    [���11] [int] NULL,
    [���6] [int] NULL,
    [���] [int] NULL,
    CONSTRAINT [PK__���_���������__4C8B54C9] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�����] [varchar](50) NULL,
    [�����_�����] [int] NULL,
    [�����_�����] [int] NULL,
    CONSTRAINT [PK_�����������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����_�������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����_�������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������] [nvarchar](50) NULL,
    [������] [nvarchar](50) NULL,
    [�����] [nvarchar](50) NULL,
    CONSTRAINT [PK_�����_�������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_�����������](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [�������] [varchar](50) NOT NULL,
    [���] [varchar](50) NOT NULL,
    [��������] [varchar](50) NULL,
    [����_��������] [datetime] NULL,
    [���] [varchar](8) NULL,
    [������] [int] NULL,
    [���_�������������] [varchar](250) NULL,
    [�����_��������] [varchar](50) NULL,
    [����_������] [datetime] NULL,
    [���_�����] [varchar](800) NULL,
    [���������_����] [int] NULL,
    [��_���������] [varchar](800) NULL,
    [���_���������_��] [varchar](800) NULL,
    [���_���������_��] [smallint] NULL,
    [��������_��] [int] NULL,
    [������_��] [varchar](50) NULL,
    [������_��] [varchar](50) NULL,
    [�����_��] [varchar](250) NULL,
    [������_��] [varchar](200) NULL,
    [�����_��] [varchar](100) NULL,
    [���_��_��] [varchar](50) NULL,
    [�������_��] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [E_Mail] [varchar](50) NULL,
    [���������] [bit] NULL,
    [�����_���������] [tinyint] NULL,
    [�����_�������] [varchar](50) NULL,
    [�������_������] [bit] NULL,
    [�������_����] [bit] NULL,
    [���_������] [varchar](50) NULL,
    [�����_���_������] [varchar](50) NULL,
    [���������_������] [varchar](50) NULL,
    [���_����] [varchar](50) NULL,
    [�����_���_����] [varchar](50) NULL,
    [���������_����] [varchar](50) NULL,
    [�����_�������_�_������] [tinyint] NULL,
    [������_��������] [varchar](50) NULL,
    [������_��������] [varchar](50) NULL,
    [�����_��������] [varchar](250) NULL,
    [������_��������] [varchar](50) NULL,
    [�����_��������] [varchar](50) NULL,
    [���_��_��������] [varchar](50) NULL,
    [�������_��������] [varchar](50) NULL,
    [����������] [bit] NULL,
    [�������_�_�����] [bit] NULL,
    [�����_�����] [tinyint] NULL,
    [������] [int] NULL,
    [�����_���������] [varchar](50) NULL,
    [�����_���������] [varchar](50) NULL,
    [���_�����_���������] [varchar](200) NULL,
    [���������] [bit] NULL,
    [����] [bit] NULL,
    [���_������] [int] NULL,
    [��������������] [varchar](50) NULL,
    [�����_��������] [varchar](800) NULL,
    [������_�����������] [bit] NULL,
    [����������] [varchar](100) NULL,
    [���] [tinyint] NULL,
    [���] [tinyint] NULL,
    [����] [tinyint] NULL,
    [���] [tinyint] NULL,
    [����������] [varchar](200) NULL,
    [��������������������] [datetime] NULL,
    [���������] [varchar](50) NULL,
    [��������_����] [varchar](50) NULL,
    [����_������_��] [datetime] NULL,
    [������] [bit] NULL,
    [���] [tinyint] NULL,
    [�����������] [varchar](50) NULL,
    [����������������] [varchar](50) NULL,
    [���������������] [varchar](250) NULL,
    [����������������] [varchar](200) NULL,
    [�����������] [bit] NULL,
    [�����] [varchar](200) NULL,
    [����������] [varchar](200) NULL,
    [���_�������] [int] NULL,
    [�����_������] [varchar](100) NULL,
    [���������] [varchar](150) NULL,
    [���_������] [varchar](50) NULL,
    [������] [varchar](50) NULL,
    [������1] [varchar](50) NULL,
    [������2] [varchar](50) NULL,
    [������3] [varchar](50) NULL,
    [������4] [varchar](50) NULL,
    [������5] [varchar](50) NULL,
    [�����_��] [varchar](100) NULL,
    [�����_��������] [varchar](100) NULL,
    [��������������] [bit] NULL,
    [GUID] [uniqueidentifier] NULL,
    [����������] [bit] NULL,
    [�����������] [bit] NULL,
    [�������������] [bit] NOT NULL,
    [�����������] [bit] NOT NULL,
    [�����������] [bit] NOT NULL,
    [�����] [int] NULL,
    [���] [bit] NOT NULL,
    [���������������] [varchar](50) NULL,
    [�������������] [varchar](250) NULL,
    [���������������] [int] NULL,
    [���������������] [float] NULL,
    [�������] [int] NULL,
    [�����_��] [varchar](50) NULL,
    [�����_��������] [varchar](50) NULL,
    [�������] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [�������] [int] NULL,
    [������������] [varchar](50) NULL,
    [������������] [varchar](50) NULL,
    [�������_��] [varchar](250) NULL,
    [��������_��] [varchar](50) NULL,
    [����_�����������_��] [datetime] NULL,
    [�������_��������] [varchar](250) NULL,
    [��������_��������] [varchar](50) NULL,
    [��������������] [varchar](250) NULL,
    [��������������] [int] NULL,
    [��������������] [bit] NULL,
    [�����_��] [int] NULL,
    [�����_��������] [int] NULL,
    [�������������] [varchar](50) NULL,
    [���������] [bit] NOT NULL,
    [DepartmentID] [int] NULL,
    [������] [nvarchar](500) NULL,
    [EmailConfirmed] [bit] NOT NULL,
    [�����] [varchar](50) NULL,
    [�����������������������] [datetime] NULL,
    [�������������������������] [datetime] NULL,
    [���������������] [int] NULL,
    [�������] [bigint] NULL,
    [������������������] [datetime] NULL,
    [������_��] [varchar](250) NULL,
    [��������������] [bit] NULL,
    [�������_����] [date] NULL,
    [��������_����] [date] NULL,
    [�������������] [int] NULL,
    [�������������] [int] NULL,
    [�������������] [int] NULL,
    [�������������] [int] NULL,
    [�������] [nvarchar](1000) NULL,
    [���������������������] [datetime] NULL,
    [���������������] [varchar](150) NULL,
    [����������������] [varchar](150) NULL,
    [������������������] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [�����������������] [bit] NULL,
    [������������������] [datetime] NULL,
    [���������������] [int] NULL,
    [��������������] [int] NULL,
    [��������������] [int] NULL,
    [������] [varchar](150) NULL,
    [�������������������] [varchar](250) NULL,
    [������_��] [varchar](50) NULL,
    [������_��������] [varchar](50) NULL,
    [�������������] [varchar](200) NULL,
    CONSTRAINT [PK__����� All_Abitur__339589CD] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [���_���������] [int] NULL,
    [��������] [varchar](550) NULL,
    [����������] [int] NULL,
    [�����_���������] [varchar](50) NULL,
    [�����_���������] [varchar](50) NULL,
    [���_����������] [int] NULL,
    [�����] [varchar](50) NULL,
    [�������������] [varchar](50) NULL,
    [����] [datetime] NULL,
    [���������] [varchar](150) NULL,
    [�����������������] [bit] NULL,
    [�����������������] [varchar](50) NULL,
    [���������] [int] NULL,
    [���] [int] NULL,
    [�����������] [varchar](1000) NULL,
    [���������������������] [int] NULL,
    [��������] [varchar](150) NULL,
    [����] [varchar](150) NULL,
    [���������] [varchar](150) NULL,
    [���������������] [int] NULL,
    [�������������] [datetime] NULL,
    [��������������] [datetime] NULL,
    [�������] [varchar](50) NULL,
    [���������������] [int] NULL,
    [�������������] [datetime] NULL,
    [���_���������] [int] NULL,
    [����������] [int] NULL,
    [FileHash] [varchar](50) NULL,
    [DepartmentId] [int] NULL,
    [���_�������������] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_���������](
    [���_���������] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [���_�������������] [int] NOT NULL,
    [���������] [varchar](50) NULL,
    [���������������] [bit] NULL,
    [�������] [varchar](50) NULL,
    [�����] [int] NULL,
    [����] [varchar](50) NULL,
    [���������] [int] NULL,
    [������] [int] NULL,
    [��������] [bit] NULL,
    [�����_��������] [nvarchar](50) NULL,
    [����_��������] [bit] NULL,
    [�������] [nvarchar](50) NULL,
    [������] [datetime] NULL,
    [������] [datetime] NULL,
    [����_������] [datetime] NULL,
    [���_����] [int] NULL,
    [�����������] [int] NULL,
    [���������] [int] NULL,
    [�������] [varchar](5) NULL,
    [����_����������] [datetime] NULL,
    [������] [nvarchar](50) NULL,
    [�������������] [varchar](100) NULL,
    [��������] [bit] NULL,
    [���������] [int] NULL,
    [���_���������] [int] NULL,
    [���_��������] [int] NULL,
    [��������������] [varchar](30) NULL,
    [����������] [varchar](30) NULL,
    [�����] [varchar](30) NULL,
    [���������] [bit] NULL,
    [���������] [bit] NULL,
    [����������] [smalldatetime] NULL,
    [�������������������] [smalldatetime] NULL,
    [GUIDz] [uniqueidentifier] NULL,
    [�������] [int] NULL,
    [��������������] [bit] NULL,
    [����] [varchar](20) NULL,
    [���������] [bit] NULL,
    [��] [bit] NULL,
    [����������] [int] NULL,
    [���������������������] [bit] NOT NULL,
    [�����������] [bit] NOT NULL,
    [���������������] [smalldatetime] NULL,
    [�����������] [int] NULL,
    [������������] [int] NULL,
    [��������] [bit] NOT NULL,
    [������������] [int] NULL,
    [��������������] [datetime] NULL,
    [�������] [bit] NOT NULL,
    [�����������] [smalldatetime] NULL,
    [���������������] [int] NULL,
    [�����������] [varchar](100) NULL,
    [���������������] [varchar](700) NULL,
    [������] [float] NULL,
    [��������] [int] NULL,
    [��������������] [int] NULL,
    [��������������] [int] NULL,
    [��������������] [int] NULL,
    [�������������������������] [smalldatetime] NULL,
    [������������������] [int] NULL,
    [���������] [int] NULL,
    [��������������������] [bit] NULL,
    [������������] [smalldatetime] NULL,
    [����������������] [int] NULL,
    [������������] [bit] NULL,
    [����������������] [smalldatetime] NULL,
    [����������] [int] NULL,
    [���������] [int] NULL,
    [������������] [smalldatetime] NULL,
    [���������������] [int] NULL,
    [�������������] [bit] NULL,
    [��������������] [smalldatetime] NULL,
    [������������] [smalldatetime] NULL,
    [����������] [varchar](100) NULL,
    [��_�����] [varchar](350) NULL,
    [��_��] [bit] NULL,
    [��������������] [int] NULL,
    [�������������] [varchar](500) NULL,
    [������������] [varchar](500) NULL,
    [��������������] [int] NULL,
    [�������] [bigint] NULL,
    [����������] [int] NULL,
    [��������������] [varchar](350) NULL,
    [��������������������] [datetime] NULL,
    [����������������������] [datetime] NULL,
    [��������] [datetime] NULL,
    [����������������] [int] NULL,
    [������������] [bit] NULL,
    [����������������] [smalldatetime] NULL,
    [����������������] [int] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [�������������] [int] NULL,
    [���������������] [bit] NULL,
    [��������������������] [int] NULL,
    [�������������������������] [int] NULL,
    [�����������������] [bit] NULL,
    [����������������������] [int] NULL,
    [������������1] [int] NULL,
    [������������2] [int] NULL,
    [�������������] [int] NULL,
    [��������������������] [int] NULL,
    [������������������] [int] NULL,
    CONSTRAINT [PK__����� All_Statem__394E6323] PRIMARY KEY CLUSTERED
(
[���_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NOT NULL,
    [���_���������] [int] NOT NULL,
    [���_����] [int] NULL,
    [���_���������] [int] NULL,
    [���_����������] [int] NOT NULL,
    [������] [float] NULL,
    [�����_���������] [varchar](20) NULL,
    [�����_���������] [varchar](50) NULL,
    [����������] [int] NULL,
    [��_�����] [bit] NULL,
    [������] [int] NULL,
    [����_��������] [smalldatetime] NULL,
    [������������] [int] NULL,
    [���_���������] [int] NULL,
    [�����_����������] [int] NULL,
    [��������] [datetime] NULL,
    [��������������] [int] NULL,
    CONSTRAINT [PK__����� All_Estima__37661AB1] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_���������](
    [���] [int] NOT NULL,
    [���] [varchar](550) NULL,
    [����������] [varchar](100) NULL,
    [�����] [varchar](200) NULL,
    [����] [nvarchar](50) NULL,
    [������] [varchar](50) NULL,
    [���������] [nvarchar](4000) NULL,
    [����] [varchar](400) NULL,
    [����������] [varchar](50) NULL,
    [��������] [bit] NULL,
    [��������_��] [bit] NULL,
    [��������] [bit] NULL,
    [�����������] [bit] NULL,
    [������������] [int] NULL,
    [����������������] [bit] NULL,
    [���������] [bit] NULL,
    [�����������] [bit] NULL,
    [�����] [varchar](50) NULL,
    [�������] [int] NULL,
    [�����������] [int] NULL,
    [�������������] [varchar](50) NULL,
    [�����������] [int] NULL,
    [���������] [bit] NULL,
    [���������] [int] NULL,
    [�����������������] [int] NULL,
    CONSTRAINT [PK_���_���������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�����������] [varchar](100) NULL,
    [����������] [varchar](50) NULL,
    [������] [varchar](100) NULL,
    [���21] [int] NULL,
    [����] [int] NULL,
    [�����������] [nvarchar](250) NULL,
    [�����������] [nvarchar](250) NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_�����������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������_�������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������_�������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���_������] [int] NOT NULL,
    [���_����] [int] NOT NULL,
    [���_�����������] [int] NULL,
    [�����������] [varchar](50) NULL,
    CONSTRAINT [PK_������_�������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������_������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������_������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���_���������] [varchar](50) NULL,
    [����] [varchar](50) NULL,
    [���_���������] [varchar](50) NULL,
    CONSTRAINT [PK_���������_������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������-�������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������-�������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���_�������������] [int] NOT NULL,
    [���_����������] [int] NOT NULL,
    [���] [bit] NULL,
    [������������] [datetime] NULL,
    [�����������������] [datetime] NULL,
    [�����] [int] NULL,
    [��_���������] [int] NULL,
    [��_������] [int] NULL,
    [�������������] [bit] NULL,
    [���������] [bit] NULL,
    [������] [int] NULL,
    [��������] [int] NULL,
    [��������2] [int] NULL,
    [��������3] [int] NULL,
    [�������] [int] NULL,
    [�������2] [int] NULL,
    [�������3] [int] NULL,
    [��_�����������] [int] NULL,
    [������������] [bit] NULL,
    [���������] [int] NULL,
    CONSTRAINT [PK_����������-�������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [����_������] [nvarchar](50) NULL,
    CONSTRAINT [PK_���_������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [Id] [int] NULL,
    [��������] [varchar](50) NULL,
    [����] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [�������������] [varchar](30) NULL,
    [�������������] [varchar](30) NULL,
    [���������] [varchar](70) NULL,
    [�����������] [datetime] NULL,
    [������] [varchar](150) NULL,
    [��������] [varchar](30) NULL,
    [���������] [varchar](50) NULL,
    [���������] [varchar](150) NULL,
    [����] [varchar](30) NULL,
    [����] [varchar](30) NULL,
    [������] [varchar](300) NULL,
    [���] [varchar](30) NULL,
    [���] [varchar](300) NULL,
    [����] [varchar](30) NULL,
    [������] [varchar](30) NULL,
    [�����] [varchar](30) NULL,
    [������] [varchar](30) NULL,
    [���������] [varchar](50) NULL,
    [����������] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [��������] [varchar](30) NULL,
    [������������] [varchar](50) NULL,
    [�������������] [varchar](50) NULL,
    [������������] [varchar](50) NULL,
    [�Email] [varchar](70) NULL,
    CONSTRAINT [PK_�������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������] [int] NULL,
    [����������������] [int] NULL,
    CONSTRAINT [PK_���������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������������] [varchar](500) NULL,
    [isDelete] [bit] NULL,
    CONSTRAINT [PK_���������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������] [varchar](100) NULL,
    [������] [varchar](100) NULL,
    [�������] [varchar](100) NULL,
    [�����������_����] [varchar](100) NULL,
    [�������_����������] [varchar](100) NULL,
    [���_���������] [varchar](100) NULL,
    [��������_��_�����������] [varchar](100) NULL,
    [���_���������] [varchar](100) NULL,
    [�����������������] [varchar](100) NULL,
    [�����] [varchar](100) NULL,
    [�������] [varchar](10) NULL,
    [���������] [int] NULL,
    [���_�����������] [varchar](100) NULL,
    [��������_����������] [varchar](100) NULL,
    CONSTRAINT [PK__���������__65570293] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NULL,
    [�����] [int] NULL,
    [�������] [varchar](50) NULL,
    [�������] [varchar](50) NULL,
    [������] [smalldatetime] NULL,
    [�������������] [varchar](1000) NULL,
    [����������] [bit] NULL,
    [������] [float] NULL,
    [����������] [varchar](1000) NULL,
    [���_���������] [int] NULL,
    [��������] [int] NULL,
    [�������] [bigint] NULL,
    [���������������] [int] NULL,
    [�������������] [datetime] NULL,
    [GuidEpgu] [uniqueidentifier] NULL,
    [FileHash] [varchar](50) NULL,
    [������������] [int] NULL,
    [�������������������] [int] NULL,
    [�������������������] [int] NULL,
    [�������������] [int] NULL,
    CONSTRAINT [PK_����������_1] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������������](
    [�������������] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](1000) NOT NULL,
    [����������] [varchar](100) NULL,
    [����] [float] NOT NULL,
    [�����] [bit] NOT NULL,
    [���] [int] NULL,
    [���36] [int] NULL,
    [��������������] [bit] NULL,
    [�����] [int] NULL,
    [�������] [int] NULL,
    [�������������] [float] NULL,
    CONSTRAINT [PK_����������] PRIMARY KEY CLUSTERED
(
[�������������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������] [int] NULL,
    [�����������������] [int] NULL,
    CONSTRAINT [PK_����������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������������] [nvarchar](500) NOT NULL,
    [isDelete] [bit] NOT NULL,
    CONSTRAINT [PK_�������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](200) NULL,
    [����������] [varchar](50) NULL,
    [�����] [varchar](200) NULL,
    [����] [varchar](400) NULL,
    [���] [varchar](50) NULL,
    [���] [varchar](200) NULL,
    [��] [varchar](200) NULL,
    [��] [varchar](50) NULL,
    [����] [varchar](50) NULL,
    [����] [varchar](50) NULL,
    [����������������] [varchar](200) NULL,
    [������������] [varchar](50) NULL,
    [�����������] [smalldatetime] NULL,
    [����] [varchar](200) NULL,
    [���������] [varchar](200) NULL,
    [�����] [bit] NULL,
    [���������] [bit] NULL,
    [���������������] [varchar](200) NULL,
    [��������������] [datetime] NULL,
    [����] [varchar](200) NULL,
    [���] [varchar](10) NULL,
    CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������](
    [���] [int] NOT NULL,
    [��������] [varchar](150) NULL,
    [����������] [varchar](12) NULL,
    [�����] [int] NULL,
    [���_����������] [int] NULL,
    [�����������] [varchar](100) NULL,
    [���������] [varchar](50) NULL,
    [�������] [varchar](50) NULL,
    [������������] [varchar](50) NULL,
    [EMail] [varbinary](100) NULL,
    [URL] [varchar](200) NULL,
    CONSTRAINT [PK_�������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���_��������] [int] NULL,
    [��������] [varchar](50) NULL,
    [�����] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [���_�����������] [int] NULL,
    [����] [smalldatetime] NULL,
    [��������] [varchar](500) NULL,
    [�����] [varchar](500) NULL,
    [�����������] [varchar](500) NULL,
    [���������] [varchar](500) NULL,
    [�������] [varchar](250) NULL,
    [���_���������] [int] NULL,
    CONSTRAINT [PK_����] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������](
    [��������] [int] IDENTITY(1,1) NOT NULL,
    [������] [varchar](50) NOT NULL,
    [���������] [varchar](50) NULL,
    [�����] [bit] NOT NULL,
    CONSTRAINT [PK__����� �������__2E31B632] PRIMARY KEY CLUSTERED
(
[��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������������] [varchar](50) NULL,
    CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������������](
    [���������] [int] IDENTITY(1,1) NOT NULL,
    [�����������] [int] NOT NULL,
    [����������] [smalldatetime] NULL,
    [���������] [int] NOT NULL,
    [����������] [varchar](50) NULL,
    [���_���������] [int] NOT NULL,
    [����������������] [varchar](250) NULL,
    CONSTRAINT [PK_��������������] PRIMARY KEY CLUSTERED
(
[���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������������](
    [���������] [int] IDENTITY(1,1) NOT NULL,
    [�����_��������] [int] NOT NULL,
    [���_������] [int] NOT NULL,
    [���������] [int] NOT NULL,
    [������1] [nvarchar](50) NULL,
    [������2] [nvarchar](50) NULL,
    [������3] [nvarchar](50) NULL,
    [������4] [nvarchar](50) NULL,
    [����������] [nvarchar](50) NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_�������������] PRIMARY KEY CLUSTERED
(
[���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](150) NOT NULL,
    [�����] [bit] NULL,
    CONSTRAINT [PK_������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������](
    [������] [int] IDENTITY(1,1) NOT NULL,
    [�������] [varchar](50) NOT NULL,
    [�������] [varchar](50) NULL,
    CONSTRAINT [PK_�������] PRIMARY KEY CLUSTERED
(
[������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������_������] [varchar](100) NOT NULL,
    [����] [varchar](100) NOT NULL,
    [�����] [bit] NULL,
    [��������������] [int] NULL,
    [����������] [int] NULL,
    [DepartmentID] [int] NULL,
    [CampaignId] [int] NULL,
    CONSTRAINT [PK_������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](300) NOT NULL,
    [��������] [varchar](2000) NULL,
    [�����������] [varchar](300) NULL,
    [���������] [varchar](50) NULL,
    [����] [bit] NULL,
    CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������������](
    [���] [int] NOT NULL,
    [�������������] [varchar](200) NULL,
    [����������] [varchar](50) NULL,
    [�����] [varchar](50) NULL,
    [��������] [varchar](200) NULL,
    [�����] [varchar](200) NULL,
    [������] [varchar](200) NULL,
    [�������] [varchar](50) NULL,
    [Email] [varchar](50) NULL,
    [ICQ] [varchar](50) NULL,
    [Skype] [varchar](50) NULL,
    [��������] [varchar](100) NULL,
    [�������] [varchar](50) NULL,
    [�������������] [int] NULL,
    [�����������] [varchar](10) NULL,
    [����������] [int] NULL,
    [��������������] [varchar](100) NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������������_old]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������������_old](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������������] [varchar](200) NULL,
    [����������] [varchar](50) NULL,
    [�����] [varchar](50) NULL,
    [��������] [varchar](200) NULL,
    [�����] [varchar](200) NULL,
    [������] [varchar](200) NULL,
    [�������] [varchar](50) NULL,
    [Email] [varchar](50) NULL,
    [ICQ] [varchar](50) NULL,
    [Skype] [varchar](50) NULL,
    [��������] [varchar](100) NULL,
    [�����������] [varchar](10) NULL,
    CONSTRAINT [PK_�������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������������](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [�����] [varchar](100) NULL,
    [���] [varchar](100) NULL,
    [��������] [varchar](150) NULL,
    [�������������] [datetime] NULL,
    [�������������] [varchar](100) NULL,
    [�����] [varchar](100) NULL,
    [SID] [varchar](200) NULL,
    [������] [varchar](200) NULL,
    [������������] [bit] NULL,
    [���������] [varchar](100) NULL,
    [Email] [varchar](150) NULL,
    [�������] [varchar](100) NULL,
    [���������������] [datetime] NULL,
    [��������������] [smallint] NULL,
    [������������������] [datetime] NULL,
    [������] [bit] NULL,
    [���������] [varchar](250) NULL,
    CONSTRAINT [PK_������������] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
    CONSTRAINT [IX_������������] UNIQUE NONCLUSTERED
(
[�����] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [����������] [int] NOT NULL,
    [�������������������] [int] NOT NULL,
    [��������] [bit] NOT NULL
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������������������] [int] NOT NULL,
    [�������] [int] NULL,
    [�����] [int] NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_�����������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������������-����]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������������-����](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������������] [int] NOT NULL,
    [�������] [int] NOT NULL,
    [����������] [int] NULL,
    CONSTRAINT [PK_������������-����] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������](
    [�������] [int] IDENTITY(1,1) NOT NULL,
    [�����������] [nvarchar](50) NOT NULL,
    [�����������] [nvarchar](50) NOT NULL,
    [�������] [int] NOT NULL,
    [����������] [nvarchar](500) NULL,
    [����������] [int] NULL,
    [�����������] [int] NULL,
    CONSTRAINT [PK_������] PRIMARY KEY CLUSTERED
(
[�������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������] [nvarchar](50) NULL,
    CONSTRAINT [PK_��������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������_��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������_��������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [nvarchar](150) NOT NULL,
    [������] [int] NULL,
    [�����] [int] NULL,
    [������] [int] NULL,
    [UID] [nvarchar](50) NULL,
    [�����] [int] NULL,
    [����������] [int] NULL,
    [DepartmentID] [int] NULL,
    [������������������] [int] NULL,
    CONSTRAINT [PK_��������_��������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������](
    [����������] [int] IDENTITY(1,1) NOT NULL,
    [UID] [varchar](150) NOT NULL,
    [���������������] [varchar](500) NOT NULL,
    [���������������] [varchar](50) NOT NULL,
    [�����������] [varchar](50) NOT NULL,
    [�����������] [smalldatetime] NOT NULL,
    [�����] [int] NOT NULL,
    [��������] [int] NOT NULL,
    [����������] [int] NOT NULL,
    [�������] [int] NULL,
    [�������������] [int] NULL,
    [�����] [bit] NOT NULL,
    [�����������] [bit] NOT NULL,
    [������������] [varchar](1000) NULL,
    [��������] [bit] NULL,
    [������������] [datetime] NULL,
    CONSTRAINT [PK_����������] PRIMARY KEY CLUSTERED
(
[����������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [������] [varchar](200) NULL,
    [��������] [varchar](100) NULL,
    CONSTRAINT [PK_�������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���] [varchar](100) NOT NULL,
    [���������] [varchar](50) NULL,
    [������] [varchar](50) NULL,
    [�������] [varchar](50) NULL,
    [������������������] [bit] NULL,
    CONSTRAINT [PK_����] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [IDa] [int] NOT NULL,
    [�������] [varchar](50) NULL,
    [���] [varchar](100) NULL,
    [����_��������] [smalldatetime] NULL,
    [�����] [nvarchar](500) NULL,
    [�������] [varchar](50) NULL,
    [�������] [bit] NULL,
    [������������] [varchar](50) NULL,
    [���������������] [varchar](500) NULL,
    [�����������] [smalldatetime] NULL,
    [�����2] [nvarchar](500) NULL,
    [����������] [varchar](100) NULL,
    [������������] [varchar](50) NULL,
    [����������] [varchar](50) NULL,
    [�������������] [varchar](500) NULL,
    [�������] [varchar](200) NULL,
    [���] [varchar](200) NULL,
    [��������] [varchar](200) NULL,
    [Email] [varchar](100) NULL,
    [��������������] [varchar](50) NULL,
    [������������������] [varchar](50) NULL,
    [�����_�����] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������������] [varchar](20) NULL,
    [�������������������] [varchar](50) NULL,
    [����] [varchar](50) NOT NULL,
    [��������] [varchar](50) NULL,
    [�����] [bit] NULL,
    [���_����������] [int] NULL,
    [���_�������] [int] NULL,
    [������������] [varchar](500) NULL,
    [��������_����] [varchar](500) NULL,
    [����_��������] [varchar](50) NULL,
    [����1�] [money] NULL,
    [����2�] [money] NULL,
    [����3�] [money] NULL,
    [����4�] [money] NULL,
    [����5�] [money] NULL,
    [����6�] [money] NULL,
    [����] [varchar](100) NULL,
    [��] [int] NULL,
    [��] [int] NULL,
    [��] [int] NULL,
    [�����] [int] NULL,
    [���������] [varchar](50) NULL,
    [��������] [varchar](500) NULL,
    [��������] [text] NULL,
    [��������] [bit] NULL,
    [�������������] [bit] NULL,
    [�������������] [int] NULL,
    [�������������] [varchar](200) NULL,
    [���������] [bit] NULL,
    [������������] [int] NULL,
    [�����������] [bit] NULL,
    [��] [bit] NULL,
    [�������] [int] NULL,
    [����_��������_��] [real] NULL,
    [�����������������] [int] NOT NULL,
    [�����������������] [varchar](50) NULL,
    [��������������] [bit] NOT NULL,
    [������������] [bit] NULL,
    [��������] [int] NULL,
    [��������] [bit] NOT NULL,
    [���������������] [varchar](500) NULL,
    [��] [int] NULL,
    [������] [int] NULL,
    [���������] [int] NULL,
    [���] [varchar](250) NULL,
    [�����������] [bit] NULL,
    [�����] [int] NULL,
    [����������] [money] NULL,
    [��] [int] NULL,
    [���] [int] NULL,
    [UID1] [varchar](50) NULL,
    [UID2] [varchar](50) NULL,
    [UID3] [varchar](50) NULL,
    [UID5] [varchar](50) NULL,
    [���������������] [bit] NULL,
    [�������������] [bit] NULL,
    [������������] [datetime] NULL,
    [�����������] [bit] NULL,
    [�����������] [bit] NULL,
    [�����������] [bit] NULL,
    [�����������] [bit] NULL,
    [�����������] [bit] NULL,
    [�������������������] [bit] NULL,
    [IDDirection] [int] NULL,
    [����������] [int] NULL,
    [����������] [varchar](500) NULL,
    [������������������] [datetime] NULL,
    [���������������������] [datetime] NULL,
    [�����] [bit] NULL,
    [������������] [varchar](500) NULL,
    [���������] [varchar](500) NULL,
    [�����] [int] NULL,
    [�������������������] [int] NULL,
    [�����������������] [bit] NULL,
    [���������] [bit] NULL,
    [����������������������������] [bit] NULL,
    CONSTRAINT [PK__�������������__170E59B8] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������������������](
    [�������������������������] [int] IDENTITY(1,1) NOT NULL,
    [��������������] [int] NOT NULL,
    [����������������] [int] NOT NULL,
    CONSTRAINT [PK_����������������������] PRIMARY KEY CLUSTERED
(
[�������������������������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������] [varchar](250) NOT NULL,
    [�����������] [varchar](50) NOT NULL,
    [����������������] [int] NOT NULL,
    [�����] [bit] NOT NULL,
    [��] [int] NULL,
    [��] [int] NULL,
    [��] [int] NULL,
    [��] [int] NULL,
    [������] [int] NULL,
    [��������������] [varchar](50) NULL,
    [�������������������] [varchar](500) NULL,
    [������������] [varchar](500) NULL,
    CONSTRAINT [PK_��������������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���_�������������] [int] NOT NULL,
    [���_�����������] [int] NOT NULL,
    [����] [int] NOT NULL,
    CONSTRAINT [PK_���������������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[��������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[��������������������](
    [�������������] [int] IDENTITY(1,1) NOT NULL,
    [���������] [nvarchar](800) NOT NULL,
    [��������������] [nvarchar](800) NULL,
    [����������������] [nvarchar](100) NULL,
    [������������������] [nvarchar](100) NULL,
    CONSTRAINT [PK_��������������������] PRIMARY KEY CLUSTERED
(
[�������������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](100) NOT NULL,
    [�����������] [varchar](200) NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������������] [int] NOT NULL,
    [������������] [varchar](120) NULL,
    [�����������] [varchar](200) NULL,
    [�����������] [int] NULL,
    [�������] [bit] NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������������](
    [���������] [int] NOT NULL,
    [������] [varchar](250) NOT NULL,
    [����] [bit] NULL,
    [������] [int] NULL,
    [��������] [int] NULL,
    [�������] [bit] NOT NULL,
    CONSTRAINT [PK_����������������] PRIMARY KEY CLUSTERED
(
[���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������_��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������_��������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [������] [varchar](50) NULL,
    [��������] [varchar](50) NULL,
    [������] [varchar](50) NULL,
    CONSTRAINT [PK_������ ��������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_��������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](50) NULL,
    [�����������] [varchar](200) NULL,
    [�����] [bit] NULL,
    [�������] [varchar](10) NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_���_��������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���_�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���_�����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](100) NULL,
    [������1] [int] NULL,
    [������2] [int] NULL,
    [�����������] [varchar](100) NULL,
    [��������] [varchar](100) NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����_������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����_������](
    [���] [int] NOT NULL,
    [��������] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������_�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������_�����������](
    [���_������] [int] IDENTITY(1,1) NOT NULL,
    [��������] [varchar](50) NULL,
    [�������] [varchar](50) NOT NULL,
    [��������] [varchar](100) NULL,
    [���������] [int] NULL,
    [���������] [int] NULL,
    [������������] [varchar](50) NULL,
    [�����] [bit] NULL,
    [���2] [int] NULL,
    [���������������] [int] NULL,
    [��������������] [int] NULL,
    [�������] [int] NULL,
    [�������] [int] NULL,
    [�������] [int] NULL,
    [�������] [int] NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_�������_�����������] PRIMARY KEY CLUSTERED
(
[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�������_��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�������_��������](
    [������] [int] NOT NULL,
    [���������] [varchar](50) NULL,
    [�����������] [varchar](50) NULL,
    [����] [bit] NULL,
    [�������] [varchar](50) NULL,
    [�������] [varchar](50) NULL,
    [���15] [int] NULL,
    [����������] [int] NULL,
    [�������] [int] NULL,
    CONSTRAINT [PK_�������_��������] PRIMARY KEY CLUSTERED
(
[������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�������_���] [varchar](50) NULL,
    [���] [int] NOT NULL,
    [�����] [bit] NULL,
    CONSTRAINT [PK_�����������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [ID] [int] NULL,
    [��������] [varchar](50) NULL,
    [������] [bigint] NULL,
    [��������] [varchar](50) NULL,
    [����] [image] NULL,
    [��������] [varchar](100) NULL,
    CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[����������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [���������] [varchar](250) NOT NULL,
    [����������] [varchar](50) NOT NULL,
    [���������] [varchar](50) NULL,
    [���_��������] [int] NULL,
    [��] [bit] NULL,
    [�����] [varchar](100) NULL,
    [�������] [varchar](50) NULL,
    [���������] [varchar](50) NULL,
    [����] [bit] NULL,
    [������������] [varchar](50) NULL,
    [EMail] [varchar](50) NULL,
    [URL] [varchar](150) NULL,
    [���������] [varchar](50) NULL,
    [����] [varchar](50) NULL,
    [��������] [text] NULL,
    [�����] [int] NULL,
    [�����] [bit] NULL,
    [��������] [varchar](250) NULL,
    [DepartmentID] [int] NULL,
    CONSTRAINT [PK_����������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���10]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���10](
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
    CONSTRAINT [PK_���10] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���31]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���31](
    [UID] [int] NOT NULL,
    [��������] [varchar](500) NOT NULL,
    CONSTRAINT [PK_���31] PRIMARY KEY CLUSTERED
(
[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���36]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���36](
    [UID] [int] NOT NULL,
    [��������] [varchar](250) NOT NULL,
    CONSTRAINT [PK_���36] PRIMARY KEY CLUSTERED
(
[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����_��������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����_��������](
    [�������] [int] NOT NULL,
    [�������������] [varchar](50) NULL,
    [�������������] [varchar](50) NULL,
    [����] [bit] NULL,
    CONSTRAINT [PK__����� �������_��__4826925F] PRIMARY KEY CLUSTERED
(
[�������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[�����������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[�����������](
    [���] [int] NOT NULL,
    [������] [varchar](50) NULL,
    [��������] [varchar](100) NULL,
    CONSTRAINT [PK_�����������] PRIMARY KEY CLUSTERED
(
[���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[������������](
    [������] [int] IDENTITY(1,1) NOT NULL,
    [�����������] [varchar](50) NOT NULL,
    [���������] [varchar](50) NULL,
    CONSTRAINT [PK_������������] PRIMARY KEY CLUSTERED
(
[������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[���������������������]    Script Date: 12.03.2024 14:01:20 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[���������������������](
    [���] [int] IDENTITY(1,1) NOT NULL,
    [�����������] [varchar](150) NULL,
    [��������������] [varchar](250) NULL,
    [���] [int] NULL,
    [�����] [bit] NULL,
    [������������] [smalldatetime] NULL,
    [���_����������] [int] NULL,
    [���_���������] [int] NULL,
    [�����������] [int] NULL,
    [����������������������] [datetime] NULL,
    [�������������������������] [datetime] NULL,
    [��������������] [int] NULL,
    [��������] [int] NULL,
    [���������] [int] NULL,
    [����������] [int] NULL,
    [���������������] [varchar](500) NULL,
    [DepartmentId] [int] NULL,
    [���_�������������] [int] NULL,
    [���������������������] [datetime] NULL,
    [������������������������] [datetime] NULL,
    [�������������] [int] NULL,
    [���������������] [int] NULL,
    [�������������] [int] NULL,
    [�������������] [bit] NULL,
    CONSTRAINT [PK_����������] PRIMARY KEY CLUSTERED
(
[���] ASC
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
ALTER TABLE [dbo].[��������������] ADD  CONSTRAINT [DF_��������������_��_��]  DEFAULT (0) FOR [��_��]
    GO
ALTER TABLE [dbo].[��������������] ADD  CONSTRAINT [DF_��������������_���]  DEFAULT ((0)) FOR [���]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�����]  DEFAULT ((1)) FOR [�����]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_����������]  DEFAULT ((0)) FOR [����������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_������������]  DEFAULT ((0)) FOR [������������]
    GO
ALTER TABLE [dbo].[�����������] ADD  CONSTRAINT [DF_�����������_�����]  DEFAULT ('�') FOR [�����]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�������_������]  DEFAULT ((0)) FOR [�������_������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�������_����]  DEFAULT ((0)) FOR [�������_����]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_����������]  DEFAULT ((0)) FOR [����������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�������_�_�����]  DEFAULT ((0)) FOR [�������_�_�����]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_���������]  DEFAULT ((1)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_����]  DEFAULT ((0)) FOR [����]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_������_�����������]  DEFAULT ((0)) FOR [������_�����������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_GUID]  DEFAULT (newid()) FOR [GUID]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�������������]  DEFAULT ((0)) FOR [�������������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_���]  DEFAULT ((0)) FOR [���]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_EmailConfirmed]  DEFAULT ((0)) FOR [EmailConfirmed]
    GO
ALTER TABLE [dbo].[���_�����������] ADD  CONSTRAINT [DF_���_�����������_�����]  DEFAULT ((0)) FOR [���������������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������������]  DEFAULT ((0)) FOR [���������������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������������]  DEFAULT ((0)) FOR [���������������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_������]  DEFAULT ((6)) FOR [������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_����_��������]  DEFAULT ((0)) FOR [����_��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���_��������]  DEFAULT ((0)) FOR [���_��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_GUIDz]  DEFAULT (newid()) FOR [GUIDz]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�������]  DEFAULT ((0)) FOR [�������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������������]  DEFAULT ((0)) FOR [��������������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��]  DEFAULT ((0)) FOR [��]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������������������]  DEFAULT ((0)) FOR [���������������������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�������]  DEFAULT ((0)) FOR [�������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��]  DEFAULT ((0)) FOR [��_��]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[���_���������] ADD  CONSTRAINT [DF_���_���������_���������]  DEFAULT ((0)) FOR [���������]
    GO
ALTER TABLE [dbo].[����������-�������������] ADD  CONSTRAINT [DF_����������-�������������_���]  DEFAULT (1) FOR [���]
    GO
ALTER TABLE [dbo].[����������-�������������] ADD  CONSTRAINT [DF_����������-�������������_�������������]  DEFAULT (1) FOR [�������������]
    GO
ALTER TABLE [dbo].[����������-�������������] ADD  CONSTRAINT [DF_����������-�������������_���������]  DEFAULT (0) FOR [���������]
    GO
ALTER TABLE [dbo].[����������������] ADD  CONSTRAINT [DF_Table_1_�����]  DEFAULT ((0)) FOR [isDelete]
    GO
ALTER TABLE [dbo].[���������] ADD  CONSTRAINT [DF_���������_�����]  DEFAULT ((0)) FOR [�����]
    GO
ALTER TABLE [dbo].[������] ADD  CONSTRAINT [DF_������_�����]  DEFAULT ((1)) FOR [�����]
    GO
ALTER TABLE [dbo].[��������������] ADD  CONSTRAINT [DF_��������������_���������]  DEFAULT ((-1)) FOR [���������]
    GO
ALTER TABLE [dbo].[������������������] ADD  CONSTRAINT [DF_������������������_�����]  DEFAULT ((0)) FOR [�����]
    GO
ALTER TABLE [dbo].[��������_��������] ADD  CONSTRAINT [DF_��������_��������_�����]  DEFAULT ((1)) FOR [�����]
    GO
ALTER TABLE [dbo].[����������] ADD  CONSTRAINT [DF_����������_�����]  DEFAULT ((0)) FOR [�����]
    GO
ALTER TABLE [dbo].[����������] ADD  CONSTRAINT [DF_����������_�����������]  DEFAULT ((0)) FOR [�����������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_����������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_�������������]  DEFAULT ((0)) FOR [�������������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_����_��������_��]  DEFAULT ((5)) FOR [����_��������_��]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_�����������������]  DEFAULT ((0)) FOR [�����������������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_��������������]  DEFAULT ((0)) FOR [��������������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_����������������]  DEFAULT ((0)) FOR [������������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_��������]  DEFAULT ((0)) FOR [��������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_�������������]  DEFAULT ((0)) FOR [�������������]
    GO
ALTER TABLE [dbo].[�������������] ADD  CONSTRAINT [DF_�������������_�������������������]  DEFAULT ((0)) FOR [�������������������]
    GO
ALTER TABLE [dbo].[��������������������] ADD  CONSTRAINT [DF_��������������������_�����]  DEFAULT ((0)) FOR [�����]
    GO
ALTER TABLE [dbo].[����������������] ADD  CONSTRAINT [DF_����������������_�������]  DEFAULT ((0)) FOR [�������]
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
    REFERENCES [dbo].[���_�����������] ([ID])
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
    REFERENCES [dbo].[����������] ([���])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Achievements]
    GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Documents] FOREIGN KEY([DocumentID])
    REFERENCES [dbo].[���_���������] ([���])
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
    REFERENCES [dbo].[���_�����������] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Applicants]
    GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserID])
    REFERENCES [dbo].[������������] ([ID])
    GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
    GO
ALTER TABLE [dbo].[NotificationOptions]  WITH CHECK ADD  CONSTRAINT [FK_NotificationOptions_Notifications] FOREIGN KEY([NotificationId])
    REFERENCES [dbo].[Notifications] ([NotificationId])
    GO
ALTER TABLE [dbo].[NotificationOptions] CHECK CONSTRAINT [FK_NotificationOptions_Notifications]
    GO
ALTER TABLE [dbo].[���_�����������]  WITH CHECK ADD  CONSTRAINT [FK_���_�����������_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[���_�����������] CHECK CONSTRAINT [FK_���_�����������_Departments]
    GO
ALTER TABLE [dbo].[���_���������]  WITH CHECK ADD  CONSTRAINT [FK_������������_�������������] FOREIGN KEY([���_�������������])
    REFERENCES [dbo].[�������������] ([���])
    GO
ALTER TABLE [dbo].[���_���������] CHECK CONSTRAINT [FK_������������_�������������]
    GO
ALTER TABLE [dbo].[���_���������]  WITH CHECK ADD  CONSTRAINT [FK_������������_����������������������] FOREIGN KEY([�������������������������])
    REFERENCES [dbo].[����������������������] ([�������������������������])
    GO
ALTER TABLE [dbo].[���_���������] CHECK CONSTRAINT [FK_������������_����������������������]
    GO
ALTER TABLE [dbo].[���_������]  WITH NOCHECK ADD  CONSTRAINT [FK_���_������_��������������] FOREIGN KEY([���_����������])
    REFERENCES [dbo].[��������������] ([���])
    GO
ALTER TABLE [dbo].[���_������] CHECK CONSTRAINT [FK_���_������_��������������]
    GO
ALTER TABLE [dbo].[���_������]  WITH NOCHECK ADD  CONSTRAINT [FK_���_������_���_���������1] FOREIGN KEY([���_���������])
    REFERENCES [dbo].[���_���������] ([���])
    GO
ALTER TABLE [dbo].[���_������] CHECK CONSTRAINT [FK_���_������_���_���������1]
    GO
ALTER TABLE [dbo].[���_������]  WITH NOCHECK ADD  CONSTRAINT [FK_���_������_���_�����������] FOREIGN KEY([ID])
    REFERENCES [dbo].[���_�����������] ([ID])
    ON UPDATE CASCADE
       ON DELETE CASCADE
GO
ALTER TABLE [dbo].[���_������] CHECK CONSTRAINT [FK_���_������_���_�����������]
    GO
ALTER TABLE [dbo].[���_������]  WITH CHECK ADD  CONSTRAINT [FK_���_������_������������] FOREIGN KEY([������])
    REFERENCES [dbo].[������������] ([������])
    ON UPDATE CASCADE
           GO
ALTER TABLE [dbo].[���_������] CHECK CONSTRAINT [FK_���_������_������������]
    GO
ALTER TABLE [dbo].[����������-�������������]  WITH NOCHECK ADD  CONSTRAINT [FK_����������-�������������_��������������1] FOREIGN KEY([���_����������])
    REFERENCES [dbo].[��������������] ([���])
    ON UPDATE CASCADE
       ON DELETE CASCADE
GO
ALTER TABLE [dbo].[����������-�������������] CHECK CONSTRAINT [FK_����������-�������������_��������������1]
    GO
ALTER TABLE [dbo].[����������-�������������]  WITH NOCHECK ADD  CONSTRAINT [FK_����������-�������������_�������������] FOREIGN KEY([���_�������������])
    REFERENCES [dbo].[�������������] ([���])
    GO
ALTER TABLE [dbo].[����������-�������������] CHECK CONSTRAINT [FK_����������-�������������_�������������]
    GO
ALTER TABLE [dbo].[����������-�������������]  WITH CHECK ADD  CONSTRAINT [FK_����������-�������������_������������] FOREIGN KEY([������])
    REFERENCES [dbo].[������������] ([������])
    ON UPDATE CASCADE
           GO
ALTER TABLE [dbo].[����������-�������������] CHECK CONSTRAINT [FK_����������-�������������_������������]
    GO
ALTER TABLE [dbo].[���������������������]  WITH CHECK ADD  CONSTRAINT [FK_���������������������_���_���������] FOREIGN KEY([����������������])
    REFERENCES [dbo].[���_���������] ([���_���������])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[���������������������] CHECK CONSTRAINT [FK_���������������������_���_���������]
    GO
ALTER TABLE [dbo].[���������������������]  WITH CHECK ADD  CONSTRAINT [FK_���������������������_���������������] FOREIGN KEY([���������])
    REFERENCES [dbo].[���������������] ([���])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[���������������������] CHECK CONSTRAINT [FK_���������������������_���������������]
    GO
ALTER TABLE [dbo].[����������������������]  WITH CHECK ADD  CONSTRAINT [FK_����������������������_��������������] FOREIGN KEY([�����������������])
    REFERENCES [dbo].[��������������] ([�������������])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[����������������������] CHECK CONSTRAINT [FK_����������������������_��������������]
    GO
ALTER TABLE [dbo].[����������������������]  WITH CHECK ADD  CONSTRAINT [FK_����������������������_����������������] FOREIGN KEY([���������])
    REFERENCES [dbo].[����������������] ([���])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[����������������������] CHECK CONSTRAINT [FK_����������������������_����������������]
    GO
ALTER TABLE [dbo].[�����������������������]  WITH CHECK ADD  CONSTRAINT [FK_�����������������������-����������������] FOREIGN KEY([�������������������])
    REFERENCES [dbo].[������������-����] ([���])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[�����������������������] CHECK CONSTRAINT [FK_�����������������������-����������������]
    GO
ALTER TABLE [dbo].[������������-����]  WITH NOCHECK ADD  CONSTRAINT [FK_������������-����_������������] FOREIGN KEY([���������������])
    REFERENCES [dbo].[������������] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[������������-����] CHECK CONSTRAINT [FK_������������-����_������������]
    GO
ALTER TABLE [dbo].[������������-����]  WITH NOCHECK ADD  CONSTRAINT [FK_������������-����_����] FOREIGN KEY([�������])
    REFERENCES [dbo].[����] ([���])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[������������-����] CHECK CONSTRAINT [FK_������������-����_����]
    GO
ALTER TABLE [dbo].[��������_��������]  WITH CHECK ADD  CONSTRAINT [FK_��������_��������_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[��������_��������] CHECK CONSTRAINT [FK_��������_��������_Departments]
    GO
ALTER TABLE [dbo].[�������������]  WITH NOCHECK ADD  CONSTRAINT [FK_�������������_���_��������] FOREIGN KEY([�������������])
    REFERENCES [dbo].[���_��������] ([���])
    GO
ALTER TABLE [dbo].[�������������] CHECK CONSTRAINT [FK_�������������_���_��������]
    GO
ALTER TABLE [dbo].[�������������]  WITH NOCHECK ADD  CONSTRAINT [FK_�������������_����������] FOREIGN KEY([���_����������])
    REFERENCES [dbo].[����������] ([���])
    GO
ALTER TABLE [dbo].[�������������] CHECK CONSTRAINT [FK_�������������_����������]
    GO
ALTER TABLE [dbo].[����������������������]  WITH CHECK ADD  CONSTRAINT [FK_�������������_���������] FOREIGN KEY([����������������])
    REFERENCES [dbo].[�������������] ([���])
    GO
ALTER TABLE [dbo].[����������������������] CHECK CONSTRAINT [FK_�������������_���������]
    GO
ALTER TABLE [dbo].[���������������������]  WITH CHECK ADD  CONSTRAINT [FK_���������������������_�����������] FOREIGN KEY([��������������])
    REFERENCES [dbo].[�����������] ([���])
    GO
ALTER TABLE [dbo].[���������������������] CHECK CONSTRAINT [FK_���������������������_�����������]
    GO
ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_���_�����������] FOREIGN KEY([ID])
    REFERENCES [dbo].[���_�����������] ([ID])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_���_�����������]
    GO
ALTER TABLE [dbo].[����������]  WITH CHECK ADD  CONSTRAINT [FK_����������_Departments] FOREIGN KEY([DepartmentID])
    REFERENCES [dbo].[Departments] ([DepartmentID])
    GO
ALTER TABLE [dbo].[����������] CHECK CONSTRAINT [FK_����������_Departments]
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1035 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2370 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2175 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1980 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2205 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4980 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=6525 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors', @level2type=N'COLUMN',@level2name=N'Sub'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'(((LogErrors.��������="BOF ��� EOF ����� �������� True, ���� ������� ������ �������. ��� ����������� �������� ��������� ������� ������."))) AND ((LogErrors.�������� ALike "frmManager.cmdLoad_Click"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'LogErrors.��� DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogErrors'
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
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture', @level2type=N'COLUMN',@level2name=N'�������'
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
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2115 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'���4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(����� ��� ���)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������', @level2type=N'COLUMN',@level2name=N'��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'��������������.������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2865 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1845 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1410 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3090 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1455 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=705 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=840 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=825 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=960 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1020 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1020 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1170 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'IDdoc'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���_���������.���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2340 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=660 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2385 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1905 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=22 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_���������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=23 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=24 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=25 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3105 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=26 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=27 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=28 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=29 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=30 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=31 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=32 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'E_Mail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=33 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=34 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=35 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=36 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=37 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=38 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=39 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=40 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=41 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=42 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=43 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������_�_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=44 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������_�_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�������_�_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=45 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=46 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=47 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=48 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=49 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=50 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_��_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=51 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=52 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_�_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=53 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_�_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������_�_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=54 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=55 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2265 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1515 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=56 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=57 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=58 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=59 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=60 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=61 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=62 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=63 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=64 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=65 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=66 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1320 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=67 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1500 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=68 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2430 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=69 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����_������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=70 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=71 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=72 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=73 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=74 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=75 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=76 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������1'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������2'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������3'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������4'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'������5'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'GUID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((�������="����������"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���_�����������.ID DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2400 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1860 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'(((���_���������.���_���������=7))) AND ((���_���������.�����_���������="1142417"))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���_���������.�����_��������� DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1380 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1800 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2130 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1890 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1125 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3345 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT ID, ������� + '' '' + ��� + '' '' + �������� AS ��� FROM ���_�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT ���_���������, ������� FROM ���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2835 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT ���, �������� FROM ���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2340 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;5670.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT ���, ���������� FROM ��������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'�����_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'��_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'��_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'��_�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((ID Is Null))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���_������.���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=270 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1695 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1785 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������_��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4410 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2385 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2310 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'��_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1620 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������-�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1590 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2085 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2190 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1530 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������_��_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������_��_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3900 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������_��_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3375 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���_���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2460 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2580 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���������.��������� DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4185 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4560 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1905 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'����������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=6540 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'�������.���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1890 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3930 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2715 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���_�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2625 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1995 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5310 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3225 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2640 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3420 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������_������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2175 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1995 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5925 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=100000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3660 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1710 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Email'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'ICQ'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'Skype'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������_old'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1170 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'ID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1380 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5400 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4605 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2865 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'SID'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((������������� Is Not Null))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'������������.������������� DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=315 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[������������-����]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2220 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;2835.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'���������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=5550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;2835.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������-����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2055 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3210 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2880 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2955 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2940 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����', @level2type=N'COLUMN',@level2name=N'������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[������������-����]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=675 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1860 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1305 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1950 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=885 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=19 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���_�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2955 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=9255 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������_����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=20 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����1�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=21 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����1�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����1�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����2�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=22 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����2�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����2�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����3�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=23 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����3�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����3�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����4�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=24 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����4�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����4�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����5�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=25 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����5�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����5�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����6�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=26 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����6�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����6�'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1305 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=945 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=855 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=810 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2550 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=27 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=28 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1050 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=29 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1725 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=330 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=30 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=31 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=32 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'((�������������.�����=True))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'�������������.���_����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.[����������-�������������]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3840 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'��������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���������������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2970 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4245 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.���_�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2055 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=7350 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4140 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2895 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�������_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�������_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�������_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�������_���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1005 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=5 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=4590 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1665 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=8 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=9 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2640 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0.000;3402.000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'dbo.���_��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���_��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=10 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=11 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3015 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=12 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1635 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=13 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=14 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=15 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=16 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'EMail'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=17 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'URL'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=18 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1650 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=7 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2475 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=6 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������', @level2type=N'COLUMN',@level2name=N'�����'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkChildFields', @value=N'���_����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_LinkMasterFields', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'����������.���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=315 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'dbo.�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������', @level2type=N'COLUMN',@level2name=N'��������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2715 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������', @level2type=N'COLUMN',@level2name=N'���������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'���'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3915 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'�����������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3510 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������', @level2type=N'COLUMN',@level2name=N'��������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
    EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'���������������������'
    GO
