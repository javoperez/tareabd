	insert into Alumnos values ('a00948868','Javier',8, 'IMT', 'M');
	insert into Alumnos values ('a00945150','JuanCarlos',8, 'ITIC', 'M');
	insert into Alumnos values ('a00948869','Oliverio',7, 'MED', 'M');
	insert into Alumnos values ('a00948866','Vicky',6, 'IMT', 'F');
	insert into Alumnos values ('a11234244','Enrique',8, 'IMT', 'M');


	insert into Especialidad values ('IMT','Mecatronica');
	insert into Especialidad values ('MED', 'Medicina');
	insert into Especialidad values ( 'ITIC', 'Informatica');


CREATE TABLE Especialidad (NumEsp VARCHAR(5) NOT NULL, NombreEsp CHAR(25), PRIMARY KEY(NumEsp));

