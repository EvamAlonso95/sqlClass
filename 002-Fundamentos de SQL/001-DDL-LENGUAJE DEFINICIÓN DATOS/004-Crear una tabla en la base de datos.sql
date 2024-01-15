CREATE TABLE `tablaPrueba`.`usuarios` 
(
    `identificador` INT(10) NOT NULL AUTO_INCREMENT , 
    `nombre` VARCHAR(50) NOT NULL , 
    `contrasena` VARCHAR(50) NOT NULL ,
    `nombrePropio` VARCHAR(50) NOT NULL , 
    `apellidos` VARCHAR(100) NOT NULL ,
    `email` VARCHAR(100) NOT NULL , 
    `teléfono` VARCHAR(50) NOT NULL ,
    PRIMARY KEY (`identificador`)
) 
ENGINE = InnoDB 
COMMENT = 'En esta tabla guardaremos los usuarios';




CREATE TABLE `event` 
(
    `idEvent` INT(10) NOT NULL AUTO_INCREMENT ,
    `idUser` INT(10) NOT NULL,
    `idLocation` INT(10) NOT NULL,
    `name` VARCHAR(50) NOT NULL , 
    `dateTime` DATETIME NOT NULL ,
    `description` VARCHAR(250) NOT NULL , 
    FOREIGN KEY (idUser) REFERENCES user(idUser),
    FOREIGN KEY (idLocation) REFERENCES location(idLocation),
    PRIMARY KEY (`idEvent`)
) 
ENGINE = InnoDB 
COMMENT = 'En esta tabla guardaremos los usuarios';