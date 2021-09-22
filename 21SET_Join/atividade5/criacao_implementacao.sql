create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- loja de produtos de construcao


create table tb_categoria(
id_categoria bigint not null auto_increment,
tamanho tinytext,
cor tinytext,
apenas_venda_digital bool,

primary key (id_categoria)
);

insert into
tb_categoria(tamanho,cor,apenas_venda_digital)
values
("Grande","Vermelho",0),
("Médio","Azul",0),
("Pequeno","Amarelo",1);

create table tb_produto(
id_produto bigint not null auto_increment,
nome tinytext,
preco bigint,
codigo bigint,
categoria_id bigint,

primary key(id_produto),
foreign key(categoria_id) references tb_categoria(id_categoria)
);

insert into 
tb_produto(nome,preco,codigo,categoria_id)
values
("janela",500,123456789,1),
("porta",2500,648416316,2),
("maçaneta",20,618516814,3);