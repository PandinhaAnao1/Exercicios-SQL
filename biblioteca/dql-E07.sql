SELECT aut.nome 
FROM autor AS aut 
LEFT JOIN livro AS liv
ON aut.codAutor = liv.autor
WHERE liv.cod IS NULL

