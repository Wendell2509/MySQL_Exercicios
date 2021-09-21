-- criando db
CREATE DATABASE db_farmacia_do_bem;

-- usando db
USE db_farmacia_do_bem;

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

/* tb_categoria [3 atributos]
    - id > primary key
    - nome TINYTEXT
    - tarja TINYTEXT
    - retencao_receita BOOL */

CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
nome TINYTEXT NOT NULL,
tarja TINYTEXT NOT NULL,
retencao_receita BOOL,

PRIMARY KEY(id_categoria)
);

/* tb_produto [5 atributos]
    - id > primary key
    - nome TINYTEXT
    - tamanho TINYTEXT
    - descricao MEDIUMTEXT
    - generico BOOL
    - valor DECIMAL(10,2)
    - categoria_id > foreign key */
    
CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
nome TINYTEXT NOT NULL,
tamanho TINYTEXT NOT NULL,
descricao MEDIUMTEXT NULL,
generico BOOL NULL,
valor DECIMAL(10,2),
categoria_id BIGINT NOT NULL,

PRIMARY KEY(id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

-- 5 categorias

INSERT INTO
tb_categoria(nome,tarja,retencao_receita)
VALUE
("Sem tarja","sem",0),
("Tarja Amarela","amarela",0),
("Tarja Vermelha Sem Retenção de receita","vermelha",0),
("Tarja Vermelha Com Retenção de receita","vermelha",1),
("Tarja Preta","preta",1);


-- 8 produtos
INSERT INTO
tb_produto(nome,tamanho,descricao,generico,valor,categoria_id)
VALUE
("Forxiga","10mg","30 Comprimidos Revestidos",1,134.14,1),
("Glifage XR","500mg","Merck S/A 30 Comprimidos",1,7.32,1),
("Pant", "50mg/Ml", "Aché Solução Capilar Refil",1,50.54,1),
("Venvanse","30mg","Shire 28 Cápsulas",1,273.90,5),
("Biomag","10mg","Aché 60 Cápsulas",1,70.28,5),
("Dimorf","10mg","Cristália 50 Comprimidos",0,37.61,5),
("Losartana Potássica","50MG","30 comprimidos",1,2.99,1),
("Dorflex","-","36 comprimidios",0,16.40,1);
