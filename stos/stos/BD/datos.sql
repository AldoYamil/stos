-- Active: 1727879265427@@127.0.0.1@3306@cafpath
INSERT INTO Path (starting_point, end_point, est_arrival, starting_date) VALUES 
('Almacen Principal', 'Cliente 1', '2024-11-01', '2024-10-15'),
('Almacen Materia Prima', 'Cliente 2', '2024-11-03', '2024-10-16'),
('Almacen Producto Terminado', 'Cliente 3', '2024-11-05', '2024-10-17'),
('Almacen Refacciones', 'Cliente 4', '2024-11-02', '2024-10-18'),
('Almacen Empaque', 'Cliente 5', '2024-11-04', '2024-10-19'),
('Almacen Principal', 'Cliente 6', '2024-11-07', '2024-10-20'),
('Almacen Materia Prima', 'Cliente 7', '2024-11-09', '2024-10-21'),
('Almacen Producto Terminado', 'Cliente 8', '2024-11-11', '2024-10-22'),
('Almacen Refacciones', 'Cliente 9', '2024-11-13', '2024-10-23'),
('Almacen Empaque', 'Cliente 10', '2024-11-15', '2024-10-24');

INSERT INTO Warehouse (code, name, street, colony, number) VALUES 
('WH001', 'Almacen Principal', 'Industria', 'Centro', '101'),
('WH002', 'Almacen Materia Prima', 'Produccion', 'Norte', '202'),
('WH003', 'Almacen Producto Terminado', 'Distribucion', 'Sur', '303'),
('WH004', 'Almacen Refacciones', 'Repuestos', 'Este', '404'),
('WH005', 'Almacen Empaque', 'Embalaje', 'Oeste', '505');

INSERT INTO Item (code, name, description) VALUES 
('IT001', 'Tornillo M4', 'Tornillo de acero inoxidable M4 de 10mm'),
('IT002', 'Arandela 12mm', 'Arandela plana para uso general de 12mm'),
('IT003', 'Tuerca hexagonal M5', 'Tuerca hexagonal para pernos M5'),
('IT004', 'Lubricante industrial', 'Lubricante para maquinaria pesada'),
('IT005', 'Filtro de aire', 'Filtro de aire para compresor de 10HP'),
('IT006', 'Cinta adhesiva', 'Cinta adhesiva de uso industrial de 50 metros'),
('IT007', 'Caja de cartón', 'Caja de cartón reforzada de 30x30x30 cm'),
('IT008', 'Empaque de burbuja', 'Empaque de burbuja para protección de envíos'),
('IT009', 'Palet de madera', 'Palet de madera estándar de 1x1.2 metros'),
('IT010', 'Placa de acero', 'Placa de acero inoxidable de 1x2 metros'),
('IT011', 'Resorte de precisión', 'Resorte de acero de alta resistencia de 20cm');

INSERT INTO Insurance (policyNumber, insurance_type, coverage) VALUES 
('POL001', 'Seguro de carga', 10000.00),
('POL002', 'Seguro de responsabilidad civil', 20000.00),
('POL003', 'Seguro contra accidentes', 15000.00),
('POL004', 'Seguro de robo', 12000.00),
('POL005', 'Seguro de mercancías perecederas', 18000.00),
('POL006', 'Seguro de daño por agua', 16000.00),
('POL007', 'Seguro de daño por fuego', 25000.00),
('POL008', 'Seguro de rotura', 11000.00),
('POL009', 'Seguro de extravío', 13000.00),
('POL010', 'Seguro de maquinaria', 21000.00);

INSERT INTO Role (code, name, privileges) VALUES 
('R001', 'Supervisor', 'Administración y control de almacén'),
('R002', 'Operador', 'Manejo de materiales y equipos'),
('R003', 'Transportista', 'Entrega y recolección de mercancías');

