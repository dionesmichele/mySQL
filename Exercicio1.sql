CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id_classe INT AUTO_INCREMENT,
tipo VARCHAR  (15),
elemento VARCHAR (15),
funcao VARCHAR (16),
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
id_personagem INT(1) AUTO_INCREMENT,
nome VARCHAR (12) NOT NULL,
defesa INT (4),
ataque INT (4),
revive BOOLEAN NOT NULL,
fk_classe INT,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) references tb_classes (id_classe)
);


INSERT INTO tb_classes (tipo,elemento,funcao) VALUES
("metamorfo","ar","ataque"),
("arqueiro","ar","suporte"),
("mago","magia","tanque"),
("metamorfo","terra","tanque"),
("arqueiro","fogo","ataque"),
("mago","fogo","suporte"),
("atirador","terra","ataque"),
("metamorfo","magia","suporte");


INSERT INTO tb_personagens(nome,defesa,ataque,revive,fk_classe) VALUES
("Clown",1200,1600,TRUE,1),
("Linx",2100,900,FALSE,2),
("Candy",1450,1550,FALSE,3),
("Nullan",1900,1100,FALSE,4),
("Mitt",1800,700,TRUE,5),
("Lauryn",2300,700,TRUE,6),
("Kali",900,2000,TRUE,7),
("Brock",2000,800,FALSE,8);


SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens
	WHERE ataque <= 2000
		AND ataque >= 1000;
        
SELECT tb_personagens.nome, tb_classes.tipo
	 FROM tb_classes 
		INNER JOIN tb_personagens
			ON tb_classes.id_classe = tb_personagens.fk_classe;
	  

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT * FROM tb_classe WHERE classes = "mago";