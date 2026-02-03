USE AlgebraRelacional;

CREATE TABLE Estudiante (
  id INT PRIMARY KEY IDENTITY ,
  nombre VARCHAR(50),
  edad INT,
  promedio FLOAT
);


INSERT INTO Estudiante VALUES ( 'Juan', 20, 8.5);
INSERT INTO Estudiante VALUES ( 'María', 21, 9.0);
INSERT INTO Estudiante VALUES ( 'Pedro', 19, 7.5);
INSERT INTO Estudiante VALUES ( 'Ana', 22, 9.2);
INSERT INTO Estudiante VALUES ( 'Luis', 20, 8.8);


SELECT * FROM Estudiante;

	EXEC sp_help Estudiante;


INSERT INTO Estudiante (nombre, edad, promedio) VALUES ('EJEMPLO', 20, 90);



--SELECT
CREATE PROCEDURE GetEstudiantes
AS BEGIN

SELECT Estudiante.id, Estudiante.nombre, Estudiante.edad, Estudiante.promedio
FROM Estudiante

END;
--//SELECT


--INSERT
CREATE PROCEDURE CreateEstudiante
(@nombreEstudiante VARCHAR(50),
 @edad INT,
 @promedio FLOAT) AS
BEGIN

INSERT INTO Estudiante (nombre, edad, promedio) VALUES (@nombreEstudiante, @edad, @promedio);

END
--//INSERT

--UPDATE
CREATE PROCEDURE ModifyEstudiante
(@id INT,
 @nombreEstudiante VARCHAR(50),
 @edad INT,
 @promedio FLOAT) AS
BEGIN

UPDATE Estudiante SET nombre = @nombreEstudiante,
					  edad = @edad,
					  promedio = @promedio
				  WHERE id = @id;

END
--//UPDATE


--DELETE
CREATE PROCEDURE RemoveEstudiante
(@id INT) AS
BEGIN

DELETE FROM Estudiante WHERE id = @id;

END

--//DELETE