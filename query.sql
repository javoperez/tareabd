1. Obtener nombres de profesores que imparten alguna materia de especialidad 
cuyo nombre es  Ingeniero en Tecnologias Computacionales , ordenados por 
nombre. 

select nombreProf from profesor
 where numProf=any(select numProf from horarios 
 	where numMat= any(select numMat from materia
 	 where numEsp=any(select numEsp from especialidad
 	 	where nombreEsp= 'Ingeniero en Tecnologias Computacionales'))) order by nombreProf;
 
2. Obtener parejas de nombre de profesor y nombre de alumno, tal que el 
profesor imparta alguna materia al alumno, ordenar por nombre de profesor 
y nombre de alumno 

select nombreProf from profesor where numProf in (select)
 
3. Obtener nombres de alumnos que lleven actualmente la materia de base de 
datos. 

4. Obtener los nombres de los profesores que imparten actualmente a todos los
alumnos de la especialidad cuyo nombre es Licenciado en Sistemas 
computacionales y cursen el quinto semestre. 
 
5. Obtener los nombres de los alumnos que hayan aprobado más de 10 
materias. Ordenarlos en orden alfabético. 
 
6. Obtener nombre de materia y grupo de la especialidad Licenciado en 
Sistemas Computacionales. 
 
7. Obtener una consulta que indique el nombre de la materia y la cantidad 
alumnos inscritos en dicha especialidad. 
 
8. Obtener una consulta que obtenga nombre de especialidad, semestre y 
nombre del alumno indicando cuantas materias ha aprobado. Ordenar por 
especialidad, semestre y nombre del alumno. 
 
9. Obtener una consulta que obtenga el nombre del profesor y el número de 
alumnos que tiene en el semestre actual. 
 
10. Obtener una consulta que obtenga el número de materias que imparte el 
profesor. 
