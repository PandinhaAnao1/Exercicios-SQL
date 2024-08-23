SELECT
    aut.codautor,
    aut.nome,
    COUNT (liv.autor) AS quantidade_publicacoes
FROM livro AS liv
LEFT JOIN autor AS aut
ON  liv.autor = aut.codautor
GROUP BY aut.nome
ORDER BY quantidade_publicacoes DESC LIMIT 1
