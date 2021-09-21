-- criar banco de dados da pizzaria legal
CREATE DATABASE db_pizzaria_legal;

-- usar banco de dados db_pizzaria_legal
USE db_pizzaria_legal;	

-- criar tabelas tb_pizza e tb_categoria
	-- tb_categoria > 3 atributos > chave primaria
		-- id
        -- tipo (salgada ou doce)
        -- tamanho (P M ou G)
        -- gourmet (S ou N)

CREATE TABLE tb_categoria(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(20) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
gourmet BOOL NOT NULL,

PRIMARY KEY (id)
);

-- implementar 5 tipos de categoria

INSERT INTO 
tb_categoria(tipo,tamanho,gourmet)
VALUE
("Gourmet Grande","grande",1),
("Grande","grande",0),
("Gourmet Médio","medio",1),
("Médio","medio",0),
("Gourmet Pequena","pequena",1),
("Pequena","pequena",0);


-- tb_pizza > 5 atributos > chave primaria e chave estrangeira
		-- id
        -- nome
        -- preco
        -- sabor        
		-- borda_recheada
        -- com_azeitona
        -- categoria_id

CREATE TABLE tb_pizza(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20),
preco BIGINT NOT NULL,
sabor VARCHAR(20),
borda_recheada BOOL NOT NULL,
com_azeitona BOOL NOT NULL,
categoria_id BIGINT NOT NULL,

PRIMARY KEY (ID),
FOREIGN KEY(categoria_id) references tb_categoria(id)
); 

-- implementar 8 tipos de pizza

INSERT INTO
tb_pizza(nome,preco,sabor,borda_recheada,com_azeitona,categoria_id)
VALUES
("Pepperoni Grande (s/ azeitona e s/ borda)",50,"pepperoni",0,0,2),
("Margherita Gourmet Grande ",80,"margherita",1,1,1),
("Baiana Média",35,"baiana",1,1,4),
("Cubana Gourmet Pequena ",22,"cubana",1,1,5),
("Quatro Queijos Grande",55,"quatro queijos",1,1,2),
("Toscana Média (s/ azeitona e s/ borda)",65,"toscana",0,0,4),
("Siciliana Gourmet Grande",99,"siciliana",1,1,1),
("Veneza Gourmet Média(s/ azeitona e s/ borda)",64,"veneza",1,1,3);
