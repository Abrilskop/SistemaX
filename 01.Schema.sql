-- MySQL Script generated by MySQL Workbench
-- Tue Nov 12 10:09:32 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sistemax
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sistemax
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sistemax` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
USE `sistemax` ;

-- -----------------------------------------------------
-- Table `sistemax`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sistemax`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `sistemax`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nick` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `pass` VARCHAR(100) NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `nivel` VARCHAR(20) NOT NULL,
  `bloqueo` INT(1) NOT NULL,
  `foto` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sistemax`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sistemax`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `sistemax`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Apellido` VARCHAR(100) NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `fechaIngreso` VARCHAR(10) NOT NULL,
  `Telefono` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sistemax`.`Venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sistemax`.`Venta` ;

CREATE TABLE IF NOT EXISTS `sistemax`.`Venta` (
  `idVenta` INT NOT NULL,
  `fechaVenta` VARCHAR(10) NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `idClientes` INT NOT NULL,
  PRIMARY KEY (`idVenta`),
  INDEX `fk_Venta_Clientes_idx` (`idClientes` ASC),
  CONSTRAINT `fk_Venta_Clientes`
    FOREIGN KEY (`idClientes`)
    REFERENCES `sistemax`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sistemax`.`Productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sistemax`.`Productos` ;

