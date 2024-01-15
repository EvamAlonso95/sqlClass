-- MULTIPLICACION
SELECT
    nombre AS 'Nombre del producto',
    descripcion AS 'Descripción del producto',
    precio AS 'Precio del producto',
    precio * 0.21 AS 'Impuesto IVA 21%'
FROM productos;

-- SUMA
SELECT
    nombre AS 'Nombre del producto',
    descripcion AS 'Descripción del producto',
    precio AS 'Precio del producto',
    precio * 0.21 AS 'Impuesto IVA 21%',
    precio + precio * 0.21 AS 'Total'
FROM productos;

-- DIVISION
SELECT
    nombre AS 'Nombre del producto',
    descripcion AS 'Descripción del producto',
    precio AS 'Precio del producto',
    precio * 0.21 AS 'Impuesto IVA 21%',
    precio + precio * 0.21 AS 'Total', (precio + precio * 0.21) / 10 AS 'Descuento 10 %'
FROM productos;

-- RESTA
SELECT
    nombre AS 'Nombre del producto',
    descripcion AS 'Descripción del producto',
    precio AS 'Precio del producto',
    precio * 0.21 AS 'Impuesto IVA 21%',
    precio + precio * 0.21 AS 'Total', (precio + precio * 0.21) / 10 AS 'Descuento 10 %', (precio + precio * 0.21) - (precio + precio * 0.21) / 10 AS 'Precio con el descuento'
FROM productos;