create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

/* tb_categoria (3) 
	tb_curso (5)
	*valor*       
*/

create table tb_categoria(
id_categoria bigint not null auto_increment,
nome_categoria tinytext,
formato tinytext, -- ead presencial hibrido

primary key(id_categoria)
);

insert into
tb_categoria(nome_categoria,formato)
values
("Java","EAD"),
("Python","Presencial"),
("C#","Híbrido");

create table tb_curso(
id_curso bigint not null auto_increment,
nome_curso tinytext,
duracao_horas decimal(10,2),
descricao tinytext,
fk_categoria bigint,

primary key(id_curso),
foreign key(fk_categoria) references tb_categoria(id_categoria)
);

insert into 
tb_curso(nome_curso,duracao_horas,descricao,fk_categoria)
values
("Curso introdutório Back-End",44.30,"melhor curso ja feito sobre back-end",1),
("Curso introdutório Front-End",44.30,"melhor curso ja feito sobre front-end",2),
("Curso introdutório C#",44.30,"melhor curso ja feito sobre C#",3);