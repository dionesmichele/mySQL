create database ecommerce;

use ecommerce;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(40) not null,
    preco decimal (3,2) not null,
    descricao varchar(180) not null,
    quantidade int not null,
	cruelty_free boolean not null,
    primary key (id)
)

insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("shampoo",'8,99',"cabelos",40,true); 
insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("condicionador",'9,99',"cabelos",35,true); 
insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("batom",'15,99',"cosmetico ",27,false); 
insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("desodorante",'13,45'," higiene ",0,true); 
insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("kit massagem profissional",'789,99',"spa e cuidados",7,false);
insert into tb_produto(nome, preco, descricao,quantidade,cruelty_free) values ("kit unhas ",'549,99',"cuidados",3,false);



select * from tb_produto where preco > 500;
select * from tb_produto where preco < 500;

update tb_produto set cruelty_free=true  where id = 3;
