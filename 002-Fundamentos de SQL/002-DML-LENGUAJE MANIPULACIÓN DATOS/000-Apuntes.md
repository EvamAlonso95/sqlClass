
LENGUAJE DE MANIPULACIÓN DE DATOS DQL
La consulta que has proporcionado es un ejemplo de una sentencia INSERT en SQL.
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

INSERT INTO clientes: Esto indica que se va a insertar una nueva fila en la tabla llamada "clientes". El nombre de la tabla va después de INSERT INTO.

VALUES: Esta palabra clave indica que los valores a insertar se proporcionarán a continuación.

NULL: El primer valor en la lista corresponde a la columna que probablemente sea una clave primaria con autoincremento o algún otro tipo de valor generado automáticamente. Al poner NULL aquí, estás indicando que se debe utilizar un valor predeterminado o que se generará automáticamente.

Datos de la empresa: Los siguientes valores corresponden a las columnas de la tabla "clientes". En orden, estos valores son:

'Nombre de la empresa1': Nombre de la empresa.
'C00001': Código de la empresa.
'Dirección de la empresa1': Dirección de la empresa.
'46012': Código postal de la empresa.
'Juan Lopez Lopez': Nombre del contacto de la empresa.
'juanlopezlopez@gmail.com': Correo electrónico del contacto de la empresa.
'logoempresa1.jpg': Nombre del archivo de imagen del logo de la empresa.
Estos valores deben coincidir con el tipo de datos y el orden de las columnas en la tabla "clientes". Es importante proporcionar valores en el mismo orden en el que están definidos en la estructura de la tabla. La cantidad de valores proporcionados debe coincidir con la cantidad de columnas en la tabla.

En resumen, la consulta está insertando una nueva fila en la tabla "clientes" con información específica sobre una empresa. Recuerda que este es solo un ejemplo, y en una aplicación real, los datos se generarían dinámicamente o se obtendrían de algún formulario o fuente externa.
_________________________________
INSERT INTO clientes (
    nombre,
    idfiscal,
    direcion,
    codigopostal
)
VALUES (
    'Nombre de la empresa2',
    'C00002',
    'Dirección de la empresa2',
    '4656120'
);

La consulta que has proporcionado es otra sentencia INSERT, pero en este caso, se especifican explícitamente las columnas a las que se insertarán los valores.

INSERT INTO clientes: Indica que se está insertando una nueva fila en la tabla "clientes".

(nombre, idfiscal, direcion, codigopostal): Enumera las columnas a las que se insertarán los valores. En este caso, se están especificando las columnas: nombre, idfiscal, direcion y codigopostal.

VALUES: Indica que los valores correspondientes se proporcionarán a continuación.

('Nombre de la empresa2', 'C00002', 'Dirección de la empresa2', '4656120'): Proporciona los valores que se insertarán en las columnas especificadas anteriormente. En orden, estos valores son:

'Nombre de la empresa2': Nombre de la empresa.
'C00002': Código fiscal o identificador fiscal de la empresa.
'Dirección de la empresa2': Dirección de la empresa.
'4656120': Código postal de la empresa.
Esta consulta es similar a la anterior, pero en este caso, se están insertando valores específicamente en algunas columnas de la tabla "clientes". Es útil cuando solo deseas proporcionar valores para algunas columnas y dejar que otras utilicen los valores predeterminados o generados automáticamente. Las columnas que no están especificadas recibirán sus valores predeterminados o nulos, dependiendo de la configuración de la tabla.
__________________________
INSERT INTO clientes
VALUES (
    'Nombre de la empresa2',
    'C00002',
    'Dirección de la empresa2',
    '4656120'
);

La consulta que has proporcionado tiene un formato inusual, ya que estás intentando realizar una inserción sin especificar las columnas en la cláusula INSERT INTO. En SQL, generalmente se espera que especifiques las columnas a las que estás insertando valores. Sin embargo, algunas bases de datos pueden permitir esta sintaxis en casos específicos.

Esta sintaxis insertará valores en todas las columnas de la tabla "clientes" en el orden en que están definidas en la tabla. Sin embargo, este enfoque puede ser propenso a errores si la estructura de la tabla cambia en el futuro (por ejemplo, si se agregan o eliminan columnas).

_________________
UPDATE clientes
SET 
personacontacto = 'Jorge Martinez García ',
emailpersonacontactoemailpersonacontacto  = 'jorgemargar@empresa2.com';

Esta consulta se utiliza para modificar los datos existentes en una o varias filas de una tabla.
UPDATE clientes: Indica que se está actualizando la tabla llamada "clientes".

SET: Indica que se van a establecer nuevos valores para las columnas especificadas.

personacontacto = 'Jorge Martinez García': Establece el valor de la columna personacontacto en la cadena 'Jorge Martinez García ' para todas las filas afectadas por la condición de la consulta (si hay alguna condición).

emailpersonacontactoemailpersonacontacto = 'jorgemargar@empresa2.com': Establece el valor de la columna emailpersonacontactoemailpersonacontacto en la cadena 'jorgemargar@empresa2.com' para todas las filas afectadas.

Ten en cuenta que esta consulta actualizará todas las filas en la tabla "clientes" para que tengan la misma información de contacto y correo electrónico. Si deseas actualizar solo un subconjunto de filas, deberías incluir una cláusula WHERE al final de tu consulta para especificar la condición que deben cumplir las filas que deseas actualizar

____________
UPDATE clientes
SET 
personacontacto = 'Jorge Martinez García ',
emailpersonacontactoemailpersonacontacto  = 'jorgemargar@empresa2.com'

WHERE

identificador=2;

incluido una cláusula WHERE, lo cual es una práctica común para asegurarte de que solo se actualicen las filas que cumplan con ciertos criterios.

UPDATE clientes: Indica que se está actualizando la tabla llamada "clientes".

SET: Indica que se van a establecer nuevos valores para las columnas especificadas.

personacontacto = 'Jorge Martinez García': Establece el valor de la columna personacontacto en la cadena 'Jorge Martinez García ' para las filas que cumplan con la condición especificada.

emailpersonacontactoemailpersonacontacto = 'jorgemargar@empresa2.com': Establece el valor de la columna emailpersonacontactoemailpersonacontacto en la cadena 'jorgemargar@empresa2.com' para las filas que cumplan con la condición especificada.

WHERE identificador = 2;: La cláusula WHERE establece la condición que deben cumplir las filas para ser actualizadas. En este caso, solo se actualizarán las filas donde el valor de la columna identificador sea igual a 2.

Esta consulta actualizará las columnas personacontacto y emailpersonacontactoemailpersonacontacto para la fila en la tabla "clientes" donde el identificador sea igual a 2. Asegúrate de que la columna identificador sea única y esté presente en tu tabla para evitar ambigüedades.