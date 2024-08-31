--creacion de bases de datos

CREATE DATABASE bd_Productos;

--usar la base de datos

USE bd_Productos;

--Crear una tabla

CREATE TABLE tbl_producto(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    categoria VARCHAR(25) NOT NULL,
    email VARCHAR (25) NOT NULL,
    PRIMARY KEY(id),
)

CREATE TABLE tbl_clientes(
    id INT NOT NULL, 
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(25) NOT NULL,
    forma_de_pago VARCHAR(20) NOT NULL,
    vendedor VARCHAR(50) NOT NULL,
    producto VARCHAR(25) NOT NULL,
    precio DECIMAL(20,10) NOT NULL,
    cantidad INT (30) NOT NULL,
    total INT NOT NULL,
    PRIMARY KEY(id),
)

CREATE TABLE tbl_catergoria(
    cod_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    sub_categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY(cod_categoria),

)

CREATE TABLE tbl_sub_categoria(
    cod_sub_categoria INT NOT NULL,
    nombre VARCHAR(50),
    PRIMARY KEY(cod_sub_categoria),

    )

CREATE TABLE tbl_vendedor(
    id INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    numero_cell INT NOT NULL,
    genero VARCHAR(20),
    PRIMARY KEY(id),
)


