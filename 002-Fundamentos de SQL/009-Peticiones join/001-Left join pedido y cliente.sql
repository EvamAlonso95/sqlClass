SELECT * FROM pedidos
LEFT JOIN clientes
ON pedidos.cliente_nombre = clientes.identificador;