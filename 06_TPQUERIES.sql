-- Indique las incidencias pendientes con m�s de 5 d�as de antig�edad
SELECT S.IdIncidencia
FROM SOLICITUD S
WHERE DATEDIFF(DAY, S.FechaDeRealizacion, GETDATE()) > 5;