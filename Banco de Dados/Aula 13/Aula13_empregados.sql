USE musimundos;

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
    
