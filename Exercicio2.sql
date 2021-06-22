CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizza(
	id_pizza INT AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    tamanho VARCHAR (10) NOT NULL,
    PRIMARY KEY (id_pizza)
);

INSERT INTO tb_pizza(tipo, tamanho)
VALUES
("Doce", "media"),
("Doce", "grande"),
("Salgada", "pequena"),
("Salgada", "media"),
("Salgada", "grande");

CREATE TABLE tb_categoria(
	id_categoria INT AUTO_INCREMENT NOT NULL,
    cliente VARCHAR(100) NOT NULL,
    sabor VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    fk_pizza INT,
    PRIMARY KEY (id_categoria),
    FOREIGN KEY (fk_pizza) REFERENCES tb_pizza(id_pizza)
);

SELECT * FROM tb_pizza;

INSERT INTO tb_categoria(cliente, sabor, valor, fk_pizza)
VALUES
("Beatriz", "calabresa", 60.0, 4),
("Izabelle", "Frango com catupiry", 75.5, 5),
("Bruno", "presunto e queijo", 60.0, 3),
("Carlos", "portuguesa", 70.0, 4),
("Bianca", "brigadeiro", 55.5, 2),
("Roberta", "chocolate e morango", 65.0, 2),
("Bruce", "strogonoff", 80.5, 5),
("Felipe", "chocolate branco", 45.0, 1);

SELECT * FROM tb_categoria WHERE valor > 45.0;

SELECT * FROM tb_categoria WHERE valor > 29.0 AND valor < 60.0;

SELECT * FROM tb_categoria WHERE sabor LIKE 'c%';

SELECT * FROM tb_categoria 
	INNER JOIN tb_pizza on tb_pizza.id_pizza = tb_categoria.fk_pizza;
    
SELECT tb_categoria.sabor FROM tb_categoria
		INNER JOIN tb_pizza on tb_pizza.id_pizza = tb_categoria.fk_pizza
        WHERE tb_pizza.tipo LIKE "doce"