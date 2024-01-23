CREATE VIEW balanco_financeiro_trimestral AS
SELECT YEAR(data) AS ano, QUARTER(data) AS trimestre,
SUM(valor) AS balanco FROM vendas
GROUP BY ano, trimestre
ORDER BY ano, trimestre;

SELECT * FROM balanco_financeiro_trimestral;

CREATE VIEW quantidade_veiculos_estoque AS
SELECT COUNT(*) AS total_veiculos
FROM veiculos
WHERE status = 'Disponível';

SELECT * FROM quantidade_veiculos_estoque;
