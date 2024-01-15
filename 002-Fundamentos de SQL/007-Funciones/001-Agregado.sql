-- CONTEO
SELECT 
categoria AS 'Categoría', 
COUNT(categoria) AS 'Número' 
FROM productos 
GROUP BY categoria;


-- SUMATORIO

SELECT 
SUM(precio) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;


-- PROMEDIO
SELECT 
AVG(precio) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- MÍNIMO
SELECT 
MIN(precio) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- MÁXIMO
SELECT 
MAX(precio) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

