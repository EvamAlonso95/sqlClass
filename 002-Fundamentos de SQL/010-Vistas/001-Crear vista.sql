CREATE VIEW totales_pedidos AS
SELECT 
pedidos.identificador AS 'Número de pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente',
SUM(productos.precio*lineaspedido.cantidad) AS 'Total'
FROM pedidos
LEFT JOIN clientes
ON pedidos.cliente_nombre = clientes.identificador
LEFT JOIN lineaspedido
ON lineaspedido.pedidos_fecha = pedidos.identificador
LEFT JOIN productos
ON lineaspedido.productos_nombre = productos.identificador
GROUP BY clientes.identificador 
;


-- Nos creará en la bbdd dos apartados: tablas y Vistas.
-- Las vistas no se pueden editar solo podemos hacer peticiones SQL de tipo ver, no podemos insertar ni editar, ni actualizar.



CREATE VIEW detalles_pedidos AS
SELECT 
pedidos.identificador AS 'Número de pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente',
productos.nombre AS 'Producto',
productos.precio AS 'Precio',
lineaspedido.cantidad AS 'Cantidad',
productos.precio*lineaspedido.cantidad AS 'Subtotal'
FROM pedidos
LEFT JOIN clientes
ON pedidos.cliente_nombre = clientes.identificador
LEFT JOIN lineaspedido
ON lineaspedido.pedidos_fecha = pedidos.identificador
LEFT JOIN productos
ON lineaspedido.productos_nombre = productos.identificador
;