
-- ======================================
-- FUNCIONES SQL (Farmacia Orlowski)
-- ======================================

DELIMITER //

CREATE FUNCTION total_productos_vendidos(ticket INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE total INT;
SELECT SUM(cantidad) INTO total FROM detalle_venta WHERE numero_ticket = ticket;
RETURN total;
END //

CREATE FUNCTION cantidad_productos_proveedor(idProv INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE total INT;
SELECT COUNT(*) INTO total FROM productos WHERE id_proveedor = idProv;
RETURN total;
END //

CREATE FUNCTION ventas_cliente(idCliente INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE total INT;
SELECT COUNT(*) INTO total FROM ventas WHERE id_cliente = idCliente;
RETURN total;
END //

CREATE FUNCTION total_ventas_empleado(idEmp INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE total INT;
SELECT COUNT(*) INTO total FROM ventas WHERE id_empleado = idEmp;
RETURN total;
END //

CREATE FUNCTION promedio_productos_por_venta(ticket INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE promedio DECIMAL(10,2);
SELECT AVG(cantidad) INTO promedio FROM detalle_venta WHERE numero_ticket = ticket;
RETURN promedio;
END //

DELIMITER ;
