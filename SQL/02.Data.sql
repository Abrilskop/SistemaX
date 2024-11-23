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