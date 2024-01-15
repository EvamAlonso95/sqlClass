CREATE USER 'evaalonso'@'localhost' IDENTIFIED WITH caching_sha2_password BY '***';

La consulta que has proporcionado se utiliza para crear un nuevo usuario en MySQL. 

1. CREATE USER: Indica que estás creando un nuevo usuario en MySQL.

2. 'evaalonso'@'localhost': Especifica el nombre de usuario (evaalonso) y la ubicación desde la cual se permitirá la conexión (localhost). Esto significa que el usuario solo podrá conectarse desde el mismo servidor donde se ejecuta MySQL.

3. IDENTIFIED WITH caching_sha2_password: Establece el método de autenticación para el usuario. En este caso, se utiliza el método caching_sha2_password, que es un método de autenticación más seguro.

BY '***': Proporciona la contraseña para el usuario. Ten en cuenta que en tu consulta has usado *** como un marcador de posición. En una situación real, deberías reemplazar *** con la contraseña real que deseas asignar al usuario.


______

GRANT 
SELECT, 
SHOW VIEW ON *.* 
TO 'evaalonso'@'localhost';
ALTER USER 'evaalonso'@'localhost' 
REQUIRE NONE 
WITH 
MAX_QUERIES_PER_HOUR 100
MAX_CONNECTIONS_PER_HOUR 100
MAX_UPDATES_PER_HOUR 100 
MAX_USER_CONNECTIONS 100;

La consulta que has proporcionado incluye una combinación de comandos GRANT y ALTER USER en MySQL. Vamos a desglosarla:

1. GRANT SELECT, SHOW VIEW ON . TO 'evaalonso'@'localhost';
    1.1. GRANT SELECT, SHOW VIEW: Otorga permisos SELECT y SHOW VIEW al usuario especificado.
    1.2.ON *.*: Indica que los permisos se están otorgando a todas las bases de datos (*) y todas las tablas (*).
    1.3.TO 'evaalonso'@'localhost': Especifica el usuario (evaalonso) y la ubicación (localhost) al que se le están otorgando los permisos.
2. ALTER USER 'evaalonso'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 100 MAX_CONNECTIONS_PER_HOUR 100 MAX_UPDATES_PER_HOUR 100 MAX_USER_CONNECTIONS 100;

    2.1.ALTER USER 'evaalonso'@'localhost': Indica que estás modificando las propiedades del usuario especificado.
    2.2.REQUIRE NONE: Establece que el usuario no tiene requisitos específicos de autenticación.
    2.3.WITH: Indica que se van a especificar opciones adicionales.
    2.4.MAX_QUERIES_PER_HOUR 100: Limita el usuario a realizar hasta 100 consultas por hora.
    2.5.MAX_CONNECTIONS_PER_HOUR 100: Limita el usuario a realizar hasta 100 conexiones por hora.
    2.6.MAX_UPDATES_PER_HOUR 100: Limita el usuario a realizar hasta 100 actualizaciones por hora.
    2.7.MAX_USER_CONNECTIONS 100: Limita el usuario a tener hasta 100 conexiones simultáneas.
Estos comandos se utilizan para otorgar permisos específicos al usuario 'evaalonso' y establecer ciertas restricciones en cuanto a la frecuencia y cantidad de operaciones que puede realizar. Asegúrate de ajustar estos valores según los requisitos de tu aplicación y la seguridad que deseas establecer.


__________________
GRANT ALL PRIVILEGES ON `empresa`.* TO 'evaalonso'@'localhost';

La consulta que has proporcionado utiliza el comando GRANT para otorgar todos los privilegios en una base de datos específica a un usuario en MySQL.

1. GRANT ALL PRIVILEGES: Otorga todos los privilegios disponibles en la base de datos y tablas especificadas.

2. **ON \empresa`.***: Indica la base de datos (empresa en este caso) en la cual se están otorgando los privilegios. El uso de comillas invertidas (\) alrededor del nombre de la base de datos es necesario si el nombre de la base de datos contiene caracteres especiales o espacios.

3. TO 'evaalonso'@'localhost': Especifica el usuario (evaalonso) y la ubicación (localhost) al que se le están otorgando los privilegios.

Esta consulta otorga al usuario 'evaalonso' todos los privilegios disponibles en la base de datos llamada 'empresa'. Los privilegios incluyen permisos para realizar operaciones como SELECT, INSERT, UPDATE, DELETE, entre otros, en todas las tablas dentro de esa base de datos.

Ten en cuenta que otorgar todos los privilegios puede ser un riesgo de seguridad si no es necesario. Es buena práctica otorgar solo los privilegios necesarios para que el usuario pueda realizar sus tareas específicas. Asegúrate de revisar y ajustar los privilegios según los requisitos de tu aplicación y los principios de seguridad.

__________________

SELECT PASSWORD("evaalonso");

Esta consulta devolverá el resultado de aplicar la función PASSWORD() a la cadena "evaalonso". Ten en cuenta que el uso de la función PASSWORD() es ahora obsoleto en versiones más recientes de MySQL, y se recomienda utilizar las funciones más modernas y seguras proporcionadas por MySQL.

Si estás utilizando una versión más reciente de MySQL, te recomendaría utilizar el comando CREATE USER o ALTER USER para establecer o modificar contraseñas. 

CREATE USER 'evaalonso'@'localhost' IDENTIFIED BY 'tu_contraseña_segura';


