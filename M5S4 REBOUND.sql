-- Inserte los datos de una empresa.
INSERT INTO empresa (rut, nombre, direccion, telefono, correo, web)
VALUES ('760666058-2', 'Comercial JIOH', 'Cerro el Plomo 6678', '222424776', 'jioh@icenter.cl', 'www.icenter.cl');

-- Inserte 2 tipos de vehículo.
INSERT INTO tipovehiculo (idtipovehiculo, nombre)
VALUES 
    (1, 'PICK UP'),
    (2, 'SEDAN');

-- Inserte 3 clientes.
INSERT INTO cliente (rut, nombre, correo, direccion, celular, alta)
VALUES
    ('15335679-3', 'Juan Oh', 'jioh1982@gmail.com', 'Direccion 123', '123456789', '1'),
    ('20882884-3', 'Natalia Peña', 'natapenadiaz@gmail.com', 'Direccion 321', '987654321', '1'),
    ('10099594-8', 'Jae Hee Kim', 'jaehee59@gmail.com', 'Direccion 456', '987321456', '0');

-- Inserte 2 marcas.
INSERT INTO marca (idmarca, nombre)
VALUES
    (1, 'Hyundai'),
    (2, 'Toyota');

-- Inserte 5 vehículos.
INSERT INTO vehiculo (idvehiculo, patente, marca, modelo, color, precio, frecuneciamantencion, idmarca, idtipovehiculo)
VALUES 
    (1, 'BCDF-12', 'Hyundai', 'Accent', 'Gris', 12690000, 6, 1, 2),
    (2, 'BFGT-63', 'Hyundai', 'Accent', 'Gris', 12690000, 6, 1, 2),
    (3, 'BTTH-78', 'Hyundai', 'Accent', 'Gris', 12690000, 6, 1, 2),
    (4, 'KTYR-85', 'Toyota', 'Hilux', 'Blanco', 24890000, 6, 2, 1),
    (5, 'KRRG-31', 'Toyota', 'Hilux', 'Blanco', 24890000, 6, 2, 1);

-- Elimina el último cliente.
DELETE FROM cliente
WHERE rut = '10099594-8';

-- Inserte 1 venta para cada cliente.
INSERT INTO venta (folio, fecha, monto, rut, idvehiculo)
VALUES
    (1, '2023-05-15', 12690000, '15335679-3', 1),
    (2, '2023-05-18', 24890000, '20882884-3', 5);

-- Modifique el nombre del segundo cliente.
UPDATE cliente
SET nombre = 'Natalia Anais Peña'
WHERE rut = '20882884-3';

-- Liste todas las ventas.
SELECT * FROM venta;

-- Liste las ventas del primer cliente.
SELECT * FROM venta 
WHERE rut = '15335679-3';

-- Obtenga la patente de todos los vehículos.
SELECT patente FROM vehiculo;