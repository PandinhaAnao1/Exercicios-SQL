WITH todos_autores AS (
    SELECT * FROM autor AS aut
    LEFT JOIN livro AS liv
    ON aut.codautor = liv.autor 
    LEFT JOIN editora AS edit
    ON liv.editora = edit.codEditora
    LEFT JOIN endereco AS ende
    ON edit.endereco = ende.codEndereco
)

SELECT distinct
    nome
    FROM todos_autores 
    WHERE 
        UPPER(estado) != "PARANÁ" AND  
        UPPER(estado) != "RIO GRANDE DO SUL" AND 
        UPPER(estado) != "SANTA CATARINA"
    ORDER BY nome
