USE emarket;

-- PRIMEIRO PASSO Crie uma view para que você possa organizar remessas de faturas.   
-- Indicar número da  fatura,  data da fatura e data de  envio, no formato dd/mm/yy, 
-- valor de  transporte  formatado em dois locais decimais e informações de endereço de destino,
--  incluindo endereço, cidade,  código postal e país, em uma coluna chamada Destino.

SELECT
	FaturaID AS FATURA_ID,
	DATE_FORMAT(DataFatura,"%d/%m/%y") AS DATA_FATURA,
	DATE_FORMAT(DataEnvio,"%d/%m/%y") AS DATA_ENVIO,
	FORMAT(Transporte, 2) AS TRANSPORTE,
	CONCAT(EnderecoEnvio, ", ", CidadeEnvio, ", ", CodigoPostalEnvio, ", ", PaisEnvio) AS DESTINO
FROM Faturas;

CREATE VIEW VW_DETALHES_FATURA AS(
	SELECT
		FaturaID AS FATURA_ID,
		DATE_FORMAT(DataFatura,"%d/%m/%y") AS DATA_FATURA,
		DATE_FORMAT(DataEnvio,"%d/%m/%y") AS DATA_ENVIO,
		FORMAT(Transporte, 2) AS TRANSPORTE,
		CONCAT(EnderecoEnvio, ", ", CidadeEnvio, ", ", CodigoPostalEnvio, ", ", PaisEnvio) AS DESTINO
	FROM Faturas
);