INSERT INTO Users (username, password, role) VALUES 
('supervisor1', 'pass123', 'R001'),
('operador1', 'pass234', 'R002'),
('transportista1', 'pass345', 'R003'),
('supervisor2', 'pass456', 'R001'),
('operador2', 'pass567', 'R002'),
('transportista2', 'pass678', 'R003'),
('supervisor3', 'pass789', 'R001'),
('operador3', 'pass890', 'R002'),
('transportista3', 'pass901', 'R003'),
('supervisor4', 'pass012', 'R001'),
('operador4', 'pass1234', 'R002'),
('transportista4', 'pass2345', 'R003'),
('supervisor5', 'pass3456', 'R001'),
('operador5', 'pass4567', 'R002'),
('transportista5', 'pass5678', 'R003'),
('supervisor6', 'pass6789', 'R001'),
('operador6', 'pass7890', 'R002'),
('transportista6', 'pass8901', 'R003'),
('supervisor7', 'pass9012', 'R001'),
('operador7', 'pass0123', 'R002'),
('transportista7', 'pass12345', 'R003'),
('supervisor8', 'pass23456', 'R001'),
('operador8', 'pass34567', 'R002'),
('transportista8', 'pass45678', 'R003'),
('supervisor9', 'pass56789', 'R001'),
('operador9', 'pass67890', 'R002'),
('transportista9', 'pass78901', 'R003'),
('supervisor10', 'pass89012', 'R001'),
('operador10', 'pass90123', 'R002'),
('transportista10', 'pass01234', 'R003'),
('supervisor11', 'pass234567', 'R001'),
('operador11', 'pass345678', 'R002'),
('transportista11', 'pass456789', 'R003'),
('supervisor12', 'pass567890', 'R001'),
('operador12', 'pass678901', 'R002'),
('transportista12', 'pass789012', 'R003'),
('supervisor13', 'pass890123', 'R001'),
('operador13', 'pass901234', 'R002'),
('transportista13', 'pass012345', 'R003'),
('supervisor14', 'pass1234567', 'R001'),
('operador14', 'pass2345678', 'R002'),
('transportista14', 'pass3456789', 'R003'),
('supervisor15', 'pass4567890', 'R001'),
('operador15', 'pass5678901', 'R002'),
('transportista15', 'pass6789012', 'R003'),
('supervisor16', 'pass7890123', 'R001'),
('operador16', 'pass8901234', 'R002'),
('transportista16', 'pass9012345', 'R003'),
('supervisor17', 'pass0123456', 'R001'),
('operador17', 'pass12345678', 'R002'),
('transportista17', 'pass23456789', 'R003'),
('supervisor18', 'pass34567890', 'R001'),
('operador18', 'pass45678901', 'R002'),
('transportista18', 'pass56789012', 'R003'); 

INSERT INTO Client (name, lastname, surname, company, phone, street, colony, number, usernum, username, password) VALUES 
('Alberto', 'Hernandez', 'Perez', 'Manufacturas MEX', '5512345678', 'Av. Central', 'Centro', '101', 1, 'ahernandez', 'clientpass1'),
('Lucia', 'Gomez', 'Ramirez', 'Industrias ALFA', '5587654321', 'Calle Norte', 'Industrial', '202', 2, 'lgomez', 'clientpass2'),
('Maria', 'Fernandez', 'Lopez', 'Maquilas del Sol', '5523344556', 'Avenida Sur', 'Zona Industrial', '303', 3, 'mfernandez', 'clientpass3'),
('Pedro', 'Martinez', 'Garcia', 'Textiles S.A.', '5543210987', 'Calzada Oriente', 'Ciudad', '404', 4, 'pmartinez', 'clientpass4'),
('Sofia', 'Ruiz', 'Santos', 'Electronica MX', '5598765432', 'Circuito Poniente', 'Nueva Zona', '505', 5, 'sruiz', 'clientpass5'),
('Carlos', 'Sanchez', 'Rivera', 'Distribuidora Central', '5510987654', 'Blvd Norte', 'Comercial', '606', 6, 'csanchez', 'clientpass6'),
('Martha', 'Lopez', 'Flores', 'Importaciones Ltd.', '5576543210', 'Pasaje Oriente', 'Residencial', '707', 7, 'mlopez', 'clientpass7'),
('Francisco', 'Diaz', 'Vega', 'Logística Internacional', '5591234567', 'Paseo Reforma', 'Urbano', '808', 8, 'fdiaz', 'clientpass8'),
('Isabel', 'Vega', 'Castro', 'Automotriz S.A.', '5545678910', 'Circuito Interior', 'Centro', '909', 9, 'ivega', 'clientpass9'),
('Juan', 'Ramos', 'Mora', 'Servicios de Calidad', '5588766543', 'Via Rapida', 'Moderna', '1010', 10, 'jramos', 'clientpass10'),
('Raul', 'Lopez', 'Gonzalez', 'Distribuciones S.A.', '5522334455', 'Calzada Sur', 'Comercial', '303', 11, 'rlopez', 'clientpass50');

