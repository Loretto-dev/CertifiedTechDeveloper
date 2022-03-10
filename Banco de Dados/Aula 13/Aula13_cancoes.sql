USE musimundos;

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
    
    

