CREATE DATABASE escuela;
use escuela;

CREATE TABLE Alumnos (NumAlum VARCHAR(12) NOT NULL, NombreAlum CHAR(20) , 
Sem numeric , NumEsp CHAR(5) , Sexo CHAR(1) , PRIMARY KEY (NumAlum));

CREATE TABLE Especialidad (NumEsp VARCHAR(5) NOT NULL, NombreEsp CHAR(25), PRIMARY KEY(NumEsp));

CREATE TABLE Profesor (NumProf integer NOT NULL, NombreProf CHAR(20), Sueldo integer, Grado CHAR(20),PRIMARY KEY(NumProf));

CREATE TABLE Materia (NumMat CHAR(5) NOT NULL, NombreMat CHAR(20), Creditos integer, numEsp VARCHAR(5), PRIMARY KEY (NumMat));

CREATE TABLE Horarios (NumMat char(5) NOT NULL , Grupo integer NOT NULL, NumProf integer, Dia CHAR (15), 
	Hora integer, Salon integer, PRIMARY KEY (NumMat, Grupo),FOREIGN KEY(NumMat) REFERENCES Materia(NumMat));

CREATE TABLE Calificaciones (NumAlum VARCHAR(12) NOT NULL, NumMat CHAR (5) NOT NULL, Grupo integer NOT NULL, Periodo CHAR(20) NOT NULL, 
	Calificacion integer, PRIMARY KEY(NumAlum,NumMat,Grupo,Periodo), 
	FOREIGN KEY (NumAlum) REFERENCES Alumnos(NumAlum), 
	FOREIGN KEY (NumMat, Grupo) REFERENCES Horarios (NumMat,Grupo));







