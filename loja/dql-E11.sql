SELECT 
    cdcli, nmcli, SUM(venda.qtd * venda.vrunt) AS gasto 
    FROM TBVENDAS AS venda
    WHERE venda.status = 'Concluído'
    GROUP BY nmcli
    ORDER BY gasto DESC
    LIMIT 1