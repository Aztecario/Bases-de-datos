CREATE DATABASE db_estudiantes;

USE bd_Productos;

CREATE TABLE tbl_estudiantes(
    id INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    carrera INT(10) NOT NULL,
    semestre INT(2) NOT NULL,
    telefono_celular INT(10) NOT NULL,
    telefono_fijo INT(8) NULL,
    genero VARCHAR(10) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    saldo_deuda DECIMAL(10,2),
    PRIMARY KEY(id)
)

CREATE TABLE tbl_genero(
    id INT NOT NULL,
    nombre VARCHAR(30)
    PRIMARY KEY(id)
)

CREATE TABLE tbl_carrera(
    id INT NOT NULL,
    nombre VARCHAR(20),
    facultad VARCHAR(20),
    PRIMARY KEY(id)
)

CREATE TABLE tbl_facultad(
    id INT NOT NULL,
    nombre VARCHAR(20),
    PRIMARY KEY(id)
)