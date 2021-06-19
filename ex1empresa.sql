create database db_rh;

use db_rh;

create table tb_funcionaries(
id_funcionarie bigint (5) auto_increment,
nome varchar (20) not null,
setor varchar (2) not null,
data_Nascimento date,
email varchar (30),
salario decimal (10,2) not null,
primary key (id_funcionarie)
);

insert into tb_funcionaries (nome, setor,data_Nascimento, email,salario) values ("Khalil", 03, '1999-07-08',"khalil@gmail.com", 1000.00);
insert into tb_funcionaries (nome, setor,data_Nascimento, email,salario) values	("Michele", 03, '1999-03-02',"michele@gmail.com", 6500.00);
insert into tb_funcionaries (nome, setor,data_Nascimento, email,salario) values("Jullian", 01, '2000-01-11',"jullian@gmail.com", 8200.00);
insert into tb_funcionaries (nome, setor,data_Nascimento, email,salario) values ("Nicolli", 02,'1999-09-17',"nicolli@gmail.com", 3500.00);
insert into tb_funcionaries (nome, setor,data_Nascimento, email,salario) values ("Debora", 01, '1999-01-18',"debora@gmail.com", 3900.00);

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set nome = "Henrique", salario = 1950.00,email="henrique@gmail.com"
 where id_Funcionarie = 02;
 
 select * from tb_funcionaries;