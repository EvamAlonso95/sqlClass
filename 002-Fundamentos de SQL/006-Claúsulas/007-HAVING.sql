SELECT
*
FROM productos
GROUP BY categoria
HAVING precio > 200;

-- Seleciona todo de la tabla productos por categoria y que tengan un precio mayor que 200
-- HAVING siempre se ejecuta después del GROUP BY
