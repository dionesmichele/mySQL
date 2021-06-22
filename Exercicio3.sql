CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_produto(
	id_produto INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    quantidade_disponivel BIGINT(10) NOT NULL,
    PRIMARY KEY(id_produto)    
);

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(255) NOT NULL,
    nome_remedio VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    fk_produto INT,
    PRIMARY KEY(id_categoria),
    FOREIGN KEY (fk_produto) REFERENCES tb_produto(id_produto)
);

INSERT INTO tb_produto(tipo, quantidade_disponivel)
VALUES
("cosmeticos", 100),
("manipulados", 0),
("generico", 50),
("Alopático", 86),
("Fitoterápico", 45);

INSERT INTO tb_categoria(nome_cliente, nome_remedio, valor, fk_produto)
VALUES
("Beatriz", "hidratante", 20.0, 1),
("Izabelle", "dipirona", 2.0, 4),
("Bruno", "xarope", 25.0, 3),
("Carlos", "sabonete", 10.5, 1),
("Bianca", "Ginko Biloba", 15.0, 5),
("Roberta", "Amoxicilina", 45.0, 3),
("Bruce", "receita", 68.90, 2),
("Felipe", "fluoxetina", 35.5, 4);

SELECT * FROM tb_categoria WHERE valor > 50.0;

SELECT * FROM tb_categoria WHERE valor > 3.0 AND valor < 60.0;

SELECT * FROM tb_categoria WHERE nome_remedio LIKE 'x%';

SELECT * FROM tb_categoria 
	INNER JOIN tb_produto on tb_produto.id_produto = tb_categoria.fk_produto ORDER BY tb_categoria.nome_remedio ASC;
    
SELECT tb_categoria.nome_remedio, tb_produto.tipo FROM tb_categoria
		INNER JOIN tb_produto on tb_produto.id_produto = tb_categoria.fk_produto
        WHERE tb_produto.tipo LIKE "cosmeticos";
