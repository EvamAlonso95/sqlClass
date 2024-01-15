ALTER TABLE
`usuarios` 
ADD
`fotografía` 
VARCHAR(100) NOT NULL
AFTER `teléfono`;


ALTER TABLE `user`
ADD
`idLocation` 
INT(10) NOT NULL,
ADD FOREIGN KEY (idLocation) REFERENCES location(idLocation)
AFTER `secretToken`;