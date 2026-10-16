CREATE DATABASE apihibernate;

USE apihibernate;

SELECT * FROM pelicula;

CREATE TABLE pelicula (
     id BIGINT NOT NULL AUTO_INCREMENT,
     nombre VARCHAR(100) NOT NULL,
     director VARCHAR(100) NOT NULL,
     genero VARCHAR(100) NOT NULL,
     duracion INT NOT NULL,
     disponible BIT NOT NULL,
     PRIMARY KEY (id)
 );

INSERT INTO pelicula (nombre, director, genero, duracion, disponible) 
VALUES
('Interstellar', 'Christopher Nolan', 'Ciencia Ficcion', 169, 1),
('Avatar', 'James Cameron', 'Ciencia Ficcion', 162, 1),
('El Pianista', 'Roman Polanski', 'Drama', 150, 1),
('El Padrino', 'Francis Ford Coppola', 'Drama', 175, 0),
('Mad Max', 'George Miller', 'Accion', 120, 1),
('Pelicula de prueba', 'Director Prueba', 'Drama', 90, 1);

SELECT * FROM pelicula;

SELECT * FROM pelicula WHERE genero = 'Drama';
SELECT * FROM pelicula WHERE disponible = 1;
SELECT * FROM pelicula WHERE disponible = 0;

UPDATE pelicula SET duracion = 165, disponible = 0 WHERE id = 2;

DELETE FROM pelicula WHERE id = 6;

SELECT * FROM pelicula;

DESCRIBE pelicula;
SELECT * FROM pelicula;