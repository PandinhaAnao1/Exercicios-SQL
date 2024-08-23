WITH produtos_vendidos AS(
SELECT 
    venda.cdpro,
    venda.nmpro, SUM(venda.qtd) AS soma_venda
    FROM TBVENDAS  AS venda
    WHERE venda.dtven BETWEEN '2014-02-03' AND '2018-02-02' 
    AND venda.status = 'Concluído'
    GROUP BY  venda.cdpro, venda.nmpro
    ORDER BY soma_venda DESC
    
)

SELECT cdpro, nmpro from produtos_vendidos LIMIT 1;