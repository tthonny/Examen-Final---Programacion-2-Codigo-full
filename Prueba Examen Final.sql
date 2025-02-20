CREATE DATABASE VIAJEROS
GO
USE VIAJEROS
GO
/**
	Tabla Usuarios 
	Tabla RegistroViajeros
	Tabla EntradaViajeros
	Tabla SalidaViajeros
     

**/

CREATE TABLE USUARIOS 

(
ID INT IDENTITY (100,5) PRIMARY KEY,
EMAIL VARCHAR(50) UNIQUE NOT NULL,
CLAVE VARCHAR(30) UNIQUE NOT NULL,

)
GO

CREATE TABLE RegistroViajeros
(
 CEDULA VARCHAR(20) UNIQUE ,
NOMBRE VARCHAR(50) UNIQUE NOT NULL,
APELLIDO1 VARCHAR(50) UNIQUE NOT NULL,
APELLIDO2 VARCHAR(50) UNIQUE NOT NULL,
UBICACION VARCHAR(30) UNIQUE NOT NULL,
EDAD INT CHECK (EDAD > 18) 
)
GO

CREATE TABLE EntradaViajeros
(
 
 CEDULA VARCHAR(20) UNIQUE ,
 PAISPROCEDE VARCHAR(50) UNIQUE NOT NULL,
 FECHADEENTRADA VARCHAR(50) UNIQUE NOT NULL,
 VISA VARCHAR(50) UNIQUE NOT NULL,

)
GO

CREATE TABLE SalidaViajeros
(
 
 CEDULA VARCHAR(20) UNIQUE ,
 PAISDESALIDA VARCHAR(50) UNIQUE NOT NULL,
 FECHADESALIDA VARCHAR(50) UNIQUE NOT NULL,
 VISA VARCHAR(50) UNIQUE NOT NULL,

)
GO


