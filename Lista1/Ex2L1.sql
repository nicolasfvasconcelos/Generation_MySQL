-- criar banco de dados
create database ecommerce
-- selecionando Banco que vou trabalhar
use ecommerce;
-- criando tabela
create table produtos(
id bigint auto_increment,
nome varchar(300) not null,
descricao varchar(300) not null,
preco decimal (10,2) not null,
quantidade bigint not null,
primary key (id)
);

-- visualizando a tabela tabela
select * from produtos 

-- populando a tabela
insert into produtos (nome, descricao, preco, quantidade) values ("Bolacha", "Bicoito não existe! #TeamBolachaAqui", 2000.00, 1000);
insert into produtos (nome, descricao, preco, quantidade) values ("Televisão", "Aparelho para você se alienar", 500.00, 10);
insert into produtos (nome, descricao, preco, quantidade) values ("Meu coração", "Está em pedaços, mas é tão frio que congela qualquer coisa", 0.00, 1);
insert into produtos (nome, descricao, preco, quantidade) values ("Passagens", "Passagem só de ida para você ver se eu tô na esquina", 0.50, 1000);
insert into produtos (nome, descricao, preco, quantidade) values ("Fones de ouvido", "Melhor invenção da vida!", 20.00, 1000);
insert into produtos (nome, descricao, preco, quantidade) values ("Curso Generation", "Curso top e gratuito! Recomendo!", 0.00, 84);
insert into produtos (nome, descricao, preco, quantidade) values ("Fantasia de Palhaço", "Quando nós, estudantes, acreditamos que o Vagnão vai dar tempo!", 50.00, 100);
insert into produtos (nome, descricao, preco, quantidade) values ("Bruxaria", "Aulas gratuitas com o Boaz sobre a magia do MySQL", 0.00, 84);
-- visualizando tabela
select * from produtos

-- filtrando produtos com valor > 500 
select * from produtos where preco > 500.00
-- filtrando produtos com valor < 500 
select * from produtos where preco < 500.00
