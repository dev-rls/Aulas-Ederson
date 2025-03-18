create database DB_Gestao_Clientes;

use  DB_Gestao_Clientes;

create table Clientes (
id_clientes int auto_increment primary key,
nome varchar(50) not null,
email varchar(50) not null
);

create table Pedidos (
id_pedidos int auto_increment primary key,
id_clientes int,
dia date,
total varchar(50),
foreign key (id_clientes) references Clientes (id_clientes)
);

-- Adicione clientes e seus pedidos.
insert into Clientes (id_clientes, nome, email) values
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com'),
(3, 'Pedro Santos', 'pedro.santos@email.com'),
(4, 'Ana Lima', 'ana.lima@email.com'),
(5, 'Lucas Costa', 'lucas.costa@email.com');

insert into Pedidos (id_pedidos, id_clientes, dia, total) values
(1, 1, '2025-03-11', 3500.00),
(2, 2, '2025-03-10', 1200.00),
(3, 3, '2025-03-09', 800.00),
(4, 4, '2025-03-08', 150.00),
(5, 5, '2025-03-07', 100.00);


