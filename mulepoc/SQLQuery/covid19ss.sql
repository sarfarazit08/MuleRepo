USE [MuleDB]
GO

ALTER TABLE [dbo].[covid19ss] DROP CONSTRAINT [DF_covid19ss_deltarecovered]
GO

ALTER TABLE [dbo].[covid19ss] DROP CONSTRAINT [DF_covid19ss_deltadeaths]
GO

ALTER TABLE [dbo].[covid19ss] DROP CONSTRAINT [DF_covid19ss_deltaconfirmed]
GO

/****** Object:  Table [dbo].[covid19ss]    Script Date: 4/6/2020 8:33:08 AM ******/
DROP TABLE [dbo].[covid19ss]
GO

/****** Object:  Table [dbo].[covid19]    Script Date: 4/6/2020 8:33:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[covid19ss](
	[active] [varchar](50) NOT NULL,
	[confirmed] [varchar](50) NOT NULL,
	[deaths] [varchar](50) NOT NULL,
	[recovered] [varchar](50) NOT NULL,
	[deltaconfirmed] [varchar](50) NOT NULL,
	[deltadeaths] [varchar](50) NOT NULL,
	[deltarecovered] [varchar](50) NOT NULL,
	 state [varchar](50) NOT NULL,
  statecode [varchar](50) NOT NULL,
	[lastupdatedtime] [varchar](50) NOT NULL

) ON [PRIMARY]




GO

ALTER TABLE [dbo].[covid19ss] ADD  CONSTRAINT [DF_covid19ss_deltaconfirmed]  DEFAULT ((0)) FOR [deltaconfirmed]
GO

ALTER TABLE [dbo].[covid19ss] ADD  CONSTRAINT [DF_covid19ss_deltadeaths]  DEFAULT ((0)) FOR [deltadeaths]
GO

ALTER TABLE [dbo].[covid19ss] ADD  CONSTRAINT [DF_covid19ss_deltarecovered]  DEFAULT ((0)) FOR [deltarecovered]
GO


