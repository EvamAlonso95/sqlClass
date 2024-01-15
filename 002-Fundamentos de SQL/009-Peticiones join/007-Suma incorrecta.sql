-- Obtenemos el total de todos los pedidos en conjunto pero lo que queremos
-- es el total de cada cliente: que ha pedido cada uno y cuánto es cada pedido

SELECT
    pedidos.identificador AS 'Número de pedido',
    pedidos.fecha AS 'Fecha del pedido',
    clientes.nombre AS 'Nombre del cliente',
    SUM(
        productos.precio * lineaspedido.cantidad
    ) AS 'Total'
FROM pedidos
    LEFT JOIN clientes ON pedidos.cliente_nombre = clientes.identificador
    LEFT JOIN lineaspedido ON lineaspedido.pedidos_fecha = pedidos.identificador
    LEFT JOIN productos ON lineaspedido.productos_nombre = productos.identificador;