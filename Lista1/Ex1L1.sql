-- Criando base de dados
create database funcionarios
-- selecionando banco de dados que será usado
use funcionarios

-- criando tabela
create table dados (
id bigint auto_increment not null,
nome varchar (20) not null,
funcao varchar (100) not null,
salario decimal(10,2) not null,
setor varchar(20) not null,
primary key (id)
);
-- populando tabelas
insert into dados (nome, funcao, salario, setor) values ("Jejê, o Jean", "Mestre dos códigos", 15000.99, "Time de TI");
insert into dados (nome, funcao, salario, setor) values ("Natacha, a Naty", "Rainha do SQL", 16000.99, "Time de TI");
insert into dados (nome, funcao, salario, setor) values ("Gabriel, o Fraga", "O filósofo", 15000.99, "RH da empresa");
insert into dados (nome, funcao, salario, setor) values ("Bruna, a motoqueira", "Moça das motocas", 20000.00, "Logística");
insert into dados (nome, funcao, salario, setor) values ("Karine, a Kah", "Dona dos números",  50000.99, "Financeiro");
-- visualizando tabela
select * from dados 
--  valores de salário > 2000
select * from dados where salario > 2000.00
-- valores de salário < 200
select * from dados where salario < 2000.00