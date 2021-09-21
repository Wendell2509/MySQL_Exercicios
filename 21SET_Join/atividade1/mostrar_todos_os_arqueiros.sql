SELECT * FROM
tb_personagem
INNER JOIN
tb_classe 
ON
tb_classe.id_classe = tb_personagem.classe_id
WHERE
classe_id = 1;
