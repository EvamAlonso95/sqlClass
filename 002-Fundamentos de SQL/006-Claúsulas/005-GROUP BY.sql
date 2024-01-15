SELECT
*
FROM productos
GROUP BY categoria;


-- No es muy útil porque nos devuelve el primer registro de cada categoría



SELECT
categoria
FROM productos
GROUP BY categoria;


-- Este sí nos devuelve las categorías que hay en productos: físico y virtual.