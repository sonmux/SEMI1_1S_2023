create DATABASE clase4

use clase4;

CREATE TABLE Temporal(
	carne VARCHAR(15),
	nombre VARCHAR(50),
	llevalab varchar(2),
	posibleNota varchar(3)
);

CREATE TABLE Alumno(
	carne INT PRIMARY KEY,
	nombre VARCHAR(50),
	llevalab varchar(2),
	Nota varchar(3)
);

SELECT * FROM Temporal;
SELECT * FROM Alumno;

DELETE FROM Temporal;
DELETE FROM Alumno;

DROP TABLE Temporal;
DROP TABLE Alumno;
