SELECT 
        au.nome,
        au.codAutor,
        au.nascimento,
        COUNT(li.autor) AS "quantidade"
    
    FROM AUTOR AS au LEFT JOIN LIVRO AS li
    ON au.codAutor = li.autor

GROUP BY au.nome
ORDER BY au.nome