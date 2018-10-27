USE [Practica 8]

CREATE TABLE Comida (ID_Comida varchar(50), Nombre_Comida varchar(50), Stock tinyint, Descripcion varchar(100), precio money)
CREATE TABLE ComidaVendida (ID_Comida varchar(50), Nombre varchar(50))

INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(1,'Papas',20,'Papas a la francesa con queso',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(2,'Nachos',20,'Nachos con queso',$35);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(3,'Tostadas',20,'Tostadas con salsa',$35);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(4,'Tacos de pastor',20,'Tacos al pastor',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(5,'Tacos de picadillo',20,'Tacos con picadillo',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(6,'Tacos de frijoles',20,'Tacos de frijoles',$40);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(7,'Hamburguesa especial',20,'hamburguesa con carne, queso y jamon',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(8,'Hamburguesa hawaiana',20,'Hamburguesa con carne, queso, jamon y piña',$95);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(9,'Pizza especial',20,'Pizza con peperoni',$80);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(10,'Pizza hawaiana',20,'Pizza con jamon y piña',$100);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(11,'Boneless',20,'700 gramos de Boneless de pollo',$120);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(12,'Alitas',20,'300 gramos de Alitas de pollo',$80);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(13,'Pay de queso',20,'Pay de queso',$70);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(14,'Helado de galleta',20,'Nieve de oreo',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(15,'Helado de chocolate',20,'Nieve de chocolate',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(16,'Helado de vainilla',20,'Nieve de vainilla',$30);
INSERT INTO Comida(ID_Comida,Nombre_Comida,Stock,Descripcion,precio)
	Values(17,'Browinie',20,'Pan de chocolate con nieve',$70);

--Cuando eliminamos una comida, se ira a comida vendida

CREATE TRIGGER Comida_Vendida
ON Comida
AFTER DELETE 
AS
DECLARE @ID_Comida varchar(50)
SELECT @ID_Comida = ID_Comida FROM deleted
DECLARE @Nombre varchar (50)
SELECT @Nombre = Nombre_Comida FROM deleted
INSERT INTO ComidaVendida VALUES (@ID_Comida,@Nombre)
GO

DELETE FROM Comida WHERE ID_Comida = 1


SELECT * FROM ComidaVendida
SELECT * FROM Comida

CREATE TABLE Mesero(ID_Mesero tinyint, Nombre varchar(50), Appellido varchar(50))
CREATE TABLE Mesa(ID_Mesa tinyint, ID_Mesero tinyint, Capacidad tinyint)

--Cuando un nuevo mesero entre a trabajar, le asignaremos una nueva mesa

CREATE TRIGGER MeseroNuevo
ON Mesero
AFTER INSERT
AS
DECLARE @ID_Mesero tinyint
SELECT @ID_Mesero = ID_Mesero FROM inserted
DECLARE @Mesa INT;
DECLARE @mayor INT;
DECLARE @menor INT
SET @menor = 1 
SET @mayor = 100 
SELECT @Mesa = ROUND(((@mayor - @menor -1) * RAND() + @menor), 0)
DECLARE @Capacidad INT;
DECLARE @Mayor1 INT;
DECLARE @Menor2 INT
SET @Mayor1 = 1 
SET @Menor2 = 10 
SELECT @Capacidad = ROUND(((@Mayor1 - @Menor2) * RAND() + @Menor2), 0)
INSERT INTO Mesa VALUES (@Mesa,@ID_Mesero,@Capacidad)
GO

INSERT INTO Mesero(ID_Mesero, Nombre, Appellido)
	VALUES(1,'Mario','Gonzalez');
INSERT INTO Mesero(ID_Mesero, Nombre, Appellido)
	VALUES(2,'Erick','Gonzalez');
INSERT INTO Mesero(ID_Mesero, Nombre, Appellido)
	VALUES(3,'Daniel','Salinas');
INSERT INTO Mesero(ID_Mesero, Nombre, Appellido)
	VALUES(4,'Daniel','Sanez');
INSERT INTO Mesero(ID_Mesero, Nombre, Appellido)
	VALUES(5,'Jesus','Botello');

	
SELECT * FROM Mesero
SELECT * FROM Mesa

CREATE TABLE Cliente(Nombre varchar(50), Appellido varchar(50))

--Cuando se intente actualizar, se mostrara toda la tabla de clientes
CREATE TRIGGER Clientes
ON Cliente
INSTEAD OF UPDATE 
AS
SELECT * FROM Cliente
GO

INSERT INTO Cliente(Nombre, Appellido )
	VALUES('MARIO', 'GONZALEZ');

UPDATE Cliente
SET Appellido = 'Cura'
WHERE Nombre = 'MARIO';

SELECT * FROM Cliente