-- AHORA
SELECT NOW();

-- FECHA SIN HORA
SELECT CURRDATE();

-- FECHA SOLO HORA
SELECT CURRTIME();

-- FECHA CON FORMATO
-- A
SELECT DATE_FORMAT(NOW(),'%Y/%M/%D');
-- 2023/December/14th

-- B
SELECT DATE_FORMAT(NOW(),'%Y/%m/%d');
-- 2023/12/14

-- C
SELECT DATE_FORMAT(NOW(), '%Y/%m/%d %H:%i:%s');
-- 2023/12/14 15:42:36

-- DIFERENCIA ENTRE FECHAS
SELECT DATEDIFF(NOW(),'1995-11-08')/365;
-- CALCULA LA EDAD
