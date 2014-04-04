use tarea;

insert into especialidad values ("ITC", 'Ingeniero en Tecnologias Computacionales');
insert into especialidad values ("IMT", 'Ingeniero en Mecatronica');
insert into especialidad values ("IIS", 'Ingeniero Industrial y de Sistemas');
insert into especialidad values ("IBT", 'Ingeniero en Biotecnologia');
insert into especialidad values ("IDS", 'Ingeniero en Desarrollo Sustentable');
insert into especialidad values ("IMD", 'Ingeniero en Produccion Musical Digital');

insert into alumnos values ('A01129030', 'Mario Omar ', 4, "ITC", 'M');
insert into alumnos values ('A01298354', 'Manuel Antonio', 2, "IIS", 'M');
insert into alumnos values ('A02376978', 'Eloísa Beatriz', 1, "IMD", 'F');
insert into alumnos values ('A01409353', 'María Rosa', 7, "IMT", 'F');
insert into alumnos values ('A09913254', 'Juan María', 5, "IDS", 'M');
insert into alumnos values ('A05724303', 'Daniel José', 4, "IBT", 'M');
insert into alumnos values ('A01098737', 'Julio César', 2, "ITC", 'M');
insert into alumnos values ('A02274029', 'Carolina Emilia', 4, "IMT", 'F');
insert into alumnos values ('A01930752', 'Pablo Ramiro', 2, "IDS", 'M');
insert into alumnos values ('A08325673', 'Ana Lía', 3, "IMD", 'F');
insert into alumnos values ('A19082512', 'Rita Raquel', 5, "IIS", 'F');
insert into alumnos values ('A10928301', 'Noel Hugo Díaz Baz', 6, "IMT", 'M');
insert into alumnos values ('A00948868','Javier',8, 'IMT', 'M');
insert into alumnos values ('A00945150','JuanCarlos',8, 'ITC', 'M');
insert into alumnos values ('A00948866','Vicky',6, 'IMT', 'F');
insert into alumnos values ('A11234244','Enrique',8, 'IMT', 'M');


insert into profesor values ('L01', 'Javier Cartujano', 'Doctorado', 20000);
insert into profesor values ("L02", 'Jenny Walls', "Maestria", 30000);	
insert into profesor values ('L03', 'Gerardo Reyes', 'Maestria', 15000);
insert into profesor values ("L04", 'Alejandra Reyes', 'Maestria', 25000);
insert into profesor values ("L05", 'Fawas Beder', 'Doctorado', 30000);


insert into materia values ("BD", 'Base de Datos', 'Web', "ITC");
insert into materia values ("MAT3", 'Matemáticas3', 'Tronco Común', "IMT");
insert into materia values ("EST", 'Estructura de Datos', 'Progra', "ITC");
insert into materia values ("BIO", 'Biologia', 'Naturales', "IBT");
insert into materia values ("MNI", 'Métodos Numéricos', 'Tronco Común', "IMT");


insert into horarios values("BD", 'G01', 'L01', 'Lunes', "16:30:00", 'N403');
insert into horarios values ("MAT3", 'G02', 'L02', "Martes","8:30:00", 'N405');
insert into horarios values ("EST", 'G03', 'L03', "Miercoles","10:30:00", 'N300');;
insert into horarios values ("BIO", 'G04', 'L04', "Jueves","12:30:00", 'N305');
insert into horarios values ("MNI", 'G05', 'L05', "Viernes","1:00:00", 'N307');


insert into calificaciones values("A00948868", "BD", "G01", "Enero-Mayo", 100);
insert into calificaciones values ('A01129030', 'BD ',"G01", "Enero-Mayo", 90);
insert into calificaciones values ('A01298354', 'BD', "G01", "Enero-Mayo", 50);
insert into calificaciones values ('A02376978', "MAT3", 'G02', "Enero-Mayo", 99);
insert into calificaciones values ('A01409353', "MAT3", 'G02', "Enero-Mayo", 60);
insert into calificaciones values ('A09913254', "MAT3", 'G02', "Enero-Mayo", 70);
insert into calificaciones values ('A05724303', "MAT3", 'G02', "Enero-Mayo", 40);
insert into calificaciones values ('A01098737', "EST", 'G03', "Enero-Mayo", 80);
insert into calificaciones values ('A02274029', "EST", 'G03', "Enero-Mayo", 60);
insert into calificaciones values ('A01930752', "EST", 'G03', "Enero-Mayo", 70);
insert into calificaciones values ('A08325673', "EST", 'G03', "Enero-Mayo", 88);
insert into calificaciones values ('A19082512', "BIO", 'G04', "Enero-Mayo", 90);
insert into calificaciones values ('A10928301', "BIO", 'G04', "Enero-Mayo", 50);
insert into calificaciones values ('A00945150', "BIO", 'G04', "Enero-Mayo", 60);
insert into calificaciones values ('A00948866',"MNI", 'G05', "Enero-Mayo", 65);
insert into calificaciones values ('A11234244',"MNI", 'G05', "Enero-Mayo", 66);


### AGREGO MAS calIFIcaciOnes para corregir de string a entero

insert into calificaciones values("A00948868", "MAT3", 'G02', "Enero-Mayo", 100);
insert into calificaciones values ('A01129030',"MAT3", 'G02', "Enero-Mayo", 90);
insert into calificaciones values ('A01298354', "MAT3", 'G02', "Enero-Mayo", 80);
insert into calificaciones values ('A02376978',"BD", "G01", "Enero-Mayo", 80);
insert into calificaciones values ('A01409353',"BD", "G01", "Enero-Mayo", 70);
insert into calificaciones values ('A09913254',"BD", "G01", "Enero-Mayo", 66);
insert into calificaciones values ('A05724303',"BD", "G01", "Enero-Mayo", 65);
insert into calificaciones values ('A01098737', "BD", "G01",  "Enero-Mayo", 90);
insert into calificaciones values ('A02274029', "BD", "G01",  "Enero-Mayo", 83);
insert into calificaciones values ('A01930752', "BD", "G01",  "Enero-Mayo", 90);
insert into calificaciones values ('A08325673', "BD", "G01",  "Enero-Mayo", 54);
insert into calificaciones values ('A19082512', "EST", 'G03', "Enero-Mayo", 60);
insert into calificaciones values ('A10928301', "EST", 'G03', "Enero-Mayo", 59);
insert into calificaciones values ('A00945150', "EST", 'G03', "Enero-Mayo", 53);
insert into calificaciones values ('A00948866',"BIO", 'G04', "Enero-Mayo", 93);
insert into calificaciones values ('A11234244',"BIO", 'G04', "Enero-Mayo", 69);
