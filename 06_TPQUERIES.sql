-- Indique las incidencias pendientes con más de 5 días de antigüedad
SELECT S.IdIncidencia
FROM SOLICITUD S
WHERE DATEDIFF(DAY, S.FechaDeRealizacion, GETDATE()) > 5;