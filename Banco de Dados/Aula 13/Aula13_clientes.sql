USE musimundos;

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