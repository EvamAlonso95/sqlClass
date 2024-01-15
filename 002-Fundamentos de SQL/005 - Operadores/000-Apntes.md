CREATE TABLE productos 
(
    identificador INT(10) NOT NULL AUTO_INCREMENT , 
    nombre VARCHAR(150) NOT NULL , 
    descripcion TEXT NOT NULL ,
    precio DECIMAL (10,2) NOT NULL , 
    categoria ENUM ('fisico', 'virtual') NOT NULL ,
    peso DECIMAL(10,2) NOT NULL , 
    imagen VARCHAR(100) NOT NULL ,
    PRIMARY KEY (`identificador`)
) 
ENGINE = InnoDB 
COMMENT = 'En esta tabla guardaremos los productos';

La consulta que has proporcionado se utiliza para crear una nueva tabla llamada "productos" en MySQL.
CREATE TABLE productos: Indica que estás creando una nueva tabla llamada "productos".

( ... ): Contiene la definición de las columnas de la tabla.

identificador INT(10) NOT NULL AUTO_INCREMENT: Define una columna llamada "identificador" de tipo entero (INT) que no puede ser nula (NOT NULL) y se incrementará automáticamente (AUTO_INCREMENT).

nombre VARCHAR(150) NOT NULL: Define una columna llamada "nombre" de tipo cadena de caracteres variable (VARCHAR) con una longitud máxima de 150 caracteres que no puede ser nula.

descripcion TEXT NOT NULL: Define una columna llamada "descripcion" de tipo texto (TEXT) que no puede ser nula.

precio DECIMAL(10,2) NOT NULL: Define una columna llamada "precio" de tipo decimal con un total de 10 dígitos y 2 decimales que no puede ser nula.

categoria ENUM ('fisico', 'virtual') NOT NULL: Define una columna llamada "categoria" de tipo enumeración (ENUM) que solo puede contener los valores 'fisico' o 'virtual' y no puede ser nula.

peso DECIMAL(10,2) NOT NULL: Define una columna llamada "peso" de tipo decimal con un total de 10 dígitos y 2 decimales que no puede ser nula.

imagen VARCHAR(100) NOT NULL: Define una columna llamada "imagen" de tipo cadena de caracteres variable (VARCHAR) con una longitud máxima de 100 caracteres que no puede ser nula.

PRIMARY KEY (identificador): Establece la columna "identificador" como la clave primaria de la tabla.

ENGINE = InnoDB: Especifica el motor de almacenamiento InnoDB para la tabla. InnoDB es un motor de almacenamiento transaccional que proporciona características como integridad referencial y bloqueo a nivel de fila.

COMMENT = 'En esta tabla guardaremos los productos': Proporciona un comentario descriptivo sobre la tabla.

Esta estructura define una tabla llamada "productos" con varias columnas para almacenar información sobre productos, como su nombre, descripción, precio, categoría, peso e imagen. La columna "identificador" se utiliza como clave primaria y se incrementa automáticamente para identificar de manera única cada registro en la tabla.
___________________

1. Ratón físico:
INSERT INTO productos
VALUES (
        NULL,
        'Ratón',
        'Ratón de ordenador',
        15.50,
        'físico',
        0.1,
        'ratón.jpg'
    );
2. Teclado físico:
INSERT INTO productos
VALUES (
        NULL,
        'Teclado',
        'Teclado de ordenador',
        20.50,
        'físico',
        0.2,
        'teclado.jpg'
    );
3. Monitor físico:
INSERT INTO productos
VALUES (
        NULL,
        'Monitor',
        'Monitor de ordenador',
        200.50,
        'físico',
        2,
        'monitor.jpg'
    );

4. Curso virtual de SQL:

INSERT INTO productos
VALUES (
        NULL,
        'Curso',
        'Curso de SQL',
        300.50,
        'virtual',
        0,
        'cursosql.jpg'
    );
5. Curso virtual de PHP:

INSERT INTO productos
VALUES (
        NULL,
        'Curso',
        'Curso de PHP',
        200.50,
        'virtual',
        0,
        'cursophp.jpg'
    );
6. Curso virtual de Python:
INSERT INTO productos
VALUES (
        NULL,
        'Curso',
        'Curso de Phyton',
        400.50,
        'virtual',
        0,
        'cursophyton.jpg'
    );

   Las consultas que has proporcionado son sentencias INSERT que se utilizan para insertar datos en la tabla "productos". Cada INSERT agrega una nueva fila con información específica sobre un producto.  

   Cada INSERT especifica valores para todas las columnas de la tabla "productos". El valor NULL se utiliza en la columna "identificador" para que la base de datos incremente automáticamente el valor de esa columna al insertar una nueva fila. Estas consultas insertarán seis registros en la tabla "productos", cada uno representando un producto con información específica.

   _________________________________________________________________
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


Has proporcionado varias consultas SQL que utilizan distintas cláusulas y operadores en la tabla "productos".

Estas consultas utilizan operadores de comparación, operadores booleanos (AND y OR), operadores de igualdad y desigualdad, así como el operador LIKE para realizar consultas más específicas en la tabla "productos". Puedes ajustar y combinar estas cláusulas y operadores según tus necesidades específicas.

______________________________________
-- OPERADOR BETWEEN
SELECT *
FROM productos
WHERE precio BETWEEN 10 AND 100;

La consulta que has proporcionado utiliza el operador BETWEEN para seleccionar productos cuyo precio esté en el rango de 10 a 100.
1. SELECT *: Indica que se seleccionarán todas las columnas de la tabla.

2. FROM productos: Especifica la tabla de la cual deseas seleccionar los datos, en este caso, la tabla "productos".

3. WHERE precio BETWEEN 10 AND 100: Establece una condición para seleccionar solo las filas donde el valor de la columna "precio" esté en el rango de 10 a 100, inclusivo.

Esta consulta devolverá todas las columnas de las filas en la tabla "productos" donde el precio del producto esté entre 10 y 100. El operador BETWEEN es útil cuando deseas seleccionar datos que caen dentro de un rango específico.

___________________________________________
-- OPERADOR IN
SELECT *
FROM productos
WHERE
nombre IN ('Ratón', 'Teclado');

La consulta que has proporcionado utiliza el operador IN para seleccionar productos cuyo nombre sea 'Ratón' o 'Teclado'. 

1. SELECT *: Indica que se seleccionarán todas las columnas de la tabla.

2. FROM productos: Especifica la tabla de la cual deseas seleccionar los datos, en este caso, la tabla "productos".

3. WHERE nombre IN ('Ratón', 'Teclado'): Establece una condición para seleccionar solo las filas donde el valor de la columna "nombre" esté en el conjunto especificado, en este caso, 'Ratón' o 'Teclado'.

Esta consulta devolverá todas las columnas de las filas en la tabla "productos" donde el nombre del producto sea 'Ratón' o 'Teclado'. El operador IN es útil cuando deseas seleccionar datos que coincidan con uno de varios valores posibles.

____________________

Las consultas que has proporcionado realizan operaciones aritméticas en la tabla "productos" para calcular el impuesto, el total, el descuento y el precio con el descuento.

Estas consultas son ejemplos de cómo puedes realizar cálculos matemáticos en SQL para obtener información adicional sobre tus productos, como impuestos, totales y descuentos. Ten en cuenta que estas son operaciones aritméticas simples y puedes ajustarlas según tus necesidades específicas.