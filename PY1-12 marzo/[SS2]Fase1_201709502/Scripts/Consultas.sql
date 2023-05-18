DROP TABLE pivote;
DROP TABLE curso;
DROP TABLE alumno;
DROP TABLE asignacion;

select * from pivote;
select * from curso;
select * from alumno;
select * from asignacion;

DELETE from pivote;
DELETE from asignacion;
DELETE from curso;
DELETE from alumno;



INSERT INTO asignacion(alumno, curso,notaLab,notaClase)
SELECT alumno.id, curso.id, pivote.notaLab, pivote.notaClase From alumno
INNER JOIN pivote ON pivote.nombre = alumno.nombre
INNER JOIN curso ON pivote.curso = curso.nombre;

SELECT ? =COUNT([nombre]) from pivote
SELECT ? =COUNT([id]) from curso
SELECT ? =COUNT([id]) from alumno
SELECT ? =COUNT([alumno]) from asignacion