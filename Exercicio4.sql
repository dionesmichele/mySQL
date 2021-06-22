CREATE DATABASE db_cidade_das_frutas;

 USE db_cidade_das_frutas;
 
 CREATE TABLE tb_categoria (
 id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 tipo VARCHAR (100) NOT NULL,
 epoca VARCHAR (100)
 );
 
  CREATE TABLE tb_produto(
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR (25) NOT NULL,
  peso DECIMAL (10,2) NOT NULL,
  preco DECIMAL (10,2) NOT NULL,
  fk_categoria INT,
  PRIMARY KEY (id_produto),
  FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
  );
  
INSERT INTO tb_categoria (tipo,epoca) VALUES
("grande parte do mundo", "boa parte do ano"),
("poucas partes do mundo", "épocas específicas"),
("grande parte do mundo","épocas específicas"),
("poucas partes do mundo" ,"boa parte do ano");

INSERT INTO tb_produto (nome,peso,preco,fk_categoria) VALUES
("pera",1.5,15.80,1),
("banana nanica",2.0,10.00,1),
("pitaya",3.0,60.00,3),
("uva",1.0,5.00,4),
("morango",1.0,15.00,4),
("jabuticaba",1.5,9.00,3), 
("lichia",2.0,20.00,2),
("caju",0.5,13.00,1);


SELECT * FROM tb_produto WHERE preco >50.00;

SELECT * FROM tb_produto WHERE preco >3 AND  preco <60
	ORDER BY tb_produto.nome DESC;

SELECT * FROM tb_produto WHERE nome LIKE "C%";

SELECT tb_produto.nome, tb_categoria.tipo
	 FROM tb_categoria 
		INNER JOIN tb_produto
			ON tb_categoria.id_categoria = tb_produto.fk_categoria;
	  

SELECT tb_produto.nome, tb_categoria.epoca 
	FROM tb_categoria
		INNER JOIN tb_produto 
			ON tb_categoria.id_categoria = tb_produto.fk_categoria
				WHERE tb_categoria.epoca LIKE "épocas específicas"
					ORDER BY tb_produto.nome DESC;
	  
