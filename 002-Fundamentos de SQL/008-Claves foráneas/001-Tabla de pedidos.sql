CREATE TABLE pedidos
(
    identificador INT(10) NOT NULL AUTO_INCREMENT , 
    fecha DATE NOT NULL , 
    cliente_nombre INT(10) NOT NULL , 
    FOREIGN KEY (cliente_nombre) REFERENCES clientes(identificador),
    PRIMARY KEY (identificador)
) ENGINE = MyISAM;