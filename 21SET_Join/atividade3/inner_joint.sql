SELECT * FROM
tb_produto
INNER JOIN
tb_categoria
ON
tb_categoria.id_categoria = tb_produto.categoria_id;