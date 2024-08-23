WITH editoras_com_estado AS(
SELECT
   codEditora, nome, estado, cidade
FROM ENDERECO 
LEFT JOIN EDITORA
ON codEndereco = endereco)

SELECT 
count(editora) as quantidade,
nome, estado, cidade
FROM editoras_com_estado LEFT JOIN LIVRO
ON codEditora = editora
group by nome
order BY quantidade DESC LIMIT 2;