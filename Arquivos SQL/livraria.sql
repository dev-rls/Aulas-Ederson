use Livraria;

create table livros (
id_livro int auto_increment primary key,
titulo varchar(15) not null,
id_autor int,
preco varchar(30),
foreign key (id_autor) references autores (id_autor)
);

create table autores (
id_autor int auto_increment primary key,
nome_autor varchar(200) not null
);

insert into livros (id_livro, titulo, id_autor, preco) values
(1, 'A Cabana', 1, 47.00),
(2, 'O cortiço', 2, 20.00),
(3, 'Quando o Amor Machuca', 3, 15.00),
(4, 'Iracema', 4, 14.00),
(5, 'A culpa é das Estrelas',5, 30.00),
(6, 'O evangelho segundo o espiritismo', 6, 10.00 );

insert into autores (id_autor, nome_autor) values
(1, 'William P. Young'),
(2, 'Aluísio Azevedo'),
(3, 'Simon Hersey'),
(4, 'José de Alencar'),
(5, 'John Green'),
(6, 'Allan Kardec')
 ;
 select * from livros;
 describe livros;
 
-- Liste todos os livros e seus autores.
select titulo, nome_autor from autores
join livros on autores.id_autor = livros.id_livro;

-- Atualize o preço de um livro específico.
delete from livros where id_livro = 2;
delete from livros where id_livro = 4;

-- Exclua um autor e todos os livros associados a ele.
delete from livros where id_autor = 3;
delete from autores where id =3;
