CREATE DATABASE db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE tb_produto(
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco FLOAT,
    quantidade FLOAT,
    fk_categoria INT,
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT tb_categoria (nome) VALUES
("infraestrutura"),
("hidraulica")
;

SELECT * from tb_categoria;

INSERT tb_produto (nome, preco, quantidade, fk_categoria) VALUES
("cimento", 50.80, 4.50, 1),
("areia", 65.80, 5.60, 1),
("bloco", 4.45, 1000, 1),
("cano pvc", 58.88, 30.50, 2),
("bomba", 5.15, 100, 2)
;

SELECT * from tb_produto;

SELECT * from tb_produto WHERE preco > 50;

SELECT * from tb_produto WHERE preco > 50 and preco < 60;

SELECT * from tb_categoria WHERE nome like "%o%";

SELECT tb_categoria.nome, tb_produto.preco, tb_produto.quantidade
from tb_categoria
INNER JOIN tb_produto
on tb_categoria.id_categoria = tb_produto.fk_categoria
ORDER BY tb_categoria.nome ASC;

SELECT tb_categoria.nome, tb_produto.preco, tb_produto.quantidade
from tb_categoria
INNER JOIN tb_produto
on tb_categoria.id_categoria = tb_produto.fk_categoria

ORDER BY tb_categoria.nome ASC;