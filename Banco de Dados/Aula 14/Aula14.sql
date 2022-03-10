USE musimundos;

SELECT
	*
FROM 
	faturas;

-- CONSULTA PARA BUSCAR UM ÚNICO CLIENTE, O SOMATÓRIO DE TODAS AS SUAS FATURAS, BEM COMO A MÉDIA E A QUANTIDADE
SELECT
	id_cliente,
    SUM(valor_total) AS 'Somatório das suas faturas',
    FORMAT(AVG(valor_total), 2) AS 'Média do Valor de suas faturas',
    COUNT(*) AS 'Quantidade de faturas do cliente'
FROM faturas
GROUP BY
	id_cliente
ORDER BY
	id_cliente;
    
-- JOINS
-- REPRESENTAÇÃO 1 : 1
USE filmes_db;

SELECT
	*
FROM filmes;

SELECT 
	*
FROM generos;

SELECT
		f.titulo AS 'Nome do filme',
        g.nome AS 'Genero do filme'
FROM filmes AS f
INNER JOIN generos AS g ON g.id = f.genero_id;

-- REPRESENTAÇÃO 1 : N
SELECT
	*
FROM series;

SELECT
	*
FROM temporadas;

SELECT
	s.titulo AS 'Nome da série',
    t.titulo AS 'Titulo da Temporada',
    t.numero AS 'Nr temporada'
FROM series AS s
INNER JOIN temporadas AS t ON t.serie_id = s.id
WHERE
	s.titulo = 'Game of Thrones';

-- REPRESENTAÇÃO N : N
SELECT
 *
FROM atores;

SELECT 
	*
FROM ator_filme;

SELECT
	f.titulo AS 'Nome do filme',
    a.nome AS 'Nome do ator'
FROM filmes AS f
INNER JOIN ator_filme AS af ON af.movie_id = f.id
INNER JOIN atores AS a ON a.id = af.ator_id
ORDER BY
	a.nome;


    