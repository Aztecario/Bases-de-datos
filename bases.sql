
CREATE DATABASE bd_Productos;

USE bd_Productos;



CREATE TABLE tbl_producto(
    id_producto  INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    id_categoria INT NOT NULL,
    email VARCHAR (25) NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY(id_categoria) REFERENCES tbl_catergoria(id_categoria)
);

CREATE TABLE tbl_clientes(
    id_clientes INT NOT NULL , 
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(25) NOT NULL,
    forma_de_pago VARCHAR(20) NOT NULL,
    id_vendedor INT NOT NULL,
    id_producto INT NOT NULL,
    precio DECIMAL(20,10) NOT NULL,
    cantidad INT (30) NOT NULL,
    total INT NOT NULL,
    PRIMARY KEY(id_clientes),
    FOREIGN KEY(id_vendedor) REFERENCES tbl_vendedor(id_vendedor),
    FOREIGN KEY(id_producto) REFERENCES tbl_producto(id_producto)


);

CREATE TABLE tbl_catergoria(
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    cod_sub_categoria INT NOT NULL,
    PRIMARY KEY(id_categoria),
    FOREIGN KEY(cod_sub_categoria) REFERENCES tbl_sub_categoria(cod_sub_categoria)

);

CREATE TABLE tbl_sub_categoria(
    cod_sub_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    PRIMARY KEY(cod_sub_categoria),

);

CREATE TABLE tbl_vendedor(
    id_vendedor INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    numero_cell INT NOT NULL,
    genero VARCHAR(20),
    PRIMARY KEY(id_vendedor)
);


