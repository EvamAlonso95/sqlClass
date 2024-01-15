INSERT INTO clientes VALUES (
	NULL,
    'Nombre de la empresa1',
    'C00001',
    'Dirección de la empresa1',
    '46012',
    'Juan Lopez Lopez',
    'juanlopezlopez@gmail.com',
    'logoempresa1.jpg'   
);


-- EJEMPLO DE UNA SENTENCIA INSERT EN SQL
-- INSERT INTO clientes: Esto indica que se va a insertar una nueva fila en 
-- la tabla llamada "clientes". El nombre de la tabla va después de INSERT INTO.

-- VALUES: Esta palabra clave indica que los valores a insertar se proporcionarán
--  a continuación.

-- NULL: El primer valor en la lista corresponde a la columna que probablemente
--  sea una clave primaria con autoincremento o algún otro tipo de valor generado 
-- automáticamente. Al poner NULL aquí, estás indicando que se debe utilizar un valor 
-- predeterminado o que se generará automáticamente.

-- Datos de la empresa: Los siguientes valores corresponden a las columnas de la tabla "clientes". En orden, estos valores son:

-- 'Nombre de la empresa1': Nombre de la empresa.
-- 'C00001': Código de la empresa.
-- 'Dirección de la empresa1': Dirección de la empresa.
-- '46012': Código postal de la empresa.
-- 'Juan Lopez Lopez': Nombre del contacto de la empresa.
-- 'juanlopezlopez@gmail.com': Correo electrónico del contacto de la empresa.
-- 'logoempresa1.jpg': Nombre del archivo de imagen del logo de la empresa.
-- Estos valores deben coincidir con el tipo de datos y el orden de las columnas en la tabla "clientes". Es importante proporcionar valores en el mismo orden en el que están definidos en la estructura de la tabla. La cantidad de valores proporcionados debe coincidir con la cantidad de columnas en la tabla.

-- En resumen, la consulta está insertando una nueva fila en la tabla "clientes" con información específica sobre una empresa. Recuerda que este es solo un ejemplo, y en una aplicación real, los datos se generarían dinámicamente o se obtendrían de algún formulario o fuente externa.