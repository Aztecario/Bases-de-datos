

USE db_estudiantes;

CREATE TABLE tbl_estudiantes(
    id_estudiante INT(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    id_carrera INT NOT NULL,
    semestre INT(2) NOT NULL,
    telefono_celular INT(10) NOT NULL,
    telefono_fijo INT(8) NULL,
    id_genero INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    saldo_deuda DECIMAL(10,2),
    PRIMARY KEY(id_estudiante),
    FOREIGN KEY(id_carrera) REFERENCES tbl_carrera(id_carrera),
    FOREIGN KEY(id_genero) REFERENCES tbl_genero(id_genero)
);

CREATE TABLE tbl_genero(
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_genero)
);

CREATE TABLE tbl_carrera(
    id_carrera INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    id_facultad INT NOT NULL,
    PRIMARY KEY(id_carrera),
    FOREIGN KEY(id_facultad) REFERENCES tbl_facultad(id_facultad)
);

CREATE TABLE tbl_facultad(
    id_facultad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20),
    PRIMARY KEY(id_facultad)
);