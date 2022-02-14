create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
arma varchar(255),
primary key (id));

insert into tb_classes(nome, habilidade, arma)
values ("Feiticeiro", "Bola de fogo", "Cajado");
insert into tb_classes(nome, habilidade, arma)
values ("Taoista", "Cura", "adaga");
insert into tb_classes(nome, habilidade, arma)
values ("Guerreiro", "Resistir", "Escudo e espada");
insert into tb_classes(nome, habilidade, arma)
values ("Lanceiro", "Arremessar", "Lança");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes (id));

-- PERSONAGENS
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
value ("Queen", 100, 95.000, 55.000, 1);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
value ("King", 100, 86.000, 70.000, 3);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
value ("Agulha", 97, 90.000, 60.000, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
value ("Ceres", 80, 80.000, 60.000, 2);

-- AÇÕES

select * from tb_personagens; 

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa >= 1000 AND defesa <= 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_peronagens.classes_id = tb_classes.id
where tb_classes.id = 2;