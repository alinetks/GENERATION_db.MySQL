create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
primary key (id));

insert into tb_categoria (categoria) values ("Pizza Doce");
insert into tb_categoria (categoria) values ("Pizza Salgada");
insert into tb_categoria (categoria) values ("Bebida");

select * from tb_categoria;

create table tb_pizza(
sabor varchar(255) not null,
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);


insert into tb_pizza (sabor, preco, categoria_id)
value ("Brigadeiro", 30.00, 1);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Prestigio", 30.00, 1);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Doce de Leite", 30.00, 1);

insert into tb_pizza (sabor, preco, categoria_id)
value ("Frango com Catupiry", 31.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Calabresa", 27.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Portuguesa", 29.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Dois queijos", 30.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Lombo", 29.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Frango especial", 50.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Stogonoff", 50.00, 2);
insert into tb_pizza (sabor, preco, categoria_id)
value ("Jardineira premium", 61.00, 2);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco > 29.00 AND preco < 60.00;

select sabor, preco from tb_pizza where sabor like "C%";

select * from --  inner join 
tb_pizza left join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id;









