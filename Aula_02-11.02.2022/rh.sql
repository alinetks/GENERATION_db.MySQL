create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar (255) not null,
salario decimal,
vt boolean, 
ativo boolean,
primary key (id)
);

insert into tb_funcionaries (nome, salario, vt, ativo)
values ("Alan Golveia", 1200, true, true); 
insert into tb_funcionaries (nome, salario, vt, ativo)
values ("Jeremias Assunção", 3000, true, false);
insert into tb_funcionaries (nome, salario, vt, ativo)
values ("Miguel Diaz", 1200, false, true);
insert into tb_funcionaries (nome, salario, vt, ativo)
values ("Miagwi Ren", 7000, false, false);

select * From tb_funcionaries;

select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;
