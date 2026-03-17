
-- =============================================
-- SCRIPT: proyecto_objetos_pro.sql
-- Contiene VISTAS, FUNCIONES, STORED PROCEDURES y TRIGGERS
-- Base de datos: Farmacia Orlowski
-- =============================================

-- =======================
-- VISTAS
-- =======================

CREATE VIEW vista_ventas_clientes AS
SELECT 
v.numero_ticket,
v.fecha_transaccion,
c.nombre,
c.apellido
FROM ventas v
JOIN clientes c
ON v.id_cliente = c.id_cliente;


CREATE VIEW vista_productos_proveedores AS
SELECT
p.id_producto,
p.nombre,
p.formula_quimica,
pr.nombre_drogueria
FROM productos p
JOIN proveedores pr
ON p.id_proveedor = pr.id_proveedor;


CREATE VIEW vista_detalle_ventas AS
SELECT
v.numero_ticket,
p.nombre AS producto,
d.cantidad
FROM detalle_venta d
JOIN productos p
ON d.id_producto = p.id_producto
JOIN ventas v
ON d.numero_ticket = v.numero_ticket;


CREATE VIEW vista_ventas_empleados AS
SELECT
v.numero_ticket,
v.fecha_transaccion,
e.nombre,
e.apellido
FROM ventas v
JOIN empleados e
ON v.id_empleado = e.id_empleado;


CREATE VIEW vista_clientes_ventas AS
SELECT
c.id_cliente,
c.nombre,
c.apellido,
COUNT(v.numero_ticket) AS total_compras
FROM clientes c
LEFT JOIN ventas v
ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente;


-- =======================
-- FUNCIONES
-- =======================

DELIMITER //

CREATE FUNCTION total_productos_vendidos(ticket INT)
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE total INT;

SELECT SUM(cantidad)
INTO total
FROM detalle_venta
WHERE numero_ticket = ticket;

RETURN total;

END //

DELIMITER ;


DELIMITER //

CREATE FUNCTION cantidad_productos_proveedor(idProv INT)
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE total INT;

SELECT COUNT(*)
INTO total
FROM productos
WHERE id_proveedor = idProv;

RETURN total;

END //

DELIMITER ;


DELIMITER //

CREATE FUNCTION ventas_cliente(idCliente INT)
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE total INT;

SELECT COUNT(*)
INTO total
FROM ventas
WHERE id_cliente = idCliente;

RETURN total;

END //

DELIMITER ;


-- =======================
-- STORED PROCEDURES
-- =======================

DELIMITER //

CREATE PROCEDURE registrar_cliente(
IN nombreC VARCHAR(50),
IN apellidoC VARCHAR(50),
IN cobertura VARCHAR(50),
IN telefono VARCHAR(20),
IN email VARCHAR(100)
)
BEGIN

INSERT INTO clientes
(nombre, apellido, cobertura_medica, numero_contacto, mail)
VALUES
(nombreC, apellidoC, cobertura, telefono, email);

END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE registrar_venta(
IN empleado INT,
IN cliente INT
)
BEGIN

INSERT INTO ventas
(fecha_transaccion, id_empleado, id_cliente)
VALUES
(CURDATE(), empleado, cliente);

END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE registrar_producto(
IN nombreProd VARCHAR(100),
IN formula VARCHAR(100),
IN proveedor INT
)
BEGIN

INSERT INTO productos
(nombre, formula_quimica, id_proveedor)
VALUES
(nombreProd, formula, proveedor);

END //

DELIMITER ;


-- =======================
-- TRIGGERS
-- =======================

DELIMITER //

CREATE TRIGGER control_cantidad
BEFORE INSERT ON detalle_venta
FOR EACH ROW
BEGIN

IF NEW.cantidad <= 0 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cantidad inválida';

END IF;

END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER fecha_automatica
BEFORE INSERT ON ventas
FOR EACH ROW
BEGIN

IF NEW.fecha_transaccion IS NULL THEN
SET NEW.fecha_transaccion = CURDATE();
END IF;

END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER validar_producto
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN

IF NEW.nombre IS NULL THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'El producto debe tener nombre';

END IF;

END //

DELIMITER ;
