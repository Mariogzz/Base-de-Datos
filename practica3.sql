USE [Practica 3]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bebida](
	[ID_Bebida] [tinyint] NOT NULL,
	[Nombre_Bebida] [varchar](50) NOT NULL,
	[Stock] [tinyint] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Costo] [money] NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[ID_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 22/09/2018 11:02:45 a.m. ******/
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
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Comanda] PRIMARY KEY CLUSTERED 
(
	[ID_Comanda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comida]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comida](
	[ID_Comida] [tinyint] NOT NULL,
	[Nombre_Comida] [varchar](50) NOT NULL,
	[Stock] [tinyint] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Costo] [money] NOT NULL,
 CONSTRAINT [PK_Comida] PRIMARY KEY CLUSTERED 
(
	[ID_Comida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [tinyint] NOT NULL,
	[ID_Puesto] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[ID_Mesa] [tinyint] NOT NULL,
	[Capacidad] [tinyint] NOT NULL,
	[Reservada] [bit] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[ID_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[ID_Puesto] [tinyint] NOT NULL,
	[Sueldo] [money] NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[ID_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restaurant](
	[ID_Restaurant] [tinyint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [tinyint] NOT NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[ID_Restaurant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPago]    Script Date: 22/09/2018 11:02:45 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPago](
	[ID_TipoPago] [tinyint] NOT NULL,
	[TipoPago] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[ID_TipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Bebida] FOREIGN KEY([ID_Bebida])
REFERENCES [dbo].[Bebida] ([ID_Bebida])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Bebida]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Comida] FOREIGN KEY([ID_Comida])
REFERENCES [dbo].[Comida] ([ID_Comida])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Comida]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [dbo].[Empleado] ([ID_Empleado])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Empleado]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Mesa] FOREIGN KEY([ID_Mesa])
REFERENCES [dbo].[Mesa] ([ID_Mesa])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Mesa]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Restaurant] FOREIGN KEY([ID_Restaurant])
REFERENCES [dbo].[Restaurant] ([ID_Restaurant])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Restaurant]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_TipoPago] FOREIGN KEY([ID_TipoPago])
REFERENCES [dbo].[TipoPago] ([ID_TipoPago])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_TipoPago]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([ID_Puesto])
REFERENCES [dbo].[Puesto] ([ID_Puesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [CK_Puesto] CHECK  (([Sueldo]>(0)))
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [CK_Puesto]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [CK_Puesto_1] CHECK  (([ID_Puesto]>(0)))
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [CK_Puesto_1]
GO
