select * from
tb_curso
inner join
tb_categoria
on
tb_categoria.id_categoria = tb_curso.fk_categoria;