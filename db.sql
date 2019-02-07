USE [master]
GO
/****** Object:  Database [HEALTHSYSTEM]    Script Date: 20/10/2018 21:36:14 ******/
CREATE DATABASE [HEALTHSYSTEM]
GO
ALTER DATABASE [HEALTHSYSTEM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HEALTHSYSTEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HEALTHSYSTEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HEALTHSYSTEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [HEALTHSYSTEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HEALTHSYSTEM] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HEALTHSYSTEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET  MULTI_USER 
GO
ALTER DATABASE [HEALTHSYSTEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HEALTHSYSTEM] SET ENCRYPTION ON
GO
ALTER DATABASE [HEALTHSYSTEM] SET QUERY_STORE = ON
GO
ALTER DATABASE [HEALTHSYSTEM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [HEALTHSYSTEM]
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ADAPTIVE_JOINS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET GLOBAL_TEMPORARY_TABLE_AUTO_DROP = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET INTERLEAVED_EXECUTION_TVF = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [HEALTHSYSTEM]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
/****** Object:  UserDefinedFunction [dbo].[haversine]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[haversine](
        @lat1 FLOAT, @lon1 FLOAT,
        @lat2 FLOAT, @lon2 FLOAT
     ) RETURNS FLOAT
  
BEGIN
    RETURN DEGREES(ACOS(
              COS(RADIANS(@lat1)) *
              COS(RADIANS(@lat2)) *
              COS(RADIANS(@lon2) - RADIANS(@lon1)) +
              SIN(RADIANS(@lat1)) * SIN(RADIANS(@lat2))
            ));
END



GO
/****** Object:  Table [dbo].[AUDIT_TRAIL]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUDIT_TRAIL](
	[id_audit_trail] [char](36) NOT NULL,
	[event_date] [datetime] NOT NULL,
	[category] [varchar](100) NOT NULL,
	[event_name] [varchar](200) NOT NULL,
	[additional_info] [text] NULL,
	[id_user] [char](36) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_audit_trail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIAGNOSIS]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIAGNOSIS](
	[id_diagnosis] [char](36) NOT NULL,
	[date_diagnosis] [datetime] NOT NULL,
	[anotation] [text] NULL,
	[id_patient] [char](36) NOT NULL,
	[id_physician] [char](36) NOT NULL,
	[id_health_institution] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_diagnosis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIAGNOSIS_PROCEDURE]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIAGNOSIS_PROCEDURE](
	[id_diagnosis_procedure] [char](36) NOT NULL,
	[date_procedure] [datetime] NOT NULL,
	[anotation] [text] NULL,
	[status] [char](1) NOT NULL,
	[id_diagnosis] [char](36) NOT NULL,
	[id_nurse] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_diagnosis_procedure] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[id_diagnosis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISEASE]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISEASE](
	[id_disease] [char](36) NOT NULL,
	[name_en] [varchar](100) NOT NULL,
	[name_pt] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_disease] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ERROR_LOG]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERROR_LOG](
	[id_error] [char](36) NOT NULL,
	[event_date] [datetime] NOT NULL,
	[message] [text] NULL,
	[name_of_file] [varchar](100) NULL,
	[class_name] [varchar](100) NULL,
	[method_name] [varchar](200) NULL,
	[line_number] [int] NULL,
	[additional_info] [text] NULL,
	[id_user] [char](36) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_error] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAM]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAM](
	[id_exam] [char](36) NOT NULL,
	[date_exam] [datetime] NOT NULL,
	[anotation] [text] NULL,
	[id_patient] [char](36) NOT NULL,
	[id_physician] [char](36) NOT NULL,
	[id_health_institution] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_exam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAM_ATTACHMENT]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAM_ATTACHMENT](
	[id_exam_attachment] [char](36) NOT NULL,
	[attachment_name] [varchar](100) NULL,
	[id_exam] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_exam_attachment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HEALTH_INSTITUTION]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HEALTH_INSTITUTION](
	[id_health_institution] [char](36) NOT NULL,
	[identity_code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[postal_code] [char](8) NULL,
	[country] [varchar](3) NOT NULL,
	[state] [varchar](100) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[street] [varchar](100) NOT NULL,
	[neighborhood] [varchar](50) NOT NULL,
	[number] [varchar](10) NOT NULL,
	[photo] [varchar](100) NULL,
	[latitute] [float] NOT NULL,
	[longitute] [float] NOT NULL,
	[telephone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_health_institution] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICINE]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICINE](
	[id_medicine] [char](36) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[language] [varchar](3) NOT NULL,
	[country] [varchar](3) NOT NULL,
	[status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NURSE]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NURSE](
	[id_nurse] [char](36) NOT NULL,
	[id_user] [char](36) NOT NULL,
	[nurse_code] [varchar](15) NOT NULL,
	[nurse_type] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nurse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_NURSE] UNIQUE NONCLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NURSE_HAS_SPECIALIZATION]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NURSE_HAS_SPECIALIZATION](
	[id_nurse_has_specialization] [char](36) NOT NULL,
	[id_nurse] [char](36) NOT NULL,
	[id_specialization] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nurse_has_specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NURSE_SPECIALIZATION]    Script Date: 20/10/2018 21:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NURSE_SPECIALIZATION](
	[id_specialization] [char](36) NOT NULL,
	[name_pt] [varchar](100) NOT NULL,
	[name_en] [varchar](100) NOT NULL,
	[country] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PATIENT]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATIENT](
	[id_patient] [char](36) NOT NULL,
	[blood_type] [varchar](2) NULL,
	[color] [varchar](2) NULL,
	[father_name] [varchar](100) NULL,
	[mother_name] [varchar](100) NULL,
	[weight] [float] NULL,
	[height] [float] NULL,
	[id_user] [char](36) NOT NULL,
	[status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_patient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PATIENT] UNIQUE NONCLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PATIENT_HAS_DISEASE]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATIENT_HAS_DISEASE](
	[id_patient_has_disease] [char](36) NOT NULL,
	[id_patient] [char](36) NOT NULL,
	[id_disease] [char](36) NOT NULL,
	[anotations] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_patient_has_disease] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PATIENT_HAS_TAG]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATIENT_HAS_TAG](
	[id_patient_has_tag] [char](36) NOT NULL,
	[mac_code] [varchar](36) NULL,
	[id_patient] [char](36) NOT NULL,
	[tag_type] [varchar](2) NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_patient_has_tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mac_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PATIENT_USE_MEDICINE]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATIENT_USE_MEDICINE](
	[id_patient_use_medicine] [char](36) NOT NULL,
	[id_patient] [char](36) NOT NULL,
	[id_medicine] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_patient_use_medicine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHYSICIAN]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHYSICIAN](
	[id_physician] [char](36) NOT NULL,
	[id_user] [char](36) NOT NULL,
	[practice_document] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_physician] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PHYSICIAN] UNIQUE NONCLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHYSICIAN_ATTENDANCE]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHYSICIAN_ATTENDANCE](
	[id_physician_attendance] [char](36) NOT NULL,
	[date_attendance] [datetime] NOT NULL,
	[id_patient] [char](36) NOT NULL,
	[id_physician] [char](36) NOT NULL,
	[id_health_institution] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_physician_attendance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHYSICIAN_HAS_SPECIALIZATION]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHYSICIAN_HAS_SPECIALIZATION](
	[id_physician_has_specialization] [char](36) NOT NULL,
	[id_physician] [char](36) NOT NULL,
	[id_specialization] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_physician_has_specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHYSICIAN_SPECIALIZATION]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHYSICIAN_SPECIALIZATION](
	[id_specialization] [char](36) NOT NULL,
	[name_pt] [varchar](100) NOT NULL,
	[name_en] [varchar](100) NOT NULL,
	[country] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_AND_HEALTH_INSTITUTION]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_AND_HEALTH_INSTITUTION](
	[id_user_works_in_health_institution] [char](36) NOT NULL,
	[id_user] [char](36) NOT NULL,
	[id_health_institution] [char](36) NOT NULL,
	[status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user_works_in_health_institution] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_USER_HEALTH_HEALTH_INSTITUTION] UNIQUE NONCLUSTERED 
(
	[id_user] ASC,
	[id_health_institution] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_HEALTH]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_HEALTH](
	[id_user] [char](36) NOT NULL,
	[login] [varchar](100) NOT NULL,
	[password] [char](64) NOT NULL,
	[name] [varchar](100) NULL,
	[type_of_user] [varchar](2) NOT NULL,
	[born_date] [date] NULL,
	[gender] [char](1) NULL,
	[postal_code] [char](8) NULL,
	[country] [varchar](3) NOT NULL,
	[state] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[street] [varchar](100) NULL,
	[neighborhood] [varchar](50) NULL,
	[number] [varchar](10) NULL,
	[photo] [varchar](100) NULL,
	[identity_document] [varchar](36) NULL,
	[telephone] [varchar](20) NULL,
	[secret_code] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_SECRET_CODE] UNIQUE NONCLUSTERED 
(
	[secret_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [INDEX_COORDINATE]    Script Date: 20/10/2018 21:36:16 ******/
CREATE NONCLUSTERED INDEX [INDEX_COORDINATE] ON [dbo].[HEALTH_INSTITUTION]
(
	[latitute] ASC,
	[longitute] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INDEX_SEARCH]    Script Date: 20/10/2018 21:36:16 ******/
CREATE NONCLUSTERED INDEX [INDEX_SEARCH] ON [dbo].[HEALTH_INSTITUTION]
(
	[name] ASC,
	[identity_code] ASC,
	[country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUDIT_TRAIL] ADD  DEFAULT (getdate()) FOR [event_date]
GO
ALTER TABLE [dbo].[DIAGNOSIS] ADD  DEFAULT (getdate()) FOR [date_diagnosis]
GO
ALTER TABLE [dbo].[DIAGNOSIS_PROCEDURE] ADD  DEFAULT (getdate()) FOR [date_procedure]
GO
ALTER TABLE [dbo].[ERROR_LOG] ADD  DEFAULT (getdate()) FOR [event_date]
GO
ALTER TABLE [dbo].[EXAM] ADD  DEFAULT (getdate()) FOR [date_exam]
GO
ALTER TABLE [dbo].[AUDIT_TRAIL]  WITH CHECK ADD  CONSTRAINT [FK_AUDIT_TRAIL_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
GO
ALTER TABLE [dbo].[AUDIT_TRAIL] CHECK CONSTRAINT [FK_AUDIT_TRAIL_USER]
GO
ALTER TABLE [dbo].[DIAGNOSIS]  WITH CHECK ADD  CONSTRAINT [FK_diagnosis_health_institution] FOREIGN KEY([id_health_institution])
REFERENCES [dbo].[HEALTH_INSTITUTION] ([id_health_institution])
GO
ALTER TABLE [dbo].[DIAGNOSIS] CHECK CONSTRAINT [FK_diagnosis_health_institution]
GO
ALTER TABLE [dbo].[DIAGNOSIS]  WITH CHECK ADD  CONSTRAINT [FK_diagnosis_patient] FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
GO
ALTER TABLE [dbo].[DIAGNOSIS] CHECK CONSTRAINT [FK_diagnosis_patient]
GO
ALTER TABLE [dbo].[DIAGNOSIS]  WITH CHECK ADD  CONSTRAINT [FK_diagnosis_physician] FOREIGN KEY([id_physician])
REFERENCES [dbo].[PHYSICIAN] ([id_physician])
GO
ALTER TABLE [dbo].[DIAGNOSIS] CHECK CONSTRAINT [FK_diagnosis_physician]
GO
ALTER TABLE [dbo].[DIAGNOSIS_PROCEDURE]  WITH CHECK ADD  CONSTRAINT [FK_diagnosis_procedure_diagnosis] FOREIGN KEY([id_diagnosis])
REFERENCES [dbo].[DIAGNOSIS] ([id_diagnosis])
GO
ALTER TABLE [dbo].[DIAGNOSIS_PROCEDURE] CHECK CONSTRAINT [FK_diagnosis_procedure_diagnosis]
GO
ALTER TABLE [dbo].[DIAGNOSIS_PROCEDURE]  WITH CHECK ADD  CONSTRAINT [FK_nurse_procedure_nurse] FOREIGN KEY([id_nurse])
REFERENCES [dbo].[NURSE] ([id_nurse])
GO
ALTER TABLE [dbo].[DIAGNOSIS_PROCEDURE] CHECK CONSTRAINT [FK_nurse_procedure_nurse]
GO
ALTER TABLE [dbo].[ERROR_LOG]  WITH CHECK ADD  CONSTRAINT [FK_ERROR_LOG_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
GO
ALTER TABLE [dbo].[ERROR_LOG] CHECK CONSTRAINT [FK_ERROR_LOG_USER]
GO
ALTER TABLE [dbo].[EXAM]  WITH CHECK ADD  CONSTRAINT [FK_exam_health_institution] FOREIGN KEY([id_health_institution])
REFERENCES [dbo].[HEALTH_INSTITUTION] ([id_health_institution])
GO
ALTER TABLE [dbo].[EXAM] CHECK CONSTRAINT [FK_exam_health_institution]
GO
ALTER TABLE [dbo].[EXAM]  WITH CHECK ADD  CONSTRAINT [FK_exam_patient] FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
GO
ALTER TABLE [dbo].[EXAM] CHECK CONSTRAINT [FK_exam_patient]
GO
ALTER TABLE [dbo].[EXAM]  WITH CHECK ADD  CONSTRAINT [FK_exam_physician] FOREIGN KEY([id_physician])
REFERENCES [dbo].[PHYSICIAN] ([id_physician])
GO
ALTER TABLE [dbo].[EXAM] CHECK CONSTRAINT [FK_exam_physician]
GO
ALTER TABLE [dbo].[EXAM_ATTACHMENT]  WITH CHECK ADD  CONSTRAINT [FK_exam_attachment_exam] FOREIGN KEY([id_exam])
REFERENCES [dbo].[EXAM] ([id_exam])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EXAM_ATTACHMENT] CHECK CONSTRAINT [FK_exam_attachment_exam]
GO
ALTER TABLE [dbo].[NURSE]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NURSE_HAS_SPECIALIZATION]  WITH CHECK ADD FOREIGN KEY([id_nurse])
REFERENCES [dbo].[NURSE] ([id_nurse])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NURSE_HAS_SPECIALIZATION]  WITH CHECK ADD FOREIGN KEY([id_specialization])
REFERENCES [dbo].[NURSE_SPECIALIZATION] ([id_specialization])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_HAS_DISEASE]  WITH CHECK ADD FOREIGN KEY([id_disease])
REFERENCES [dbo].[DISEASE] ([id_disease])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_HAS_DISEASE]  WITH CHECK ADD FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_HAS_TAG]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_HAS_TAG] FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_HAS_TAG] CHECK CONSTRAINT [FK_PATIENT_HAS_TAG]
GO
ALTER TABLE [dbo].[PATIENT_USE_MEDICINE]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_USE_MEDICINE_MEDICINE] FOREIGN KEY([id_medicine])
REFERENCES [dbo].[MEDICINE] ([id_medicine])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_USE_MEDICINE] CHECK CONSTRAINT [FK_PATIENT_USE_MEDICINE_MEDICINE]
GO
ALTER TABLE [dbo].[PATIENT_USE_MEDICINE]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_USE_MEDICINE_PATIENT] FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PATIENT_USE_MEDICINE] CHECK CONSTRAINT [FK_PATIENT_USE_MEDICINE_PATIENT]
GO
ALTER TABLE [dbo].[PHYSICIAN]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE]  WITH CHECK ADD  CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_HEALTH_INSTITUTION] FOREIGN KEY([id_health_institution])
REFERENCES [dbo].[HEALTH_INSTITUTION] ([id_health_institution])
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE] CHECK CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_HEALTH_INSTITUTION]
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE]  WITH CHECK ADD  CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_PATIENT] FOREIGN KEY([id_patient])
REFERENCES [dbo].[PATIENT] ([id_patient])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE] CHECK CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_PATIENT]
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE]  WITH CHECK ADD  CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_PHYSICIAN] FOREIGN KEY([id_physician])
REFERENCES [dbo].[PHYSICIAN] ([id_physician])
GO
ALTER TABLE [dbo].[PHYSICIAN_ATTENDANCE] CHECK CONSTRAINT [FK_PHYSICIAN_ATTENDANCE_PHYSICIAN]
GO
ALTER TABLE [dbo].[PHYSICIAN_HAS_SPECIALIZATION]  WITH CHECK ADD FOREIGN KEY([id_physician])
REFERENCES [dbo].[PHYSICIAN] ([id_physician])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHYSICIAN_HAS_SPECIALIZATION]  WITH CHECK ADD FOREIGN KEY([id_specialization])
REFERENCES [dbo].[PHYSICIAN_SPECIALIZATION] ([id_specialization])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USER_AND_HEALTH_INSTITUTION]  WITH CHECK ADD FOREIGN KEY([id_health_institution])
REFERENCES [dbo].[HEALTH_INSTITUTION] ([id_health_institution])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USER_AND_HEALTH_INSTITUTION]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[USER_HEALTH] ([id_user])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[SELECT_HEALTH_INSTITUTIONS_BY_COORDINATE]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_HEALTH_INSTITUTIONS_BY_COORDINATE]
(
	@latitute1 FLOAT,
	@longitute1 FLOAT,
	@distance INT
	)
AS   
	SELECT * FROM HEALTH_INSTITUTION WHERE 111.045 * dbo.haversine(@latitute1, @longitute1, latitute, longitute) <= @distance;
		

GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 20/10/2018 21:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
USE [master]
GO
ALTER DATABASE [HEALTHSYSTEM] SET  READ_WRITE 
GO
