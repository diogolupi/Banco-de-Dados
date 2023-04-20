create database bd_livro01;
use bd_livro01;

create table tb_editora
(cd_editora int not null primary key,
editora char(30)) ;

create table tb_genero
(cd_genero int not null primary key,
genero char(30)) ;

create table tb_livro 
(isbn int not null primary key,
titulo char(50),
cd_editora int,
cd_genero int,
preco double) ;

alter table tb_livro
add constraint fk_genero foreign key (cd_genero) 
references tb_genero (cd_genero);


alter table tb_livro 
add constraint fk_editora foreign key (cd_editora) 
references tb_editora (cd_editora);

insert into tb_genero
(cd_genero, genero)
values
(1, 'Informatica'),
(2, 'Direito'),
(3, 'Engenharia Civil'),
(4, 'Engenharia Elétrica'),
(5, 'Enfermagem'),
(6, 'Medicina');

use bd_livro01;
select * from tb_genero;

insert into tb_editora
(cd_editora, editora)
values
(1, 'person'),
(2, 'erica'),
(3, 'Person'),
(4, 'Saraiva'),
(5, 'Editora FTD'),
(6, 'ABRIL'),
(7, 'ÁTICA'),
(8, 'NOVA FRONTEIRA');

use bd_livro01;
select * from tb_editora;

alter table tb_livro
add dt_livro date;

insert into tb_livro
(isbn, titulo, cd_editora, cd_genero, preco, dt_livro)
values
(1, 'banco de dados', 1, 1, 100.00, '2015-08-10'),
(2, 'engenharia de software', 1, 2, 200.00, '2014-08-20'),
(3, 'Algoritmos: Teoria e Prática', 3, 2, 220.00, '2015-01-10'),
(4, 'Livro - Eletrônica Estudantes e Técnicos', 4, 3, 110.00, '2014-01-10'),
(5, 'Livro - Hardware: Versão Revisada e Atualizada', 2, 4, 100.00, '2014-02-10'),
(6, 'Livro - Redes de Computadores', 3, 5, 200.00, '2014-03-10'),
(7, 'Livro - Guyton & Hall - Tratado de Fisiologia', 2, 2, 300.00, '2014-04-10');


use bd_livro01;
select * from tb_livro;
