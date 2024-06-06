INSERT INTO Division (anio,curso)
VALUES (5,"B"),
      (5,"D");
	  
INSERT INTO Profesor (nombre, apellido)
VALUES ("Andres", "Navarro"),("Tomas", "Mayorga"),("Federico", "Villace"),("Maximiliano", "Urso"),("Eduardo", "Menstrovich"),("Jose", "Albornoz"),("Alejandro", "Salomon"),
("Enrico", "Rovaletti"),
("Nahuel", "Aruni");

INSERT INTO Materias(nombre,anio)
VALUES ("Diseño Multimedial",5),
("Diseño de Software",5),
("Programacion Web",5),
("Administracion y Gestion de Base de Datos", 5),
("Dispositivos y Electronicos Programables",5),
("Redes de Datos",5);

INSERT INTO Asignacion(materia_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM Materias
 WHERE nombre = "Programacion Web"),(SELECT profesor_id FROM Profesor
 WHERE nombre = "Federico"),(SELECT division_id FROM Division
 WHERE curso = "D" AND anio = 5));
 
 
INSERT INTO Asignacion(materia_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM Materias
 WHERE nombre = "Diseño Multimedial"),(SELECT profesor_id FROM Profesor
 WHERE nombre = "Enrico"),(SELECT division_id FROM Division
 WHERE curso = "D" AND anio = 5));

 INSERT INTO Asignacion(materia_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM Materias
 WHERE nombre like "Diseño de software%"),(SELECT profesor_id FROM Profesor
 WHERE apellido = "Navarro"),(SELECT division_id FROM Division
 WHERE curso = "D" AND anio = 5));
 
INSERT INTO Asignacion(materia_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM Materias
 WHERE nombre like "Redes de Datos%"),(SELECT profesor_id FROM Profesor
 WHERE nombre = "Jose"),(SELECT division_id FROM Division
 WHERE curso = "D" AND anio = 5));

 