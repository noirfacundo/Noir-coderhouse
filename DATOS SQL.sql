


INSERT INTO empleados (nombre, apellido, numero_contacto, direccion, mail)
VALUES
('Juan','Perez','113456789','Buenos Aires','juan@gmail.com'),
('Maria','Gomez','112345678','Buenos Aires','maria@gmail.com'),
('Lucas','Fernandez','115555555','Buenos Aires','lucas@gmail.com');


INSERT INTO clientes (nombre, apellido, cobertura_medica, numero_contacto, mail)
VALUES
('Carlos','Lopez','OSDE','114567890','carlos@gmail.com'),
('Ana','Martinez','Swiss Medical','116789012','ana@gmail.com'),
('Laura','Sanchez','Galeno','118888888','laura@gmail.com');


INSERT INTO proveedores (nombre_drogueria, numero_contacto, mail, nombre_vendedor)
VALUES
('Drogueria Central','111234567','ventas@drogueria.com','Pedro'),
('Farmanet','119876543','contacto@farmanet.com','Luis'),
('Distribuidora FarmaPlus','114444444','info@farmaplus.com','Martin');


INSERT INTO productos (nombre, formula_quimica, id_proveedor)
VALUES
('Paracetamol','C8H9NO2',1),
('Ibuprofeno','C13H18O2',2),
('Amoxicilina','C16H19N3O5S',3),
('Aspirina','C9H8O4',1);


INSERT INTO ventas (fecha_transaccion, id_empleado, id_cliente)
VALUES
('2026-03-01',1,1),
('2026-03-02',2,2),
('2026-03-03',3,3);


INSERT INTO detalle_venta (numero_ticket, id_producto, cantidad)
VALUES
(1,1,2),
(1,2,1),
(2,3,1),
(3,4,3);

-- =========================
-- EMPLEADOS
-- =========================
INSERT INTO empleados (nombre, apellido, numero_contacto, direccion, mail) VALUES
('Sergio','Ramirez','111111111','Buenos Aires','sergio@gmail.com'),
('Lucia','Torres','222222222','Buenos Aires','lucia@gmail.com'),
('Diego','Castro','333333333','Buenos Aires','diego@gmail.com'),
('Valeria','Suarez','444444444','Buenos Aires','valeria@gmail.com'),
('Pablo','Mendez','555555555','Buenos Aires','pablo@gmail.com');

-- =========================
-- CLIENTES
-- =========================
INSERT INTO clientes (nombre, apellido, cobertura_medica, numero_contacto, mail) VALUES
('Fernando','Gomez','OSDE','111222333','fernando@gmail.com'),
('Camila','Perez','Swiss Medical','222333444','camila@gmail.com'),
('Jorge','Diaz','Galeno','333444555','jorge@gmail.com'),
('Florencia','Lopez','Medife','444555666','florencia@gmail.com'),
('Martin','Sosa','OSDE','555666777','martin@gmail.com');

-- =========================
-- PROVEEDORES
-- =========================
INSERT INTO proveedores (nombre_drogueria, numero_contacto, mail, nombre_vendedor) VALUES
('Drogueria Norte','111000111','norte@gmail.com','Carlos'),
('SaludDistrib','222000222','salud@gmail.com','Miguel'),
('FarmaGlobal','333000333','global@gmail.com','Andres'),
('MedicPlus','444000444','medic@gmail.com','Javier'),
('Distribuidora Sur','555000555','sur@gmail.com','Raul');

-- =========================
-- PRODUCTOS
-- =========================
INSERT INTO productos (nombre, formula_quimica, id_proveedor) VALUES
('Diclofenac','C14H11Cl2NO2',1),
('Omeprazol','C17H19N3O3S',2),
('Loratadina','C22H23ClN2O2',3),
('Ranitidina','C13H22N4O3S',4),
('Ibuprofeno 600','C13H18O2',5);

-- =========================
-- VENTAS
-- =========================
INSERT INTO ventas (fecha_transaccion, id_empleado, id_cliente) VALUES
('2026-03-04',1,2),
('2026-03-05',2,3),
('2026-03-06',3,4),
('2026-03-07',4,5),
('2026-03-08',5,1);

-- =========================
-- DETALLE_VENTA
-- =========================
INSERT INTO detalle_venta (numero_ticket, id_producto, cantidad) VALUES
(4,1,2),
(5,2,1),
(6,3,3),
(7,4,2),
(8,5,1);
