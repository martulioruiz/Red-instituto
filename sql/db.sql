CREATE DATABASE COLEGIO;
USE COLEGIO;





/*Tabla del colegio*/
CREATE TABLE COLEGIO
(
Id_Colegio INT PRIMARY KEY NOT NULL, 
Nombre VARCHAR(50)
);

/*Tabla del grado*/
CREATE TABLE GRADO(
Id_Grado INT PRIMARY KEY NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
Id_Colegio INT,
CONSTRAINT FK_Id_Colegio FOREIGN KEY(Id_Colegio) REFERENCES COLEGIO(Id_Colegio)
);

/*Tabla del Alumno*/
CREATE TABLE ALUMNO(
Id_Alumno INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(50),
Id_Grado INT,
CONSTRAINT FK_Id_Grado FOREIGN KEY(Id_Grado) REFERENCES GRADO(Id_Grado)
);

/*Tabla del Encargado*/
CREATE TABLE ENCARGADO(
Id_Encargado INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(50),
Telefono VARCHAR(50),
Correo VARCHAR(50),
Whatsapp VARCHAR(50),
Id_Alumno INT,
CONSTRAINT FK_Id_Alumno FOREIGN KEY(Id_Alumno) REFERENCES ALUMNO(Id_Alumno)
);

/*Tabla del CARGO DEL ADMIN*/
CREATE TABLE CARGO 
(
Id_Cargo INT PRIMARY KEY NOT NULL,
Descripcion VARCHAR(50)
);

/*Tabla del REGISTRO DEL ADMIN*/
CREATE TABLE REGISTRO
(
Id_Registro INT PRIMARY KEY NOT NULL,
Usuario VARCHAR(50),
Correo VARCHAR(50),
Pass VARCHAR(50),
Fecha DATE,
Id_Cargo INT,
Id_Colegio INT,
CONSTRAINT FK_Id_Cargo FOREIGN KEY(Id_Cargo) REFERENCES CARGO(Id_Cargo), 
CONSTRAINT FK_Id_Colegio2 FOREIGN KEY(Id_Colegio) REFERENCES COLEGIO(Id_Colegio)
);

/*Tabla del LOGIN*/
CREATE TABLE LOGIN
(
Id_Login INT PRIMARY KEY NOT NULL,
Fecha DATE,
Id_Registro INT,
CONSTRAINT FK_Id_Registro FOREIGN KEY(Id_Registro) REFERENCES REGISTRO(Id_Registro)
);

