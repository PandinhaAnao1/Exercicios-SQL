WITH todos_vendedores AS(
    SELECT 
    vende.cdvdd,vende.nmvdd,
    COUNT(venda.status = 'Concluído') AS total_vendas
    FROM TBVENDAS AS venda 
    LEFT JOIN TBVENDEDOR AS vende   
    ON venda.cdvdd = vende.cdvdd
    GROUP BY vende.nmvdd
    ORDER BY total_vendas DESC
    )
    
SELECT 
    cdvdd,nmvdd
FROM todos_vendedores limit 1


    
    