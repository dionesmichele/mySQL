CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id_categ INT AUTO_INCREMENT,
    nome VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_categ)
);

CREATE TABLE tb_curso (
	id_curso INT AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
	preco FLOAT (5) NOT NULL,
	data_inicio DATE NOT NULL,
    fk_curso INT,
	PRIMARY KEY (id_curso),
	FOREIGN KEY (fk_curso) REFERENCES tb_categoria(id_categ)
);

INSERT INTO tb_categoria (nome) VALUES
("EXATAS"),
("HUMANAS"),
("BIOLÓGICAS");

INSERT INTO tb_curso (nome, preco, data_inicio, fk_curso) VALUES
("Introdução ao JAVA", 80, '2021-06-21', 1),
("Inglês: do Básico ao Avançado", 90, '2019-07-15',2),
("Biologia celular e molecular", 50, '2019-08-10',3),
("Na fronteira do conhecimento sobre covid-19", 20, '2020-05-04',3),
("Álgebra", 15, '2019-06-03',1),
("Arquitetura orientada a serviços", 10, '2019-07-02',1),
("Empreendedorismo", 60, '2019-04-09',2),
("Liberdade Financeira", 40, '2021-09-04',2);

select * from tb_curso where preco > 50;

select * from tb_curso where preco > 3 AND preco < 60;

SELECT * FROM tb_curso where nome like "L%";

select tb_curso.nome, tb_curso.preco, tb_curso.data_inicio, tb_categoria.nome
from tb_curso
INNER JOIN tb_categoria
on tb_categoria.id_categ = tb_curso.fk_curso
order by tb_categoria.nome ASC;

select tb_curso.nome, tb_curso.preco, tb_curso.data_inicio, tb_categoria.nome
from tb_curso
INNER JOIN tb_categoria
on tb_categoria.id_categ = tb_curso.fk_curso
where tb_categoria.nome like "EXATAS"
order by tb_categoria.nome ASC;

