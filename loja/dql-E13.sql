SELECT 
    venda.cdpro, venda.nmcanalvendas,
    venda.nmpro, SUM(venda.qtd) AS quantidade_vendas
    FROM TBVENDAS  AS venda
    WHERE venda.status = 'Concluído' AND 
    (venda.nmcanalvendas = 'Ecommerce' OR 
    venda.nmcanalvendas = 'Matriz')
    GROUP BY venda.cdpro,venda.nmpro,venda.nmcanalvendas
    ORDER BY quantidade_vendas
