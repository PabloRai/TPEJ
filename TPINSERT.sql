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


INSERT INTO [dbo].[SOLICITUD] (IdIncidencia, FechaDeRealizacion, Legajo, IdArea)
VALUES
(1, '2017-10-27',1,1), 
(2, '2017-10-30',2,2),
(3, '2017-11-01',3,3),
(4, '2017-11-06',4,4),
(5, '2017-11-07',5,1),
(6, '2017-11-08',6,2),
(7, '2017-11-09',7,3),
(8, '2017-11-15',8,4),
(9, '2017-11-21',9,1),
(10, '2017-11-22',10,2),
(11, '2017-11-23',11,3),
(12, '2017-11-28',12,4),
(13, '2017-12-04',13,1),
(14, '2017-12-07',14,2),
(15, '2017-12-12',15,3),
(16, '2017-12-15',1,4),
(17, '2017-12-18',2,1),
(18, '2017-12-21',3,2),
(19, '2017-12-25',4,3),
(20, '2017-12-29',5,4);

INSERT INTO [dbo].[COMENTARIO] (IdComentario, FechaYHora, IdIncidencia, Legajo, Comentario)
VALUES
(1, '2017-09-12',1,1, 'Todo bien'), 
(2, '2017-08-11',2,2, 'Todo ok'),
(3, '2017-05-09',3,3, 'No anda nada'),
(4, '2017-03-12',4,4, 'Falla a veces'),
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