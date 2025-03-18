create database Controle_Estoque;

use Controle_Estoque;

create table Produtos (
id_produtos int auto_increment primary key,
nome varchar(50) not null,
qtd varchar(500) not null,
preco varchar(100) not null
);

-- Adicione produtos ao estoque.
insert into Produtos (id_produtos, nome, qtd, preco) values
(1, 'Notebook', 15, 3.500),
(2, 'Smartphone', 30, 1.200),
(3, 'Monitor', 20, 800),
(4, 'Teclado', 50, 150),
(5, 'Mouse', 40, 100);

select * from Produtos;

-- Liste os produtos com quantidade abaixo de um valor mínimo.
select * from Produtos where qtd < 30;

-- Atualize a quantidade de um produto após venda.
update Produtos set qtd = 25 where id_produtos = 1;

-- Exclua um produto do estoque.
delete from Produtos where id_produtos = 3;

