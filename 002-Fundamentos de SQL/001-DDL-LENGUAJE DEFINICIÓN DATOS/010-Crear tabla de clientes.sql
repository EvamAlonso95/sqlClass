CREATE TABLE clientes
(
    identificador INT(10) NOT NULL AUTO_INCREMENT , 
    nombre VARCHAR(150) NOT NULL , 
    idfiscal VARCHAR(50) NOT NULL ,
    direcion VARCHAR(250) NOT NULL , 
    codigopostal VARCHAR(100) NOT NULL ,
    personacontacto VARCHAR(250) NOT NULL , 
    emailpersonacontactoemailpersonacontacto VARCHAR(100) NOT NULL ,
    imagenemailpersonacontacto VARCHAR(100) NOT NULL , 
    PRIMARY KEY (identificador)
) 
ENGINE = InnoDB 
COMMENT = 'En esta tabla guardaremos los clientes';