-- criando db
create database db_generation_game_online
-- selecionando o db 
use db_generation_game_online

create table tb_classe(
id bigint auto_increment,
nomeClasse varchar(100) not null,
descricao varchar (1000) not null,
especial varchar (1000) not null,
vidaExtra varchar (10) not null,
manaExtra varchar (10) not null,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(100) not null,
vidaBase decimal (10,2) not null,
manaBase decimal (10,2) not null,
ataque decimal (10,2) not null,
defesa decimal (10,2) not null,
magia decimal (10,2) not null,
personagem_id bigint not null,
primary key (id),
foreign key (personagem_id) references  tb_classe(id)
);

-- populando tabela classe
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Mestre(a) dos Códigos", "Mage da codificação em Java", "Código que roda", "+500", "+2000");
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Mestre(a) do SQL", "Mage dos Bancos de Dados", "Informação", "+500", "+2500");
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Bardo(a), o(a) lirista da filosofia", "Sua magia envolve as melhores filosofias do universo", "Filosofando filosofia", "+500", "+1500");
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Arqueiro(a) dos números", "Ataca a distância baseado(a) em números", "Numeros da justiça", "+1000", "+1000");
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Guerreiro(a) da preguiça", "Guerreiro(a) que luta dormindo", "Soneca avassaladora", "+2500", "+500");
insert into tb_classe (nomeClasse, descricao, especial, vidaExtra, manaExtra) values ("Guerreiro(a) da motoca", "Cavaleiro(a) que usa montaria de moto", "Atropelo fatal", "+3000", "+1000");

select *from tb_classe
-- populando tabela personagem
select *from tb_personagem
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Jejê", 1000, 1500, 25, 10, 75, 1 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Naty", 1000, 1500, 25, 10, 75, 2 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Gabs", 1000, 1500, 25, 10, 75, 3 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Kah", 1000, 1000, 75, 10, 25, 4 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Nicolas", 1500, 1000, 45, 75, 10, 5 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("Bruh", 2000, 750, 75, 50, 10, 6 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("CemIdeias", 1000, 1500, 25, 10, 75, 1 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("SoninQueFala", 1500, 1500, 75, 20, 25, 5 );
insert into tb_personagem (nome, vidaBase, manaBase, ataque, defesa, magia, personagem_id) values ("TeamBolacha", 1500, 1500, 25, 10, 75, 3 );

-- personagens com mais de 2k de ataque
-- select * from tb_personagem where ataque < 2000
-- usando join e cruzando tabelas
select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.personagem_id