CREATE TABLE IF NOT EXISTS `sistemax`.`Productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Stock` INT NOT NULL,
  PRIMARY KEY (`idProductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sistemax`.`DetalleVenta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sistemax`.`DetalleVenta` ;

CREATE TABLE IF NOT EXISTS `sistemax`.`DetalleVenta` (
  `idDetalleVenta` INT NOT NULL AUTO_INCREMENT,
  `Cantidad` INT NOT NULL,
  `Descuento` DECIMAL(10,2) NOT NULL,
  `idProductos` INT NOT NULL,
  `idVenta` INT NOT NULL,
  PRIMARY KEY (`idDetalleVenta`),
  INDEX `fk_DetalleVenta_Productos1_idx` (`idProductos` ASC),
  INDEX `fk_DetalleVenta_Venta1_idx` (`idVenta` ASC),
  CONSTRAINT `fk_DetalleVenta_Productos1`
    FOREIGN KEY (`idProductos`)
    REFERENCES `sistemax`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DetalleVenta_Venta1`
    FOREIGN KEY (`idVenta`)
    REFERENCES `sistemax`.`Venta` (`idVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Agregar precio a la tabla `Productos`
-- -----------------------------------------------------
ALTER TABLE `sistemax`.`Productos`
ADD COLUMN `precio` DECIMAL(10,2) NOT NULL AFTER `Stock`;

-- -----------------------------------------------------
-- Agregar registros
-- -----------------------------------------------------
INSERT INTO `sistemax`.`Usuario` (`nick`, `nombre`, `pass`, `correo`, `nivel`, `bloqueo`, `foto`)
VALUES
('juan123', 'Juan Pérez', 'password123', 'juan.perez@mail.com', 'admin', 0, 'juan123.jpg'),
('ana456', 'Ana Gómez', 'password456', 'ana.gomez@mail.com', 'user', 0, 'ana456.jpg'),
('luis789', 'Luis Martínez', 'password789', 'luis.martinez@mail.com', 'user', 0, 'luis789.jpg'),
('marta321', 'Marta Rodríguez', 'password321', 'marta.rodriguez@mail.com', 'admin', 1, 'marta321.jpg'),
('carla654', 'Carla Fernández', 'password654', 'carla.fernandez@mail.com', 'user', 0, 'carla654.jpg'),
('jorge123', 'Jorge Pérez', 'password123', 'jorge.perez@mail.com', 'user', 0, 'jorge123.jpg'),
('rosa987', 'Rosa Sánchez', 'password987', 'rosa.sanchez@mail.com', 'admin', 0, 'rosa987.jpg'),
('victor555', 'Víctor López', 'password555', 'victor.lopez@mail.com', 'user', 0, 'victor555.jpg'),
('paula111', 'Paula García', 'password111', 'paula.garcia@mail.com', 'user', 1, 'paula111.jpg'),
('joseph777', 'Joseph Ruiz', 'password777', 'joseph.ruiz@mail.com', 'admin', 0, 'joseph777.jpg');

INSERT INTO `sistemax`.`Clientes` (`Nombre`, `Apellido`, `correo`, `fechaIngreso`, `Telefono`)
VALUES
('Carlos', 'Mendoza', 'carlos.mendoza@mail.com', '2024-01-01', '5551234567'),
('Sofía', 'López', 'sofia.lopez@mail.com', '2024-02-02', '5552345678'),
('Miguel', 'García', 'miguel.garcia@mail.com', '2024-03-03', '5553456789'),
('Valeria', 'Ruiz', 'valeria.ruiz@mail.com', '2024-04-04', '5554567890'),
('Pedro', 'Martínez', 'pedro.martinez@mail.com', '2024-05-05', '5555678901'),
('Lucía', 'Pérez', 'lucia.perez@mail.com', '2024-06-06', '5556789012'),
('Javier', 'Hernández', 'javier.hernandez@mail.com', '2024-07-07', '5557890123'),
('Clara', 'González', 'clara.gonzalez@mail.com', '2024-08-08', '5558901234'),
('Rafael', 'Sánchez', 'rafael.sanchez@mail.com', '2024-09-09', '5559012345'),
('Andrea', 'Fernández', 'andrea.fernandez@mail.com', '2024-10-10', '5550123456');

INSERT INTO `sistemax`.`Venta` (`idVenta`, `fechaVenta`, `Descripcion`, `idClientes`)
VALUES
(1, '2024-11-01', 'Compra de artículos electrónicos', 1),
(2, '2024-11-02', 'Venta de muebles de oficina', 2),
(3, '2024-11-03', 'Compra de herramientas de jardinería', 3),
(4, '2024-11-04', 'Venta de productos de cocina', 4),
(5, '2024-11-05', 'Compra de equipos de computación', 5),
(6, '2024-11-06', 'Venta de ropa deportiva', 6),
(7, '2024-11-07', 'Compra de herramientas para construcción', 7),
(8, '2024-11-08', 'Venta de electrodomésticos', 8),
(9, '2024-11-09', 'Compra de accesorios de oficina', 9),
(10, '2024-11-10', 'Venta de equipos de fotografía', 10);

INSERT INTO `sistemax`.`Productos` (`Nombre`, `Estado`, `Stock`, `precio`)
VALUES
('Laptop HP', 'Disponible', 50, 799.99),
('Silla Ergonomica', 'Disponible', 20, 149.99),
('Cámara Sony', 'Agotado', 0, 499.99),
('Teclado Logitech', 'Disponible', 80, 39.99),
('Monitor Samsung', 'Disponible', 30, 299.99),
('Tablet Samsung', 'Disponible', 15, 229.99),
('Auriculares Bose', 'Disponible', 60, 129.99),
('Móvil iPhone 13', 'Agotado', 0, 999.99),
('Cafetera DeLonghi', 'Disponible', 10, 89.99),
('Cámara Canon', 'Disponible', 25, 399.99);

INSERT INTO `sistemax`.`DetalleVenta` (`Cantidad`, `Descuento`, `idProductos`, `idVenta`)
VALUES
(2, 10.00, 1, 1),
(1, 0.00, 2, 2),
(3, 5.00, 3, 3),
(5, 3.00, 4, 4),
(1, 0.00, 5, 5),
(4, 2.50, 6, 6),
(2, 0.00, 7, 7),
(1, 7.50, 8, 8),
(6, 0.00, 9, 9),
(3, 5.00, 10, 10);
-- -----------------------------------------------------
-- VER REGISTROS DE CADA TABLA
-- -----------------------------------------------------
SELECT * FROM `sistemax`.`Usuario`;
SELECT * FROM `sistemax`.`Clientes`;
SELECT * FROM `sistemax`.`Venta`;
SELECT * FROM `sistemax`.`Productos`;
SELECT * FROM `sistemax`.`DetalleVenta`;
-- -----------------------------------------------------
-- TAREA
-- -----------------------------------------------------
-- 1. Obtener la relación de clientes con sus productos comprados en diferentes fechas.
SELECT 
    c.idClientes AS IdCliente, 
    c.Nombre AS Nombres, 
    c.Apellido AS Apellidos, 
    p.idProductos AS IdProducto, 
    p.Nombre AS NombreP, 
    p.precio AS Precio
FROM `sistemax`.`Clientes` c
JOIN `sistemax`.`Venta` v ON c.idClientes = v.idClientes
JOIN `sistemax`.`DetalleVenta` dv ON v.idVenta = dv.idVenta
JOIN `sistemax`.`Productos` p ON dv.idProductos = p.idProductos;
-- 2. Obtener la relación de clientes cuyas ventas son mayores a 1000.
SELECT 
    c.idClientes AS IdCliente, 
    c.Nombre AS Nombres, 
    SUM(dv.Cantidad * p.precio) AS Monto
FROM `sistemax`.`Clientes` c
JOIN `sistemax`.`Venta` v ON c.idClientes = v.idClientes
JOIN `sistemax`.`DetalleVenta` dv ON v.idVenta = dv.idVenta
JOIN `sistemax`.`Productos` p ON dv.idProductos = p.idProductos
GROUP BY c.idClientes, c.Nombre
HAVING Monto > 1000;

-- 3. Obtener la relación de los 5 clientes de mayor a menor, que tienen las mayores ventas en el mes.
SELECT 
    c.idClientes AS IdCliente, 
    c.Nombre AS Nombres, 
    SUM(dv.Cantidad * p.precio) AS Monto, 
    v.fechaVenta AS Fecha
FROM `sistemax`.`Clientes` c
JOIN `sistemax`.`Venta` v ON c.idClientes = v.idClientes
JOIN `sistemax`.`DetalleVenta` dv ON v.idVenta = dv.idVenta
JOIN `sistemax`.`Productos` p ON dv.idProductos = p.idProductos
WHERE v.fechaVenta BETWEEN '2024-11-01' AND '2024-11-30' 
GROUP BY c.idClientes, c.Nombre, v.fechaVenta
ORDER BY Monto DESC
LIMIT 5;
