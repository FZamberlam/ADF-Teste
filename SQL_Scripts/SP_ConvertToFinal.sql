CREATE PROCEDURE [dbo].[SP_ConvertToFinal]
AS
BEGIN
    INSERT INTO dolar_felipe.dolar_final_felipe
	SELECT
		CONVERT(FLOAT, (SELECT REPLACE(cotacaoCompra, ',', '.'))),
		CONVERT(FLOAT, (SELECT REPLACE(cotacaoVenda, ',', '.'))),
		CONVERT(DATE, dataHoraCotacao)
	FROM dolar_felipe.dolar_stage_felipe
END