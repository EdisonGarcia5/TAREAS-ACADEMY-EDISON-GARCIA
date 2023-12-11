
--Tabla cliente completada todos los campos.

SELECT 
    cliente.id_cliente,
    cliente.nombre_cliente, 
    cliente.app_cliente, 
    cliente.apm_cliente, 
    cliente.correo_electronico, 
    cliente.contrasena, 
    cliente.telefono, 
    cliente.fecha_creacion, 
    estatus.nombre_estatus
FROM cliente
INNER JOIN estatus ON cliente.id_estatus = estatus.id_estatus
ORDER BY cliente.id_cliente;

--Tabla producto completada todos los campos.

SELECT 
    producto.id_producto, 
    producto.nombre_producto, 
    marca.nombre_marca, 
    producto.modelo, 
    producto.stock, 
    producto.precio_proveedor, 
    producto.precio_publico, 
    producto.descripcion, 
    vendedor.nombre_vendedor, 
    producto.fecha_creacion, 
    estatus.nombre_estatus
FROM producto

JOIN marca ON producto.id_marca = marca.id_marca
JOIN vendedor ON producto.id_vendedor = vendedor.id_vendedor
JOIN estatus ON producto.id_estatus = estatus.id_estatus

--Tabla ubicacion completada todos los campos.

SELECT 
    ubicacion.id_ubicacion, 
    ubicacion.nombre_contacto,
    ubicacion.numero_contacto, 
    ubicacion.region, 
    ubicacion.manzana, 
    ubicacion.numero_INTerior, 
    ubicacion.numero_exterior, 
    ubicacion.codigo_postal, 
    ubicacion.calles, 
    ubicacion.referencia, 
    cliente.nombre_cliente
FROM ubicacion 
JOIN cliente ON ubicacion.id_cliente = cliente.id_cliente;

--Tabla vendedor completada todos los campos.

SELECT 
    vendedor.id_vendedor, 
    vendedor.nombre_vendedor, 
    vendedor.app_vendedor, 
    vendedor.apm_vendedor, 
    vendedor.correo_electronico, 
    vendedor.contrasena, 
    vendedor.telefono, 
    vendedor.fecha_creacion, 
    estatus.nombre_estatus
FROM vendedor
JOIN estatus ON vendedor.id_estatus = estatus.id_estatus
ORDER BY vendedor.id_vendedor;

--Tabla venta completada todos los campos.

SELECT 
    venta.id_venta,
    vendedor.nombre_vendedor, 
    cliente.nombre_cliente, 
    producto.nombre_producto, 
    venta.cantidad_producto, 
    venta.fecha_venta
FROM venta
INNER JOIN vendedor ON venta.id_vendedor = vendedor.id_vendedor
INNER JOIN cliente ON venta.id_cliente = cliente.id_cliente
INNER JOIN producto ON venta.id_producto = producto.id_producto
ORDER BY venta.id_venta;


