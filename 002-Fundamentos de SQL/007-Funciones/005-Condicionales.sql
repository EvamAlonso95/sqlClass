-- IF
SELECT 
*,
IF (peso<=1,'Paquete','Caja') AS 'Embalaje de envío'
FROM productos;

-- IF ANIDADO
SELECT 
*,
IF (peso<=1,
    IF(peso>0, 'Paquete', 'No aplicable'),
    'Caja') AS 'Embalaje de envío'
FROM productos;

-- CASE: PEQUEÑA ESTRUCTURA SWITCH
SELECT 
*,
    CASE
        WHEN precio <=40 THEN 'Barato'
        ELSE 'Caro'
    END AS 'Tipo de producto'
FROM productos;