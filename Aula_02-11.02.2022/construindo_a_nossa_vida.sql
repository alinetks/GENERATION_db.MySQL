-- Criar o Banco 
create database db_construindo_a_nossa_vida;

-- Selecionar o Banco
use db_construindo_a_nossa_vida;

-- Criar a tabela categoria
create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

-- Inserir dados na tabela 
insert into tb_categorias (descricao) values ("Decoração");
insert into tb_categorias (descricao) values ("Construção");
insert into tb_categorias (descricao) values ("Reforma");
insert into tb_categorias (descricao) values ("Ferramentas");

-- Lista todos os dados da tabela 
select * from tb_categorias;

-- Criar a Tabela tb_produtos
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal(6,2),
disponibilidade boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);


insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Prateleira", 15, 20.00, true, 1);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Papel de Parede adesivo", 10, 15.00, true, 1);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Cimento 5Kg", 25, 75.00, true, 2);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Azuleijo G", 1200, 15.00, true, 2);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Azuleijo M", 1200, 13.00, true, 2);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Azuleijo P", 1200, 12.00, true, 2);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Gesso 3Kg", 40, 15.00, true, 3);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Argamassa 3Kg", 30, 25.00, true, 3);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Furadeira", 5, 200.00, true, 4);
insert into tb_produtos (nome, quantidade, preco, disponibilidade, categoria_id)
value ("Kit Chave de Fenda", 4, 150.00, true, 4);

-- Visualiza todos os dados da tabela tb_produtos
select * from tb_produtos;


select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco > 3.00 AND preco < 60.00;

select nome, quantidade, preco, disponibilidade from tb_produtos where nome like "C%";

select * from --  inner join 
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos where categoria_id = 1;



