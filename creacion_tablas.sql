create database tarea;
use tarea;

create table especialidad (
                                numEsp varchar(5) not null,
                nombreEsp varchar(100),
                PRIMARY KEY (numEsp));
                
create table alumnos (
                                numAlum varchar(20) not null,
                nombreAlum varchar(100),
                semestre int(5),
                numEsp varchar(5) not null,
                                sexo varchar(1),
                                FOREIGN KEY (numEsp) REFERENCES especialidad (numEsp),
                PRIMARY KEY (numAlum));
create table profesor (
                                numProf varchar(20) not null,
                nombreProf varchar(100),
                grado varchar(20),
                sueldo numeric,
                PRIMARY KEY (numProf));
                
create table materia (
                                numMat varchar(5),
                nombreMat varchar(100),
                creditos varchar(20),
                numEsp varchar(10) not null,
                                FOREIGN KEY (numEsp) REFERENCES especialidad (numEsp),
                PRIMARY KEY (numMat));


create table horarios (
                                numMat varchar(5) not null,
                grupo varchar(20) not null,
                numProf varchar(20) not null,
                dia varchar(20),
                                hora time,
                                salon varchar(10),
                                foreign key (numProf) REFERENCES profesor (numProf),
                                FOREIGN KEY (numMat) REFERENCES materia (numMat),
                PRIMARY KEY (numMat, grupo));
               
create table calificaciones (
                                numAlum varchar(20) not null,
                numMat varchar (5) not null,
                grupo varchar(20) not null,
                periodo varchar(20) not null,
                                calificacion int(10), PRIMARY KEY (numAlum, numMat, grupo, periodo),
                                FOREIGN KEY(numAlum) REFERENCES alumnos(numAlum),
                                FOREIGN KEY(numMat, grupo) REFERENCES horarios(numMat,grupo));


