

CREATE TABLE [dbo].[tbGuidedReportsUser](
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](64) NULL,
	[StoreCode] [varchar](30) NULL,
	[OfficeCode] [varchar](30) NULL,
	[PosTerminalID] [varchar](10) NULL,
	[WareHouseCode] [varchar](30) NULL,
	[IsAdmin] [varchar](10) NULL,
	[CreatedUserName] [dbo].[Char20] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedUserName] [dbo].[Char20] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[SalesPersonCode] [varchar](30) NULL,
	[DeviceRID] [nvarchar](10) NULL,
	[NebimUserName] [nvarchar](100) NULL,
	[UserType] [nvarchar](50) NULL,
	[FirstLastName] [varchar](300) NULL,
	[IsBlocked] [bit] NULL,
	[AppName] [varchar](200) NULL,
	[FirmaId] [nvarchar](60) NULL,
	[FirmaAdi] [nvarchar](200) NULL,
	[Aktif] [bit] NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[tbGuidedReportUserAuthority](
	[UserName] [varchar](30) NULL,
	[MenuCode] [varchar](30) NULL,
	[MenuName] [varchar](30) NULL,
	[CanSee] [bit] NULL,
	[CreatedUserName] [dbo].[Char20] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedUserName] [dbo].[Char20] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ProductAtt01] [nvarchar](30) NULL,
	[ProductAtt02] [nvarchar](30) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbGuidedReportUserAuthority] ADD  DEFAULT (substring(suser_name(),patindex('%\%',suser_name())+(1),(20))) FOR [CreatedUserName]
GO

ALTER TABLE [dbo].[tbGuidedReportUserAuthority] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[tbGuidedReportUserAuthority] ADD  DEFAULT (substring(suser_name(),patindex('%\%',suser_name())+(1),(20))) FOR [LastUpdatedUserName]
GO

ALTER TABLE [dbo].[tbGuidedReportUserAuthority] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO

ALTER TABLE [dbo].[tbGuidedReportUserAuthority] ADD  DEFAULT (newid()) FOR [RowGuid]
GO


