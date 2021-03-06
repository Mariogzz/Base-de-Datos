USE [Practica 1]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 09/09/2018 09:43:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bebida](
	[iID_Bebida] [int] NOT NULL,
	[vNombreBebida] [varchar](50) NOT NULL,
	[bStock] [bit] NOT NULL,
	[mPrecioBebida] [money] NOT NULL,
	[imImagen] [image] NOT NULL,
	[teDescripcion] [text] NOT NULL,
 CONSTRAINT [PK_Bebida] PRIMARY KEY CLUSTERED 
(
	[iID_Bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 09/09/2018 09:43:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comida](
	[iID_Comida] [int] NOT NULL,
	[vNombreComida] [varchar](50) NOT NULL,
	[bStock] [bit] NOT NULL,
	[mPrecioComida] [money] NOT NULL,
	[imImagen] [image] NOT NULL,
	[teDescripcion] [text] NOT NULL,
 CONSTRAINT [PK_Comida] PRIMARY KEY CLUSTERED 
(
	[iID_Comida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 09/09/2018 09:43:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[iID_Mesa] [int] NOT NULL,
	[bCapacidad] [bit] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[iID_Mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesero]    Script Date: 09/09/2018 09:43:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesero](
	[iID_Mesero] [int] NOT NULL,
	[vNombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Mesero] PRIMARY KEY CLUSTERED 
(
	[iID_Mesero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 09/09/2018 09:43:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[iID_Ticket] [int] NOT NULL,
	[iID_Mesero] [int] NOT NULL,
	[iID_Mesa] [int] NOT NULL,
	[iID_Comida] [int] NOT NULL,
	[iID_Bebida] [int] NOT NULL,
	[fTotal] [float] NOT NULL,
	[dFecha] [date] NOT NULL,
	[vNombreBebida] [varchar](50) NOT NULL,
	[vNombreComida] [varchar](50) NOT NULL,
	[mPrecioComida] [money] NOT NULL,
	[mPrecioBebida] [money] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[iID_Ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Bebida] FOREIGN KEY([iID_Bebida])
REFERENCES [dbo].[Bebida] ([iID_Bebida])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Bebida]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Comida] FOREIGN KEY([iID_Comida])
REFERENCES [dbo].[Comida] ([iID_Comida])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Comida]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Mesa] FOREIGN KEY([iID_Mesa])
REFERENCES [dbo].[Mesa] ([iID_Mesa])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Mesa]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Mesero] FOREIGN KEY([iID_Mesero])
REFERENCES [dbo].[Mesero] ([iID_Mesero])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Mesero]
GO
ALTER TABLE [dbo].[Bebida]  WITH CHECK ADD  CONSTRAINT [CK_Bebida] CHECK  (([bStock]<(2)))
GO
ALTER TABLE [dbo].[Bebida] CHECK CONSTRAINT [CK_Bebida]
GO
ALTER TABLE [dbo].[Comida]  WITH CHECK ADD  CONSTRAINT [CK_Comida] CHECK  (([bStock]<(2)))
GO
ALTER TABLE [dbo].[Comida] CHECK CONSTRAINT [CK_Comida]
GO
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [CK_Mesa] CHECK  (([bCapacidad]<(0)))
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [CK_Mesa]
GO
ALTER TABLE [dbo].[Mesero]  WITH CHECK ADD  CONSTRAINT [CK_Mesero] CHECK  (([iID_Mesero]<(0)))
GO
ALTER TABLE [dbo].[Mesero] CHECK CONSTRAINT [CK_Mesero]
GO
