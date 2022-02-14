-- Criar o Banco 
create database db_farmacia_do_bem;

-- Selecionar o Banco
use db_farmacia_do_bem;

-- Criar a tabela categoria
create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
primary key (id)
);

-- Inserir dados na tabela 
insert into tb_categoria (categoria) values ("Suplemento");
insert into tb_categoria (categoria) values ("Cuidado Bucal");
insert into tb_categoria (categoria) values ("Cuidado Higienico");
insert into tb_categoria (categoria) values ("Medicamento");

-- DELETE FROM tb_categorias WHERE id = 0;

-- Lista todos os dados da tabela 
select * from tb_categoria;

-- Criar a Tabela tb_produtos
create table tb_produtos(
id bigint auto_increment,
produto varchar(255) not null,
quantidade int,
preco decimal(6,2),
disponibilidade boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);


insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Vitamina A", 15, 45.00, true, 1);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Vitamina C", 17, 40.00, true, 1);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Biotina", 19, 65.00, true, 1);

insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Enxaguante Bucal", 75, 20.00, true, 2);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Creme Dental", 105, 7.00, true, 2);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Fio Dental", 75, 10.00, true, 2);

insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Desodorante", 94, 17.00, true, 3);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Protetor Diario", 25, 11.00, true, 3);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Preservativo", 45, 18.00, true, 3);

insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Antialérgico", 543, 18.00, true, 4);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Analgésico", 403, 11.00, true, 4);
insert into tb_produtos (produto, quantidade, preco, disponibilidade, categoria_id)
value ("Antigripal", 395, 13.00, true, 4);


-- Visualiza todos os dados da tabela tb_produtos
select * from tb_produtos;


select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco > 3.00 AND preco < 60.00;

select produto, quantidade, preco, disponibilidade from tb_produtos where produto like "B%";

select * from --  inner join 
tb_produtos left join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id;

select * from tb_produtos where categoria_id = 3;

