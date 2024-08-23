WITH todos_estado_vendas AS(
SELECT
    venda.estado,venda.nmpro,
    SUM(venda.qtd) AS quantidade_total,
    COUNT(venda.qtd) AS quantidade_meida_vendas
    FROM TBVENDAS AS venda
    WHERE venda.status = 'Concluído'
    GROUP BY venda.estado, venda.nmpro
)

SELECT 
    estado,nmpro,
    ROUND((quantidade_total/CAST(quantidade_meida_vendas AS FLOAT)),4) AS quantidade_media
FROM todos_estado_vendas 
ORDER BY estado, nmpro
