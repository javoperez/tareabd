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
opcion B:
select nombreProf from profesor where numProf in (select numProf from horarios where numMat in(select numMat from materia where numEsp in (select numEsp from alumnos where nombreAlum= "Mario Omar")))
##########################  ESTA ESTA MAL!!!!!!!!!!!
 
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
##########################  ESTA ESTA MAL!!!!!!!!!!!
select count(*) from calificaciones where numAlum= "A00948868" and calificacion>70;

 
6. Obtener nombre de materias y grupo de la especialidad Ingeniero en 
Sistemas Computacionales. 
select distinct nombreMat, grupo from horarios join materia on horarios.numMat = materia.numMat join alumnos on alumnos.numEsp = materia.numEsp where materia.numEsp = "ITC";

7. Obtener una consulta que indique el nombre de la materia y la cantidad 
alumnos inscritos en dicha especialidad. 
 
8. Obtener una consulta que obtenga nombre de especialidad, semestre y 
nombre del alumno indicando cuantas materias ha aprobado. Ordenar por 
especialidad, semestre y nombre del alumno. 
 
9. Obtener una consulta que obtenga el nombre del profesor y el número de 
alumnos que tiene en el semestre actual. 
 
10. Obtener una consulta que obtenga el número de materias que imparte el 
profesor. 
