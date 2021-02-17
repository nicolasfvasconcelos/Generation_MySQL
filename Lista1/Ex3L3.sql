-- criando banco de dados
create database escola;
-- selecionando banco a ser usado
use escola;
-- criando tabela
create table alunos(
id bigint auto_increment,
professor varchar(50) not null,
nome varchar(50) not null,
media decimal(20,2) not null,
situacao varchar(50) not null,
primary key (id)
);
-- populando tabela
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Nicolas Ishalá", 5.5, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Nicolas Turn Down For What", 4.35, "Reprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Nicolas de Paris", 10.0, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Marcelão Fazendo Core", 7.75, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Jean Jejê da Paz", 8.00, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Mateus Mara Peixoto", 10.00, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Gsuta Vilela Sextou", 8.55, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Luisão do Sorrizão", 10.00, "Aprovado");
insert into alunos (professor, nome, media, situacao) values ("Vagnão, o roubador de tempos", "Luto pelo Carnaval", 0.00, "Reprovado");
-- visualizando tabela
select * from alunos
-- notas > 7
select * from alunos where media > 7.00
-- notas < 7
select * from alunos where media < 7.00