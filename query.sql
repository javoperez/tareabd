1. Obtener nombres de profesores que imparten alguna materia de especialidad 
cuyo nombre es  Ingeniero en Tecnologias Computacionales , ordenados por 
nombre. 

select nombreProf from profesor
 where numProf=any(select numProf from horarios 
 	where numMat= any(select numMat from materia
 	 where numEsp=any(select numEsp from especialidad
 	 	where nombreEsp= ' Ingeniero en Tecnologias Computacionales'))) order by nombreProf;
 
2. Obtener parejas de nombre de profesor y nombre de alumno, tal que el 
profesor imparta alguna materia al alumno, ordenar por nombre de profesor 
y nombre de alumno 

select nombreProf, nombreAlum from profesor join horarios on profesor.numProf= horarios.numProf join calificaciones 
on horarios.numMat= calificaciones.numMat join alumnos on calificaciones.numAlum= alumnos.numAlum order by nombreProf, nombreAlum;

3. Obtener nombres de alumnos que lleven actualmente la materia de base de 
datos. 
select nombreAlum from alumnos where numAlum in (select numAlum from calificaciones where numMat in(select numMat from materia where nombreMat="Base de Datos"));

4. Obtener los nombres de los profesores que imparten actualmente a todos los
alumnos de la especialidad cuyo nombre es Ingeniero en Tecnologias Computacionales y cursen el segundo semestre. 

select nombreProf from profesor where numProf= any(
select numProf from horarios 
where numMat= any(select numMat from calificaciones where 
numAlum= any(select numAlum from alumnos where (semestre= 8 and numEsp= 'ITC'))));


5. Obtener los nombres de los alumnos que hayan aprobado más de 1
materia. Ordenarlos en orden alfabético. 
# El primero despliega nombres de alumnos y su calificacion:
select nombreAlum, calificacion from alumnos join calificaciones on calificaciones.numAlum=alumnos.numAlum;

#El segundo cuenta cuantos están aprobados
select nombreAlum, count(calificacion) from alumnos join calificaciones on calificaciones.numAlum= alumnos.numAlum where(calificaciones.calificacion >= 70) group by nombreAlum ;

6. Obtener nombre de materias y grupo de la especialidad Ingeniero en Sistemas Computacionales. 
select distinct nombreMat, grupo from horarios join materia on horarios.numMat = materia.numMat join alumnos on alumnos.numEsp = materia.numEsp where materia.numEsp = "ITC";
select distinct nombreMat, grupo from horarios join materia on horarios.numMat = materia.numMat join especialidad on materia.numEsp= especialidad.numEsp where nombreEsp= "Ingeniero en Tecnologias Computacionales";

7. Obtener una consulta que indique el nombre de la materia y la cantidad 
alumnos inscritos en dicha especialidad. 
# La primera solo saca una tabla de nombre de Materia con sus alumnos inscritos
select nombreMat, nombreAlum from alumnos join materia on alumnos.numEsp= materia.numEsp join horarios on materia.numMat= horarios.numMat where alumnos.numEsp= "ITC";
#ESTA ES LA BUENA:
#Al agregar el count cuento los alumnos por materia y además agrego el group by al final para desplegar las materias que hay.
select nombreMat, count(distinct nombreAlum) from alumnos join materia on alumnos.numEsp= materia.numEsp join horarios on materia.numMat= horarios.numMat where alumnos.numEsp= "ITC" group by nombreMat;

8. Obtener una consulta que obtenga nombre de especialidad, semestre y 
nombre del alumno indicando cuantas materias ha aprobado. Ordenar por 
especialidad, semestre y nombre del alumno. 

select nombreEsp, semestre, nombreAlum, count(calificacion) as "reprobada" from alumnos join especialidad on alumnos.numEsp= especialidad.numEsp join calificaciones on alumnos.numAlum=calificaciones.numAlum where calificacion<70 group by nombreAlum;
 
9. Obtener una consulta que obtenga el nombre del profesor y el número de 
alumnos que tiene en el semestre actual. 
# La primera solo saca una tabla de nombre del nombre de profesor y nombre de alumnos
select nombreProf, nombreAlum from profesor join horarios on profesor.numProf= horarios.numProf join calificaciones
on horarios.grupo= calificaciones.grupo join alumnos on calificaciones.numAlum= alumnos.numAlum;

# esta es la buena: 
select nombreProf, count(nombreAlum) from profesor join horarios on profesor.numProf= horarios.numProf join calificaciones
on horarios.grupo= calificaciones.grupo join alumnos on calificaciones.numAlum= alumnos.numAlum group by nombreProf;
 
10. Obtener una consulta que obtenga el número de materias que imparte el 
profesor. 
#El primero dice que materias dan
select nombreProf, nombreMat from profesor join horarios on profesor.numProf=horarios.numProf join materia on horarios.numMat= materia.numMat;
# El segundo dice cuantas materias dan
select nombreProf, count(nombreMat) from profesor join horarios on profesor.numProf=horarios.numProf join materia on horarios.numMat= materia.numMat group by nombreProf;