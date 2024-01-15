-- OPERADORES MAYOR QUE > Y MENOR QUE <
SELECT *
FROM productos
WHERE precio > 100;


SELECT *
FROM productos
WHERE precio < 100;


-- OPERADORES DE IGUALDAD Y DESIGUALDAD
SELECT *
FROM productos
WHERE precio = 15.50;

SELECT *
FROM productos
WHERE precio != 15.50;

-- OPERADORES BOOLEANOS AND Y OR
SELECT *
FROM productos
WHERE precio > 100
AND
categoria = 'fisico';

SELECT *
FROM productos
WHERE precio > 100
OR
categoria = 'fisico';

-- OPERADOR MAYOR O MENOR IGUAL A QUE 
SELECT *
FROM productos
WHERE precio >= 200.50;


SELECT *
FROM productos
WHERE precio <= 200.50;


-- OPERADOR LIKE -> tE BUSCA LO QUE HAYA ESCRITO DESPUES DEL LIKE 
-- (SI EL % ESTA AL FINAL QUIERE DECIR QUE EMPEIZAN POR ES PALABRA Y 
-- LUEGO PUEDEN TENER LO QUE QUIERA)
SELECT *
FROM productos
WHERE
nombre LIKE 'Curso%';

-- OPERADOR NOT LIKE
SELECT *
FROM productos
WHERE
nombre NOT LIKE 'Curso%';