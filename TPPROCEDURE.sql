CREATE PROCEDURE CheckStatus 
			@Legajo bit
AS
	SELECT *
	FROM [dbo].[SOLICITUD] S
	WHERE S.Legajo = @Legajo AND S.Estado = 1; 




