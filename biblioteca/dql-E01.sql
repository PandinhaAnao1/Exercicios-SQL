SELECT cod, 
liv.titulo, aut.autor, 
editora,valor, 
publicacao, edicao, 
idioma 
FROM AUTOR as aut 
Left JOIN LIVRO as liv
ON codautor = autor WHERE publicacao > '2014-12-31'
ORDER BY cod;