USE [Practica 3]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 22/09/2018 01:28:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[ID_Bebida] [tinyint] NOT NULL,
	[Nombre_Bebida] [varchar](50) NOT NULL,
	[Stock] [tinyint] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Costo] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[ID_Comanda] [tinyint] NOT NULL,
	[ID_Restaurant] [tinyint] NOT NULL,
	[Fecha] [date] NOT NULL,
	[ID_Empleado] [tinyint] NOT NULL,
	[ID_Mesa] [tinyint] NOT NULL,
	[ID_Bebida] [tinyint] NOT NULL,
	[ID_Comida] [tinyint] NOT NULL,
	[ID_TipoPago] [tinyint] NOT NULL,
	[Total] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comida](
	[ID_Comida] [tinyint] NOT NULL,
	[Nombre_Comida] [varchar](50) NOT NULL,
	[Stock] [tinyint] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Costo] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [tinyint] NOT NULL,
	[ID_Puesto] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[ID_Mesa] [tinyint] NOT NULL,
	[Capacidad] [tinyint] NOT NULL,
	[Reservada] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[ID_Puesto] [tinyint] NOT NULL,
	[Sueldo] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[ID_Restaurant] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 22/09/2018 01:28:05 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPago](
	[ID_TipoPago] [tinyint] NOT NULL,
	[TipoPago] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [CK_Puesto] CHECK  (([Sueldo]<(0)))
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [CK_Puesto]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [CK_Puesto_1] CHECK  (([ID_Puesto]<(0)))
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [CK_Puesto_1]
GO
