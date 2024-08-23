WITH total_vendas_vendedor AS(
SELECT 
    vendedor.nmvdd, (CAST(vendedor.perccomissao AS FLOAT)/100) AS perctcommis,
    SUM(venda.vrunt * venda.qtd) AS valor_total_vendas
    FROM TBVENDAS AS venda
    LEFT JOIN TBVENDEDOR AS vendedor 
    ON venda.cdvdd = vendedor.cdvdd
    WHERE venda.status = 'Concluído'
    GROUP BY vendedor.nmvdd
)


SELECT
    nmvdd AS vendedor,valor_total_vendas,
    ROUND((valor_total_vendas * perctcommis),2) AS comissao
FROM total_vendas_vendedor
    ORDER BY comissao DESC;