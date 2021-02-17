-- criando database
create database db_pizzaria_legal
-- selecionando o database que vou utilizar
use db_pizzaria_legal
-- criando tabelas 
create table tb_pizza(
id bigint auto_increment,
sabor varchar (20) not null,
ingrediente varchar(200) not null,
primary key (id)
);
-- ver tabela tb_pizza
select* from tb_pizza

-- criando tabela tb_categoria
create table tb_categoria(
id bigint auto_increment,
preco decimal(10,2) not null,
tamanho bigint not null,
AbertaFechada varchar(15) not null,
borda varchar (20) not null,
idCategoria bigint not null,
primary key(id),
foreign key (idCategoria) references tb_pizza(id)
);
-- ver tabela tb_categoria
select * from tb_categoria

-- populando tb_pizza
select* from tb_pizza
insert into tb_pizza (sabor, ingrediente) values ("Frango com catupiry", "Tem frango");
insert into tb_pizza (sabor, ingrediente) values ("Portuguesa", "Não sei o que vai");
insert into tb_pizza (sabor, ingrediente) values ("Calabresa", "Tem linguiça e cebola");
insert into tb_pizza (sabor, ingrediente) values ("Camarão com catupiry", "Camarão");
insert into tb_pizza (sabor, ingrediente) values ("Sardinha", "Peixe, ué");

-- populando tb_categoria
select * from tb_categoria
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (15.55, 1, "Aberta", "Borda Recheada", 1);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (25.00, 2, "Fechada", "Borda sem Recheio", 2);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (30.00, 3, "Aberta", "Borda Recheada", 3);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (55.55, 2, "Aberta", "Borda sem Recheio", 4);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (19.55, 1, "Aberta", "Borda Recheada", 5);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (30.55, 3, "Fechada", "Borda sem Recheio", 2);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (55.55, 2, "Aberta", "Borda Recheada", 5);
insert into tb_categoria (preco, tamanho, AbertaFechada, borda, idCategoria) values (105.55, 1, "Fechada", "Borda Recheada", 3);

-- cruzando tabelas
select * from tb_categoria
inner join tb_pizza on tb_pizza.id = tb_categoria.idCategoria