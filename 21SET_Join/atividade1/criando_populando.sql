CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- criar tb_personagem e tb_classe.
	-- personagem >> id ataque defesa nome nivel resistencia [8 personagens] 5 ATRIBUTOS
	-- classe >> id tipo hab_especial [5 tipos de classe] 3 ATRIBUTOS

CREATE TABLE tb_classe(
id_classe BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(50),
hab_especial VARCHAR(50),
inteligencia BIGINT NOT NULL,

PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
id_personagem BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50),
ataque BIGINT,
defesa BIGINT,
resistencia BIGINT,
nivel BIGINT,
classe_id BIGINT NOT NULL,

PRIMARY KEY(id_personagem),
FOREIGN KEY(classe_id) REFERENCES tb_classe (id_classe)
);

-- populando as classes

INSERT INTO 
tb_classe(tipo,hab_especial,inteligencia) 
VALUES 
("Arqueiro","Tiro Multiplo",55),
("Viking","Machadada",33),
("Mago","Karma",99),
("Troll","Porrada",5),
("Samurai","Lamina sedenta",75);

-- populando os personagens

INSERT INTO
tb_personagem(nome,ataque,defesa,resistencia,nivel,classe_id)
VALUES
("Jake",85,55,45,12,5),
("Gao",46,85,44,21,3),
("Larut",88,54,24,34,2),
("Trenz",12,88,16,21,4),
("Karlayot",88,10,21,45,1),
("Mitniz",55,21,31,15,5),
("Wax",99,1,24,15,3),
("BIG",77,77,7,7,2);