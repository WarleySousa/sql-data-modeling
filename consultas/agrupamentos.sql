-- ===========================================================================
-- ESTUDOS DE SQL: Agrupamentos, Filtros e Subqueries
-- ===========================================================================

-- 1. Contagem de cursos com mais de 30 aulas agrupados por ano.
-- Filtra apenas os anos acima de 2013 e ordena o resultado de forma decrescente.
SELECT ano, COUNT(*) 
FROM cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano > 2013
ORDER BY COUNT(*) DESC;

-- 2. Cálculo da média geral da carga horária de todos os cursos cadastrados.
SELECT AVG(carga) 
FROM cursos;

-- 3. Agrupamento de cursos por carga horária (lançados após 2015).
-- Utiliza uma subquery para exibir apenas os grupos cuja carga horária seja maior que a média geral.
SELECT carga, COUNT(*) 
FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);

-- 4. Contagem total de gafanhotos agrupada por profissão.
SELECT profissao, COUNT(*) 
FROM gafanhotos
GROUP BY profissao;

-- 5. Contagem de gafanhotos nascidos após 01/Jan/2005, agrupada por sexo.
SELECT sexo, COUNT(*) 
FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

-- 6. Consulta de todos os registros da tabela gafanhotos.
SELECT * FROM gafanhotos;

-- 7. Contagem de gafanhotos estrangeiros agrupada por país de origem.
-- Exibe apenas os países que possuem mais de 3 gafanhotos cadastrados.
SELECT nacionalidade, COUNT(*) 
FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(*) > 3;

-- 8. Agrupamento por altura de gafanhotos que pesam mais de 100kg.
-- Utiliza uma subquery no HAVING para exibir apenas as alturas que estão acima da média geral de todos os cadastrados.
SELECT altura, COUNT(*) 
FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);