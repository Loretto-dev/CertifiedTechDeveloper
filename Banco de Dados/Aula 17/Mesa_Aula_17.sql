USE emarket;

-- VIEW - Parte I

CREATE VIEW VW_CLIENTES AS (
SELECT
	ClienteID AS cl,
	Contato AS Ct,
    Fax AS FX,
    Telefone AS tel
FROM clientes
);

SELECT 
	ClienteID AS cl,
    Telefone AS tel,
    Fax AS FX
FROM clientes WHERE FX = " ";

SELECT
	*
FROM VW_CLIENTES WHERE FX = " ";

CREATE VIEW VW_FORNECEDORES AS (
SELECT
	ProvedorID AS ID,
    Contato AS CONTATO,
	Empresa AS EMPRESA,
    CONCAT(Endereco, ", ", Cidade, ", " , CodigoPostal, ", ", Pais) AS ENDERECO
FROM provedores
);

DROP VIEW VW_FORNECEDORES;

SELECT
	ProvedorID AS ID,
    Contato AS CONTATO,
	Empresa AS EMPRESA,
    Endereco AS ENDERECO
FROM provedores WHERE ENDERECO LIKE "Av. das Americanas%";

-- VIEW - Parte II - Desafio
CREATE VIEW VW_DESAFIO AS (
	SELECT 
		ProdutoID AS ID,
		ProdutoNome AS PRODUTO,
		FORMAT(PrecoUnitario, 0) AS PRECOUNITARIO,
		UnidadesEstoque AS ESTOQUE,
		NivelReabastecimento AS ENCOMENDAS,
		CASE
			WHEN UnidadesPedidas = 0 THEN "BAIXA"
			WHEN UnidadesPedidas = 5 < UnidadesEstoque THEN "URGENTE"
			WHEN UnidadesPedidas < UnidadesEstoque THEN "MÉDIA"
			ELSE "PRIORITÁRIO"
			END AS PRIORIDADE
	FROM produtos
);






