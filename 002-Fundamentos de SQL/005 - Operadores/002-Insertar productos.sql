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


    INSERT INTO event
VALUES (
        NULL,
        -- 'Foreing key idUser', 
        'name',
        dateTime,
        'description'        
    );

    INSERT INTO `event` (`idEvent`, `idUser`, `idLocation`, `name`, `dateTime`, `description`) VALUES (NULL, '2', '3', 'Cine', '2023-12-21 18:00:00', 'Ir al cine a ver la peli Wonka');