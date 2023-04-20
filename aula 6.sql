use bd_livro01;

select * from tb_livro where preco > 200;
select * from tb_livro where preco = 100;
select * from tb_livro where titulo = 'redes';
select * from tb_livro where titulo like '%redes%';
select * from tb_livro where titulo like '%banco de dado%';
select * from tb_livro where preco between 150 and 250;
select * from tb_livro limit 3;
select * from tb_livro order by preco desc;
select * from tb_livro order by preco desc limit 3;
select * from tb_livro order by dt_livro desc limit 3;
select * from tb_livro order by dt_livro limit 3;
select * from tb_livro where cd_editora in (2,3);
select * from tb_livro where cd_editora = 3 and preco = 200;
select preco, titulo, dt_livro from tb_livro; 
select L.isbn, L.titulo, G.cd_genero
from tb_livro as L
inner join tb_genero as G
on L.cd_genero = G.cd_genero;

select L.titulo, E.editora, G.genero
from tb_livro as L

inner join tb_editora as E
on L.cd_editora = E.cd_editora

inner join tb_genero as G
on L.cd_genero = G.cd_genero;