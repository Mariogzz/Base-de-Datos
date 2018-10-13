USE [Practica 6]
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
	[ApellidoMat] [varchar](50) NOT NULL,
	[ApellidoPat] [varchar](50) NOT NULL,
	[Edad] [tinyint] NOT NULL,
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

SELECT * FROM Puesto

INSERT INTO Puesto(ID_Puesto,Sueldo)
	VALUES (1,1000);
INSERT INTO Puesto(ID_Puesto,Sueldo)
	VALUES (2,600);
INSERT INTO Puesto(ID_Puesto,Sueldo)
	VALUES (3,700);
INSERT INTO Puesto(ID_Puesto,Sueldo)
	VALUES (4,400);
INSERT INTO Puesto(ID_Puesto,Sueldo)
	VALUES (5,400);


SELECT * FROM Empleado

INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(1,1,'Mario','Gonzalez','Cura',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(2,1,'Erick','Gonzalez','Morales',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(3,2,'Daniel','Salinas','Botello',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(4,2,'Daniel','Sanez','Botello',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(5,2,'Jesus','Botello','Bot',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(6,2,'Hermes','Campos','V',18);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(7,3,'Roberto','Santos','Cortes',20);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(8,3,'Misael','Santos','Cortes',24);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(9,3,'Solo','Vino','Alacasa',24);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(10,4,'Clarck','Kent','Kalel',30);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(11,4,'Bruno','Diaz','Batm',30);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(12,4,'Steve','Jobs','Apple',37);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(13,5,'Esteban','Trabajos','Manzana',37);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(14,5,'Bruno','Noches','Bati',30);
INSERT INTO Empleado(ID_Empleado, ID_Puesto, Nombre, ApellidoMat, ApellidoPat, Edad)
	VALUES(15,5,'Brendon','Urie','Patd',27);

SELECT * FROM TipoPago

INSERT INTO TipoPago(ID_TipoPago,TipoPago)
	VALUES (1,'Tarjeta de credito');
INSERT INTO TipoPago(ID_TipoPago,TipoPago)
	VALUES (2,'Efectivo');
INSERT INTO TipoPago(ID_TipoPago,TipoPago)
	VALUES (3,'Cheque');

SELECT * FROM Bebida

INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(1,'Tecate Light',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(2,'Tecate',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(3,'Corona',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(4,'Bud Light',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(5,'X',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(6,'Heineken',20,'Bebida alcoholica',$100);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(7,'Limonada',20,'Agua sabor de limon',$50);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(8,'Limonada mineral',20,'Agua mineral con sabor de limon',$60);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(9,'Te helado',20,'Te sabor de limon',$40);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(10,'Agua',20,'Agua natural de manantial',$40);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(11,'Agua de jamaica',20,'Agua sabor de jamaica',$50);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(12,'Cafe',20,'Cafe de oya',$35);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(13,'Capuccino',20,'Cafe con cocoa',$40);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(14,'Pepsi',20,'Bebida gaseosa sabor a Cola',$50);
INSERT INTO Bebida(ID_Bebida,Nombre_Bebida,Stock,Descripcion,Costo)
	VALUES(15,'Manzanita',20,'Bebida gaseosa sabor a manzana',$50);

SELECT * FROM Mesa

INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (1,2,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (2,2,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (3,2,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (4,4,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (5,4,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (6,4,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (7,4,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (8,4,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (9,6,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (10,6,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (11,6,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (12,8,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (12,8,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (13,1,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (14,1,0);
INSERT INTO Mesa(ID_Mesa, Capacidad,Reservada)
	VALUES (15,1,0);

SELECT * FROM Comida

INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(1,'Papas',20,'Papas a la francesa con queso',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(2,'Nachos',20,'Nachos con queso',$35);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(3,'Tostadas',20,'Tostadas con salsa',$35);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(4,'Tacos de pastor',20,'Tacos al pastor',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(5,'Tacos de picadillo',20,'Tacos con picadillo',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(6,'Tacos de frijoles',20,'Tacos de frijoles',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(7,'Hamburguesa especial',20,'hamburguesa con carne, queso y jamon',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(8,'Hamburguesa hawaiana',20,'Hamburguesa con carne, queso, jamon y piña',$95);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(9,'Pizza especial',20,'Pizza con peperoni',$80);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(10,'Pizza hawaiana',20,'Pizza con jamon y piña',$100);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(11,'Boneless',20,'700 gramos de Boneless de pollo',$120);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(12,'Alitas',20,'300 gramos de Alitas de pollo',$80);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(13,'Pay de queso',20,'Pay de queso',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(14,'Helado de galleta',20,'Nieve de oreo',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(15,'Helado de chocolate',20,'Nieve de chocolate',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(16,'Helado de vainilla',20,'Nieve de vainilla',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,Costo)
	Values(17,'Browinie',20,'Pan de chocolate con nieve',$70);

SELECT * FROM Restaurant

INSERT INTO Restaurant(ID_Restaurant,Nombre,Direccion,Telefono)
	VALUES(1,'Botellos Bar','Apodaca huinala',48);
INSERT INTO Restaurant(ID_Restaurant,Nombre,Direccion,Telefono)
	VALUES(2,'Salinas Bar','Apodaca noria',83);
INSERT INTO Restaurant(ID_Restaurant,Nombre,Direccion,Telefono)
	VALUES(3,'Bar de Botellos','Av universidad',85);
INSERT INTO Restaurant(ID_Restaurant,Nombre,Direccion,Telefono)
	VALUES(4,'Blackpink','Pueblo Nuevo',21);
INSERT INTO Restaurant(ID_Restaurant,Nombre,Direccion,Telefono)
	VALUES(5,'Los estudiantes','Mars',78);

SELECT * FROM 
(SELECT Costo, COUNT(Costo) AS 'BebidasAEsePrecio'
FROM Bebida
GROUP BY Costo)
AS Beb
WHERE Beb.BebidasAEsePrecio >= 1;

SELECT TOP 1 * 
FROM
(SELECT Edad,(SELECT COUNT(Edad)
FROM Empleado AS Ed
WHERE Ed.Edad=Edad
)AS 'Cantidad'
FROM Empleado
)AS Em
WHERE Em.Cantidad>=1;

SELECT COUNT(Edad) AS 'Cantidad', MAX(Edad) AS Edades
FROM Empleado
GROUP BY Edad,Edad
HAVING MAX(Edad) >=18;

WITH SumaCosto AS(
SELECT Costo, COUNT(Costo) as [ComidaAEsePrecio]
FROM Comida
GROUP BY Costo
) SELECT * FROM SumaCosto
WHERE SumaCosto.ComidaAEsePrecio>=1

CREATE VIEW Costo_Bebida AS(
SELECT Costo AS Precio, Nombre_Bebida 
FROM Bebida
WHERE Costo > (Select MIN(Costo) AS PrecioProm
FROM Bebida)
)
SELECT * FROM Costo_Bebida

CREATE VIEW Costo_Comida AS(
SELECT Costo AS Precio, Nombre_Comida
FROM Comida
WHERE Costo > (Select MIN(Costo) AS PrecioProm
FROM Comida)
)
SELECT * FROM Costo_Comida

CREATE VIEW Empleados_Mayores AS(
SELECT Edad,Nombre + ' ' + ApellidoMat + ' ' + ApellidoPat AS NombreCompleto
FROM Empleado
WHERE Edad > (Select AVG(Edad) AS Edad 
FROM Empleado)
)
SELECT * FROM Empleados_Mayores

CREATE VIEW Sueldo_Empleados AS(
SELECT (Empleado.Nombre + ' ' + Empleado.ApellidoMat) AS NombreEmpleado,Puesto.Sueldo
FROM Empleado
LEFT JOIN Puesto ON Empleado.ID_Puesto= Puesto.ID_Puesto)
SELECT * FROM Sueldo_Empleados

CREATE VIEW  Capacidad_Mesas AS(
SELECT Capacidad AS Capacidad, ID_Mesa
FROM Mesa
WHERE Capacidad > (Select AVG(Capacidad) AS CapProm
FROM Mesa)
)
SELECT * FROM Capacidad_Mesas

DECLARE @ConsultaSQL NVARCHAR(50)
DECLARE @Tabla NVARCHAR(50)
SET @Tabla = ' Comida'
SET @ConsultaSQL = 'SELECT * FROM' + @Tabla
EXEC(@ConsultaSQL)