INSERT INTO Stock (code, name, amount, warehouse) VALUES 
('ST001', 'Tornillo M4 Stock', 1500, 'WH001'),
('ST002', 'Arandela 12mm Stock', 2500, 'WH002'),
('ST003', 'Tuerca hexagonal Stock', 2000, 'WH003'),
('ST004', 'Lubricante industrial Stock', 800, 'WH004'),
('ST005', 'Filtro de aire Stock', 1200, 'WH005'),
('ST006', 'Cinta adhesiva Stock', 3000, 'WH001'),
('ST007', 'Caja de cartón Stock', 500, 'WH002'),
('ST008', 'Empaque de burbuja Stock', 450, 'WH003'),
('ST009', 'Palet de madera Stock', 100, 'WH004'),
('ST010', 'Placa de acero Stock', 80, 'WH005'),
('ST011', 'Resorte de precisión Stock', 75, 'WH005');

INSERT INTO Incident (description, date, user) VALUES 
('Retraso en la entrega por tráfico', '2024-10-10', 1),
('Producto dañado durante el envío', '2024-10-11', 2),
('Ruta modificada por obras viales', '2024-10-12', 3),
('Incidente de seguridad en la carga', '2024-10-13', 4),
('Fallo mecánico en el vehículo', '2024-10-14', 5),
('Error en la dirección de entrega', '2024-10-15', 6),
('Demora en aduana', '2024-10-16', 7),
('Problemas de documentación', '2024-10-17', 8),
('Producto mal embalado', '2024-10-18', 9),
('Cambio de última hora en el cliente', '2024-10-19', 10),
('Condiciones climáticas adversas', '2024-10-30', 11);

INSERT INTO Vehicle (license_plate, model, max_capacity, path, warehouse) VALUES 
('ABC123', 'Camión 5 Toneladas', 5000.00, 1, 'WH001'),
('DEF456', 'Camioneta 3 Toneladas', 3000.00, 2, 'WH002'),
('GHI789', 'Camión 10 Toneladas', 10000.00, 3, 'WH003'),
('JKL012', 'Furgoneta 1 Tonelada', 1000.00, 4, 'WH004'),
('MNO345', 'Camión 8 Toneladas', 8000.00, 5, 'WH005'),
('PQR678', 'Camioneta 2 Toneladas', 2000.00, 6, 'WH001'),
('STU901', 'Furgoneta 1.5 Toneladas', 1500.00, 7, 'WH002'),
('VWX234', 'Camión 12 Toneladas', 12000.00, 8, 'WH003'),
('YZA567', 'Camioneta 2.5 Toneladas', 2500.00, 9, 'WH004'),
('BCD890', 'Camión 7 Toneladas', 7000.00, 10, 'WH005'),
('XYZ999', 'Camioneta 1.8 Toneladas', 1800.00, 10, 'WH001');

