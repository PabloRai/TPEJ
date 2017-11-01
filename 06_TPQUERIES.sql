-- Indique las incidencias pendientes con más de 5 días de antigüedad
SELECT S.IdIncidencia
FROM SOLICITUD S
WHERE DATEDIFF(DAY, S.FechaDeRealizacion, GETDATE()) > 5;

-- Indique a los usuarios que hayan solicitado todos los tipos de nivel 1 distintos
SELECT DISTINCT S.Legajo FROM SOLICITUD S
JOIN TIPIFICACION T3 ON S.IdTipificacion = T3.IdTipificacion
JOIN TIPIFICACION T2 ON T3.HeredaDe = T2.IdTipificacion
JOIN TIPIFICACION T1 ON T2.HeredaDe = T1.IdTipificacion
GROUP BY S.Legajo
HAVING COUNT(DISTINCT T1.IdTipificacion) =
	(SELECT count(*) FROM TIPIFICACION T WHERE t.Nivel = 1)


-- Indique en orden descendente la cantidad de incidencias por cada tipificación
SELECT T1.IdTipificacion AS TipoNivel1,
	T2.IdTipificacion AS TipoNivel2,
	T3.IdTipificacion AS TipoNivel3, COUNT(*) AS Cantidad
FROM SOLICITUD S
JOIN TIPIFICACION T3 ON S.IdTipificacion = T3.IdTipificacion
JOIN TIPIFICACION T2 ON T3.HeredaDe = T2.IdTipificacion
JOIN TIPIFICACION T1 ON T2.HeredaDe = T1.IdTipificacion
GROUP BY T3.IdTipificacion, T2.IdTipificacion, T1.IdTipificacion
ORDER BY COUNT(*) DESC
