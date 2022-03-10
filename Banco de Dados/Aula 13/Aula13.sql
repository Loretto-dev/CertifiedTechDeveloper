USE musimundos;
-- PLANILHA FATURAS --
SELECT
	MAX(valor_total),
    id,
    cidade_cobranca
FROM
	faturas
WHERE
	cidade_cobranca = 'Oslo';

SELECT
	MIN(valor_total),
    id,
    cidade_cobranca
FROM
	faturas;

SELECT
	AVG(valor_total),
    id,
    pais_cobranca
FROM
	faturas
WHERE
	pais_cobranca = 'Canada';

SELECT
	COUNT(*),
    id,
    pais_cobranca
FROM
	faturas
WHERE
	pais_cobranca = 'Canada';
    
SELECT
	SUM(valor_total),
    id
FROM
	faturas;

SELECT
	valor_total,
    id,
    data_fatura
FROM
	faturas
WHERE
	valor_total < (SELECT AVG(valor_total) FROM faturas);

-- PLANILHA EMPREGADOS --
SELECT
	MAX(data_nascimento),
    nome,
    sobrenome
FROM
	empregados;
    

SELECT
	MIN(data_nascimento),
    nome,
    sobrenome
FROM
	empregados;
    
SELECT
	DATE_FORMAT(data_nascimento,'%d %M %Y'),
    nome,
    sobrenome
FROM
	empregados;
    
SELECT
	DATE_FORMAT(data_nascimento,'%d %M %Y'),
    nome,
    sobrenome
FROM
	empregados;
    
-- PLANILHA CANCOES --
SELECT
	COUNT(compositor)
FROM
	cancoes
WHERE
	compositor = 'AC/DC';


SELECT
	AVG(duracao_milisegundos)
FROM
	cancoes;
    
SELECT
	AVG(bytes),
    compositor
FROM
	cancoes
WHERE
	compositor = 'AC/DC';
    
-- PLANILHA CLIENTES --

SELECT
	COUNT(cidade)
FROM
	clientes
WHERE
	cidade = 'São Paulo';
    
SELECT
	COUNT(cidade)
FROM
	clientes
WHERE
	cidade = 'Paris';
    
SELECT
	COUNT(email)
FROM
	clientes
WHERE
	email LIKE '%yahoo%';
