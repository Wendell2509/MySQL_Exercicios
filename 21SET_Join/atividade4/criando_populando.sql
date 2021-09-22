-- create data base
CREATE DATABASE db_cidade_das_frutas;

-- use
USE db_cidade_das_frutas;

-- create table categoria [3 atributos]
CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
nome TINYTEXT, -- Comum Incomum Raro 
categoria TINYTEXT, -- Nacional Internacional
fornecedor TINYTEXT, -- Fazenda Agronegocio

PRIMARY KEY(id_categoria)
);

-- populando tabela
INSERT INTO
tb_categoria(nome,categoria,fornecedor)
VALUES
("Comum","Nacional","Fazenda"),
("Incomum","Interncional","Agronegocio"),
("Raro","Internacional","Agronegocio");

-- create table produto
CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
nome_produto TINYTEXT,
quantidade BIGINT,
peso DECIMAL(10,2),
categoria_id BIGINT,

PRIMARY KEY (id_produto),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id_categoria)
);

-- populando tabela
INSERT INTO
tb_produto(nome_produto,quantidade,peso,categoria_id)
VALUES
("Maça",5,10.5,1),
("Melancia",1,60.2,2),
("Blueberry",10,5,3);