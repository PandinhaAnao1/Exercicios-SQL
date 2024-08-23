WITH total_de_vendas AS(
SELECT 
    *,
    SUM( 
    CASE 
        WHEN venda.status = 'Concluído'
            THEN venda.qtd * venda.vrunt
        ELSE 0
    END 
    ) AS 'valor_total_vendas'
    FROM TBDEPENDENTE AS dep
    LEFT JOIN TBVENDEDOR AS vendedor
    ON dep.cdvdd = vendedor.cdvdd
    JOIN TBVENDAS AS venda
    ON venda.cdvdd = vendedor.cdvdd
    GROUP BY dep.cddep
    ORDER BY valor_total_vendas 
)
SELECT 
    cddep, nmdep, 
    dtnasc, valor_total_vendas 
    FROM total_de_vendas where valor_total_vendas > 0 LIMIT 1;
