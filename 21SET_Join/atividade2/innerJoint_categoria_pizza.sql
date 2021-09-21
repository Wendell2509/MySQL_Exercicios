SELECT * FROM
tb_pizza
INNER JOIN
tb_categoria 
ON
tb_categoria.id = tb_pizza.categoria_id;