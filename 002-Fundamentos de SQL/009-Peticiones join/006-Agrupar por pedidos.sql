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
-- Aquí nos separa la suma del total de las compras por cliente