


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
