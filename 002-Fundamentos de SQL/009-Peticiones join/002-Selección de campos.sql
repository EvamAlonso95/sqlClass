SELECT 
pedidos.identificador AS 'Número de pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente'
FROM pedidos
LEFT JOIN clientes
ON pedidos.cliente_nombre = clientes.identificador;