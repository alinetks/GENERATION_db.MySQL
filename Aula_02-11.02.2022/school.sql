create database db_school;

use db_school;

create table tb_aluno(
id bigint auto_increment,
RA int,
nome varchar (255) not null,
curso varchar (255) not null,
nota decimal,
ativo boolean,
primary key (id)
);

insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002001, "Arlindo Cruz", "Engenharia", 9.00, true);
insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002002, "Avelã Dourado", "Confeitaria", 6.00, true);
insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002003, "Aurora Meneguel", "Veterinaria", 7.00, true);
insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002004, "Sarmira Laminary", "Direito", 10.00, true);
insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002005, "Carlota Joaquina", "Arqueologia", 4.00, true);
insert into tb_aluno (RA, nome, curso, nota, ativo)
values (2002006, "Augustos Rose", "Pedagogia", 8.00, true);

select * From tb_aluno;

update tb_aluno set ativo = false where id = 3;

select * from tb_aluno where nota >= 7;

select * from tb_aluno where nota <= 7;






 