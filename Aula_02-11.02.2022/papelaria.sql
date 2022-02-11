create database db_papelaria;

use db_papelaria;

create table tb_papelaria(
id bigint auto_increment,
produto varchar (255) not null,
cor varchar (255) not null, 
especificacao varchar (255) not null,
preco decimal, 
quantidade int,
primary key (id)
);

insert into tb_papelaria (produto, cor, especificacao, preco, quantidade)
values ("Caderno", "Azul, Amarelo e Vermelho", "Capa Dura", 35.00, 10);
insert into tb_papelaria (produto, cor, especificacao, preco, quantidade)
values ("Caderno", "Amarelo e Branco", "Capa Brochura", 15.00, 15);
insert into tb_papelaria (produto, cor, especificacao, preco, quantidade)
values ("Agenda", "Verde Agua, Rosa, Lilas", "Capa Dura", 35.00, 20);
insert into tb_papelaria (produto, cor, especificacao, preco, quantidade)
values ("Kit Aquarela", "Sortidas", "Em Pastilhas", 650.00, 5);
insert into tb_papelaria (produto, cor, especificacao, preco, quantidade)
values ("Kit Lapis 120 un", "Sortidos", "Lapis aquarelavel", 700.00, 12);

alter table tb_papelaria modify preco decimal(5,2);

select * From tb_papelaria;

update tb_papelaria set cor = "Verde Agua" where id = 3;

select * from tb_papelaria where preco > 500;

select * from tb_papelaria where preco < 500;




