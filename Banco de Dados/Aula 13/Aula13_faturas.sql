USE musimundos;

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


