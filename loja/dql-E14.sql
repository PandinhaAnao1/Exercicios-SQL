WITH todos_estado_vendas AS(
SELECT 
    estado,
    SUM(venda.qtd * venda.vrunt) AS valor_total,
    COUNT(venda.qtd) AS quantidade_venda
    FROM TBVENDAS AS venda
    WHERE venda.status = 'Concluído'
    GROUP BY venda.estado
)

SELECT 
    estado,
    ROUND((valor_total/CAST (quantidade_venda as float)),2) AS gastomedio
FROM todos_estado_vendas 
    ORDER BY gastomedio DESC