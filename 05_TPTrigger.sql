CREATE TRIGGER DarDeBaja ON [dbo].[USUARIO]
INSTEAD OF DELETE
AS
	DECLARE @Leg int;
	SELECT @Leg = d.Legajo FROM deleted d;
	BEGIN
		UPDATE [dbo].[USUARIO]
		SET Estado = 0
		WHERE Legajo = @Leg;
		UPDATE [dbo].[SOLICITUD]
		SET Estado = 0
		WHERE Legajo = @Leg;
	END;
