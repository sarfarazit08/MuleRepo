USE [MuleDB]
GO

ALTER TABLE [dbo].[covid19] DROP CONSTRAINT [DF_covid19_deltarecovered]
GO

ALTER TABLE [dbo].[covid19] DROP CONSTRAINT [DF_covid19_deltadeaths]
GO

ALTER TABLE [dbo].[covid19] DROP CONSTRAINT [DF_covid19_deltaconfirmed]
GO

/****** Object:  Table [dbo].[covid19]    Script Date: 4/5/2020 9:20:18 AM ******/
DROP TABLE [dbo].[covid19]
GO

/****** Object:  Table [dbo].[covid19]    Script Date: 4/5/2020 9:20:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[covid19](
	[active] [varchar](50) NOT NULL,
	[confirmed] [varchar](50) NOT NULL,
	[deaths] [varchar](50) NOT NULL,
	[recovered] [varchar](50) NOT NULL,
	[deltaconfirmed] [varchar](50) NOT NULL,
	[deltadeaths] [varchar](50) NOT NULL,
	[deltarecovered] [varchar](50) NOT NULL,
	[lastupdatedtime] [datetime] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[covid19] ADD  CONSTRAINT [DF_covid19_deltaconfirmed]  DEFAULT ((0)) FOR [deltaconfirmed]
GO

ALTER TABLE [dbo].[covid19] ADD  CONSTRAINT [DF_covid19_deltadeaths]  DEFAULT ((0)) FOR [deltadeaths]
GO

ALTER TABLE [dbo].[covid19] ADD  CONSTRAINT [DF_covid19_deltarecovered]  DEFAULT ((0)) FOR [deltarecovered]
GO


