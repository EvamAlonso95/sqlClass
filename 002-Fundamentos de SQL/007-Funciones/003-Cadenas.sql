-- Concatenar
SELECT
CONCAT(idfiscal, " - ",nombre)
FROM clientes;

-- Trozos de cadena
SELECT
SUBSTRING(idfiscal,2,6)
FROM clientes;

-- Minúsculas
SELECT
LOWER(nombre)
FROM clientes;

-- Mayúsculas
SELECT
UPPER(nombre)
FROM clientes;

-- Longuitud de una cadena
SELECT
LENGTH(nombre) AS 'longuitud', nombre
FROM clientes;

-- Reemplazar una cadena concreta por otra
SELECT
REPLACE(nombre, "Curso", "Super curso")
FROM productos;