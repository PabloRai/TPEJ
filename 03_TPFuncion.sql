CREATE FUNCTION HORAS (@IdIncidencia int)
RETURNS INTEGER
AS
BEGIN
	declare @fecha date;
	SET @fecha = (SELECT S.FechaDeRealizacion 
					FROM [dbo].[SOLICITUD] S
					WHERE S.IdIncidencia = @IdIncidencia)
	RETURN DATEDIFF(HH, @fecha ,GETDATE())
END;