INSERT INTO [dbo].[UBICACION] (IdUbicacion, DescripcionU) 
VALUES
(1, 'Liniers'), 
(2, 'Ciudadela'),
(3, 'Puerto Madero'),
(4, 'Flores'),
(5, 'Caballito'),
(6, 'Villa Luro'),
(7, 'Mataderos'),
(8, 'Palermo'),
(9, 'Belgrano'),
(10, 'Almagro'),
(11, 'Lanús'),
(12, 'Banfield'),
(13, 'Florencio Varela'),
(14, 'San Justo'),
(15, 'Villa Martelli');


INSERT INTO [dbo].[DEPARTAMENTO] (IdDepartamento, DescripcionD)
VALUES
(1, 'Recursos Humanos'), 
(2, 'Producción'),
(3, 'Administración'),
(4, 'Finanzas');


INSERT INTO [dbo].[AREA] (IdArea, DescripcionA)
VALUES
(1, 'A'), 
(2, 'B'),
(3, 'C'),
(4, 'D');


INSERT INTO [dbo].[USUARIO] (Legajo, Nombre, Apellido, IdUbicacion, IdDepartamento, Estado)
VALUES
(1, 'Juan','Regueira',1,1,1), 
(2, 'Pablo','Raimondo',2,2,1),
(3, 'Nicolas','Bedetti',3,3,1),
(4, 'Leonel','Avalos',4,4,1),
(5, 'Damian','Luna',5,1,1), 
(6, 'Brenda','Villar',6,2,1),
(7, 'Nina','Satragno',7,3,1),
(8, 'Guido','Russo',8,4,1),
(9, 'Martin','Avila',9,1,1), 
(10, 'Pablo','Avalos',10,2,1),
(11, 'Micaela','De Rito',11,3,1),
(12, 'Nicolas','Sapaya',12,4,1),
(13, 'Luciano','Priolo',13,1,1), 
(14, 'Alex','Pica',14,2,1),
(15, 'Leonel','Indurain',15,3,1);

INSERT INTO [dbo].[TIPIFICACION] (IdTipificacion, Nivel, DescripcionT, HeredaDe)
VALUES
(1,1,'Reclamo',NULL), 
(2,1,'Consulta',NULL),

(3,2,'Laptop',1),
(4,2,'PC',1),
(5,2,'Servicios WEB',2),

(6,3,'Flex roto', 3),
(7,3,'Touchpad roto', 3),
(8,3,'Monitor abollado', 4),
(9,3,'Gabinete no enciende', 4),
(10,3,'No funciona internet', 5),
(11,11,'No se puede conectar con la intranet', 5);

INSERT INTO [dbo].[SOLICITUD] (IdIncidencia, FechaDeRealizacion, Legajo, IdArea, IdTipificacion)
VALUES
(1, '2016-10-27',1,1,6), 
(2, '2016-10-30',2,2,6),
(3, '2016-11-01',3,3,7),
(4, '2016-11-06',4,4,7),
(5, '2016-11-07',5,1,7),
(6, '2016-11-08',6,2,7),
(7, '2016-11-09',7,3,6),
(8, '2016-11-15',8,4,8),
(9, '2016-11-21',9,1,9),
(10, '2016-11-22',10,2,10),
(11, '2016-11-23',11,3,11),
(12, '2016-11-28',12,4,11),
(13, '2016-12-04',13,1,11),
(14, '2016-12-07',14,2,10),
(15, '2016-12-12',15,3,9),
(16, '2016-12-15',1,4,8),
(17, '2017-10-25',2,1,7),
(18, '2017-10-26',3,2,6),
(19, '2017-10-29',4,3,11),
(20, '2017-10-31',5,4,11);

INSERT INTO [dbo].[COMENTARIO] (IdComentario, FechaYHora, IdIncidencia, Legajo, Comentario)
VALUES
(1, '2016-09-12',1,1, 'Todo bien'), 
(2, '2016-08-11',2,2, 'Todo ok'),
(3, '2016-05-09',3,3, 'No anda nada'),
(4, '2016-03-12',4,4, 'Falla a veces'),
(5, '2017-05-05',5,5, 'Esto es un desastre');


INSERT INTO [dbo].[DERIVACION] (IdDerivacion, IdIncidencia, IdOrigen, IdDestino)
VALUES
(1,1,1,1 ), 
(2,2,2,2),
(3,3,3,3 ),
(4,4,4,4),
(5,5,1,2),
(6,6,1,3),
(7,7,1,4),
(8,8,2,1),
(9,9,2,3),
(10,10,2,4),
(11,11,3,1),
(12,12,3,2),
(13,13,3,4),
(14,14,4,1),
(15,15,4,2);