INSERT INTO Employees (name, lastname, surname, role, usernum, username, password, vehicle, warehouse) VALUES 
('Jose', 'Perez', 'Garcia', 'Supervisor', 1, 'jperez', 'emppass1', 1, 'WH001'),
('Ana', 'Gonzalez', 'Lopez', 'Operador', 2, 'agonzalez', 'emppass2', 2, 'WH002'),
('Carlos', 'Martinez', 'Diaz', 'Transportista', 3, 'cmartinez', 'emppass3', 3, 'WH003'),
('Marta', 'Sanchez', 'Reyes', 'Supervisor', 4, 'msanchez', 'emppass4', 4, 'WH004'),
('Luis', 'Hernandez', 'Rojas', 'Operador', 5, 'lhernandez', 'emppass5', 5, 'WH005'),
('Paula', 'Rodriguez', 'Mendez', 'Transportista', 6, 'prodriguez', 'emppass6', 6, 'WH001'),
('Juan', 'Lopez', 'Castro', 'Supervisor', 7, 'jlopz', 'emppass7', 7, 'WH002'),
('Sofia', 'Ramirez', 'Nunez', 'Operador', 8, 'sramirez', 'emppass8', 8, 'WH003'),
('Rafael', 'Fernandez', 'Cruz', 'Transportista', 9, 'rfernandez', 'emppass9', 9, 'WH004'),
('Gloria', 'Vazquez', 'Torres', 'Supervisor', 10, 'gvazquez', 'emppass10', 10, 'WH005'),
('Laura', 'Alvarez', 'Morales', 'Operador', 11, 'lalvarez', 'emppass11', 11, 'WH001');

INSERT INTO Shipment (date, delivery_date, client, incident, vehicle, path, insurance) VALUES 
('2024-10-05', '2024-10-08', 12, 1, 1, 1, 1),
('2024-10-06', '2024-10-09', 13, 2, 2, 2, 2),
('2024-10-07', '2024-10-10', 14, 3, 3, 3, 3),
('2024-10-08', '2024-10-11', 15, 4, 4, 4, 4),
('2024-10-09', '2024-10-12', 16, 5, 5, 5, 5),
('2024-10-10', '2024-10-13', 17, 6, 6, 6, 6),
('2024-10-11', '2024-10-14', 18, 7, 7, 7, 7),
('2024-10-12', '2024-10-15', 19, 8, 8, 8, 8),
('2024-10-13', '2024-10-16', 20, 9, 9, 9, 9),
('2024-10-14', '2024-10-17', 21, 10, 10, 10, 10),
('2024-11-01', '2024-11-05', 22, 11, 10, 10, 10);

INSERT INTO Record (date, location, status, shipment) VALUES 
('2024-10-05', 'Almacen Principal', 'En proceso', 12),
('2024-10-06', 'Almacen Materia Prima', 'En tránsito', 13),
('2024-10-07', 'Almacen Producto', 'Entregado', 14),
('2024-10-08', 'Almacen Refacciones', 'En proceso', 15),
('2024-10-09', 'Almacen Empaque', 'En tránsito', 16),
('2024-10-10', 'Almacen Principal', 'Entregado', 17),
('2024-10-11', 'Almacen MateriaP', 'En proceso', 18),
('2024-10-12', 'Almacen Producto', 'En tránsito', 19),
('2024-10-13', 'Almacen Refacciones', 'Entregado', 20),
('2024-10-14', 'Almacen Empaque', 'En proceso', 21),
('2024-11-01', 'Almacen Principal', 'Entregado', 22);

INSERT INTO Assamble (employees, shipment) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 16),
(6, 17),
(7, 18),
(8, 19),
(9, 20),
(10, 21),
(11, 22);

INSERT INTO Package (shipment, item) VALUES
(12, 'IT001'),
(13, 'IT002'),
(14, 'IT003'),
(15, 'IT004'),
(16, 'IT005'),
(17, 'IT006'),
(18, 'IT007'),
(19, 'IT008'),
(20, 'IT009'),
(21, 'IT010');

INSERT INTO Inventory (stock, item) VALUES
('ST001', 'IT001'),
('ST002', 'IT002'),
('ST003', 'IT003'),
('ST004', 'IT004'),
('ST005', 'IT005'),
('ST006', 'IT006'),
('ST007', 'IT007'),
('ST008', 'IT008'),
('ST009', 'IT009'),
('ST010', 'IT010');