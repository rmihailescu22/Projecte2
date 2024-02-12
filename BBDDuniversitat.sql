CREATE DATABASE bbdduniversitat;

USE bbdduniversitat;

CREATE USER 'rmihailescu22'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'rmihailescu22'@'localhost' WITH GRANT OPTION;
CREATE USER 'rmihailescu22'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'rmihailescu22'@'%' WITH GRANT OPTION;

CREATE TABLE Profesor (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    direccion VARCHAR(100)
);

INSERT INTO Profesor (dni, nombre, apellidos, direccion)
VALUES ('12345678Z', 'Juan', 'Pérez', 'Calle Falsa 123');

SELECT * FROM Profesor WHERE LENGTH(nombre) >= 7;

DELETE FROM Estudiante WHERE dni = '87654321A';

SELECT * FROM nombre_tabla;

CREATE TABLE Profesor (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    direccion VARCHAR(100)
);

CREATE TABLE Asignatura (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Profesor_Asignatura (
    dni_profesor VARCHAR(9),
    codigo_asignatura VARCHAR(10),
    PRIMARY KEY (dni_profesor, codigo_asignatura),
    FOREIGN KEY (dni_profesor) REFERENCES Profesor(dni),
    FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codigo)
);

CREATE TABLE Estudiante (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(15),
    fecha_nacimiento DATE,
    numero_expediente VARCHAR(10),
    edad INT,
    email VARCHAR(100)
);

CREATE TABLE Estudiante_Asignatura (
    dni_estudiante VARCHAR(9),
    codigo_asignatura VARCHAR(10),
    PRIMARY KEY (dni_estudiante, codigo_asignatura),
    FOREIGN KEY (dni_estudiante) REFERENCES Estudiante(dni),
    FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codigo)
);

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('12345678Z', 'Juan', 'Pérez', 'Calle Falsa 123', '123456789', '2000-01-01', 'EXP123', 21, 'juan.perez@example.com');

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('12345678A', 'Maria', 'García', 'Carrer Major 12', '654321098', '1995-03-15', '583', 29, 'maria.garcia@gmail.com');

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('23456789B', 'Carlos', 'Martínez', 'Avinguda Diagonal 34', '657890432', '1988-07-20', '584', 36, 'carlos.martinez@gmail.com');

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('34567890C', 'Ana', 'Fernández', 'Carrer de Sants 56', '658432109', '1992-10-05', '585', 32, 'ana.fernandez@gmail.com');

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('45678901D', 'David', 'González', 'Passeig de Gràcia 78', '654890321', '1997-12-30', '586', 27, 'david.gonzalez@gmail.com');

INSERT INTO Estudiante (dni, nombre, apellidos, direccion, telefono, fecha_nacimiento, numero_expediente, edad, email) 
VALUES ('56789012E', 'Cristina', 'López', 'Carrer de la Marina 90', '657432198', '1996-06-15', '587', 28, 'cristina.lopez@gmail.com');


SELECT * FROM Estudiante WHERE edad > 30 ORDER BY edad ASC;



-- Insertar valores en la tabla Clases
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (1, '12345678A', '12345678A');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (2, '23456789B', '23456789B');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (3, '34567890C', '34567890C');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (4, '45678901D', '45678901D');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (5, '58721690Z', '58721690Z');

-- Insertar valores en la tabla Clases
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (1, '12345678A', '12345678A');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (2, '23456789B', '23456789B');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (3, '34567890C', '34567890C');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (4, '45678901D', '45678901D');
INSERT INTO Clases (id_clase, dni_estudiante, dni_presidente) VALUES (5, '56789012E', '56789012E');

-- Insertar valores en la tabla Bicicletas
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (1, '12345678A', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (2, '23456789B', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (3, '34567890C', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (4, '45678901D', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (5, '56789012E', '2024-01-01', '2024-12-31');




-- Insertar valores en la tabla Bicicletas
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (1, '12345678A', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (2, '23456789B', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (3, '34567890C', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (4, '45678901D', '2024-01-01', '2024-12-31');
INSERT INTO Bicicletas (id_bicicleta, dni_estudiante, fecha_inicio, fecha_fin) VALUES (5, '58721690Z', '2024-01-01', '2024-12-31');

