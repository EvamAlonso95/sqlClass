-- Redondeo natural
SELECT 
ROUND (AVG(precio)) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- Redondeo a la baja
SELECT 
FLOOR (AVG(precio)) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;


-- Redondeo a la alta
SELECT 
CEIL (AVG(precio)) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- Redondeo con decimales
SELECT 
ROUND (AVG(precio),2) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- Valor absoluto // Valor sin el signo
SELECT 
ABS (AVG(precio)) AS 'Cantidad',
categoria AS 'Categoría'
FROM productos 
GROUP BY categoria;

-- RAÍZ CUADRADA
SELECT
nombre,
precio,
SQRT(precio)
FROM productos;

-- ALEATORIO
SELECT
nombre,
precio,
RAND()
FROM productos;
