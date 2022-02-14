create database db_cursodaminhavida;

use db_cursodaminhavida;

create table tb_categoria(
id bigint auto_increment,
secao varchar(255) not null,
primary key (id));

insert into tb_categoria (secao) values ("Tecnologia");
insert into tb_categoria (secao) values ("Gerenciais");
insert into tb_categoria (secao) values ("Arte");
insert into tb_categoria (secao) values ("Educação");

select * from tb_categoria;

create table tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id));

insert into tb_cursos (nome, preco, categoria_id)
value ("Iformatica", 30.00, 1);
insert into tb_cursos (nome, preco, categoria_id)
value ("Pacote Adobe", 65.00, 1);
insert into tb_cursos (nome, preco, categoria_id)
value ("Gestão de tempo", 25.00, 2);
insert into tb_cursos (nome, preco, categoria_id)
value ("Pintura Digital", 55.00, 3);
insert into tb_cursos (nome, preco, categoria_id)
value ("Libras", 30.00, 4);

select * from tb_cursos;

select * from tb_cursos where preco > 50.00;

select * from tb_cursos where preco > 3.00 AND preco < 60.00;

select nome, preco from tb_cursos where nome like "G%";

select * from --  inner join 
tb_cursos left join tb_categoria
on tb_cursos.categoria_id = tb_categoria.id;

select * from tb_cursos where id=3;
