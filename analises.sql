-- Regiões com mais chamados (do maior para o menor)
SELECT regiao, COUNT(*) AS total_chamados
FROM chamados
GROUP BY regiao
ORDER BY total_chamados DESC;

-- Tempo médio de resolução
SELECT AVG(DATEDIFF(day, data_abertura, data_fechamento)) AS tempo_medio
FROM chamados
WHERE status = 'Fechado';

-- Equipes mais eficientes
SELECT equipe,
       AVG(DATEDIFF(day, data_abertura, data_fechamento)) AS tempo_medio
FROM chamados
WHERE status = 'Fechado'
GROUP BY equipe
ORDER BY tempo_medio ASC;
