use universidad;

SELECT * from profesor 


/*
 Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. 
 El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. 
 El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. 
 El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre. 
 */

select d.nombre as nombre_departamento , p.apellido1 as primer_apellido, p.apellido2 as Segundo_apellido, p.nombre as nombre_profesor 
from profesor p 
right join departamento d on d.id =p.id_departamento;

-- Devuelve un listado con los profesores que no están asociados a un departamento.

select p.nombre from profesor p where p.id_departamento is NULL;

-- Devuelve un listado con los departamentos que no tienen profesores asociados.

select d.nombre as Nombre_departamento from profesor p  inner join departamento d on p.id_departamento != d.id; 

-- Devuelve un listado con los profesores que no imparten ninguna asignatura.

select p.nombre from asignatura a right join profesor p on p.id = a.id_profesor ;


-- Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. 
-- El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.


-- Devuelve el número total de alumnas que hay.

select sexo, count(sexo)  from alumno where sexo = "m" group by(sexo);

-- Calcula cuántos alumnos nacieron en 1999.
select  count(fecha_nacimiento) as Numero_alum_nac_1999 from alumno where year(fecha_nacimiento) = '1999';

/* 
 Calcula cuántos profesores hay en cada departamento. 
 El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. 
 El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
 */

select d.nombre as nombre_departamento, count(p.id) as numero_profesores
from profesor p  
join departamento d on d.id = p.id_departamento group by(d.nombre) ORDER by(count(p.id)) DESC ;


/*
 Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. 
 Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. 
 Estos departamentos también tienen que aparecer en el listado. 
 */
select d.nombre as nombre_departamento, count(p.id) as numero_profesores
from profesor p  
right join departamento d on d.id = p.id_departamento group by(d.nombre) ORDER by(count(p.id)) DES =C ; 

/*
 Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. 
 Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. 
 El resultado deberá estar ordenado de mayor a menor por el número de asignaturas. 
 */
select g.nombre, count(a.id) from asignatura a left join grado g on g.id= a.id_grado group by(a.id);

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos 
-- y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.

/*
 Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. 
 El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. 
 Ordene el resultado de mayor a menor por el número total de crédidos. 
 */


/*
 Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. 
 El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados. 
 */

/*
 Devuelve un listado con el número de asignaturas que imparte cada profesor. 
 El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. 
 El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. 
 El resultado estará ordenado de mayor a menor por el número de asignaturas. 
 */

-- Devuelve todos los datos del alumno más joven.

select * from alumno where year(fecha_nacimiento) >= 2000;

-- Devuelve un listado con los profesores que no están asociados a un departamento.
select p.nombre from profesor p where p.id_departamento is NULL;

-- Devuelve un listado con los departamentos que no tienen profesores asociados.

-- Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.

-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.

