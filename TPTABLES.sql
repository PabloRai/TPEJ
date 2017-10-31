CREATE TABLE SOLICITUD (
	IdIncidencia int PRIMARY KEY,
	FechaDeRealizacion date NOT NULL,
	Legajo int NOT NULL
);

CREATE TABLE COMENTARIO (
	IdComentario int PRIMARY KEY,
	FechaYHora datetime NOT NULL,
	IdIncidencia int NOT NULL,
	Legajo int NOT NULL
);


CREATE TABLE USUARIO (
	Legajo int PRIMARY KEY,
	Nombre varchar(40) NOT NULL,
	Apellido varchar(40) NOT NULL,
	IdUbicacion int NOT NULL,
	IdDepartamento int NOT NULL
);

CREATE TABLE UBICACION (
	IdUbicacion int PRIMARY KEY,
	DescripcionU varchar(50) NOT NULL
);

CREATE TABLE DERIVACION (
	IdDerivacion int PRIMARY KEY,
	IdIncidencia int NOT NULL
);

CREATE TABLE AREA (
	IdArea int PRIMARY KEY,
	DescripcionA varchar(50) NOT NULL
);

CREATE TABLE DEPARTAMENTO (
	IdDepartamento int PRIMARY KEY,
	DescripcionD varchar(50) NOT NULL
);