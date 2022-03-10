-- PROCEDURE SEM PARAMETRO NENHUM QUE ME RETORNA A DATA ATUAL ESCRIT
DELIMITER $$
	CREATE PROCEDURE SP_GET_DATE()
    BEGIN
		SELECT
			CONCAT(
				DAYNAME(CURRENT_DATE()), ', ',
                DAY(CURRENT_DATE()), ', ',
                MONTHNAME(CURRENT_DATE()), ', ',
                YEAR(CURRENT_DATE())
            ) AS 'CURRENT DATE';
	END $$

CALL SP_GET_DATE();

-- PROCEDURE PARA CRIPTOGRAFAR A SENHA DE UM USUÁRIO A PARTIR DO ID INFORMADO
SELECT
	*
FROM usuario;

DELIMITER $$
CREATE PROCEDURE SP_CRIPTOGRAFA_SENHA(
	IN paramIdUsuario INT
)
BEGIN
	UPDATE
		usuario
	SET
		senha = MD5(senha)
	WHERE
		idUsuario = paramIdUsuario;
END $$

CALL SP_CRIPTOGRAFA_SENHA(1);

-- ----------------------------------------------------------

-- DEVOLVE A DATA DE HOJE, COM ALGUMAS INFORMAÇÕES A MAIS
DELIMITER $$
CREATE PROCEDURE SP_GET_DATE_FORMATADO(
	OUT retorno VARCHAR(255)
)
BEGIN
	SELECT
		CONCAT(
			'DATA DE HOJE = ', ', ',
			DAYNAME(CURRENT_DATE()), ', ',
			DAY(CURRENT_DATE()), ', ',
			MONTHNAME(CURRENT_DATE()), ', ',
			YEAR(CURRENT_DATE())
		) INTO retorno;
END $$

CALL SP_GET_DATE_FORMATADO(@retorno);
SELECT @retorno;
-- -------------------------------------------------------

-- PROCEDURE QUE ME RETORNA UM VALOR, SOBRE UMA DETERMINADA PORCENTAGEM
DELIMITER $$
CREATE PROCEDURE GET_VALOR(
	INOUT valor VARCHAR(255),
    IN porcentagem DECIMAL(10,2)
)
BEGIN
	SET valor = CONCAT(porcentagem, '% de ', valor, ' Ã© ', ROUND(porcentagem*valor/100, 2));
END $$

SET @valor = 2000;
SET @porcentagem = 50;
CALL GET_VALOR(@valor, @porcentagem);

SELECT @valor;
