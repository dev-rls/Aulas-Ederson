create database cadastroRuas;

use cadastroRuas;

create table continente (
    id int auto_increment primary key,
    nome varchar(100) not null
);

create table pais (
    id int auto_increment primary key,
    nome varchar(100) not null,
    continente_id int,
    foreign key (continente_id) references continente(id)
);

create table estado (
    id int auto_increment primary key,
    nome varchar(100) not null,
    pais_id int,
    foreign key (pais_id) references pais(id)
);

create table cidade (
    id int auto_increment primary key,
    nome varchar(100) not null,
    estado_id int,
    foreign key (estado_id) references estado(id)
);

create table bairro (
    id int auto_increment primary key,
    nome varchar(100) not null,
    cidade_id int,
    foreign key (cidade_id) references cidade(id)
);

create table rua (
    id int auto_increment primary key,
    nome varchar(100) not null,
    bairro_id int,
    foreign key (bairro_id) references bairro(id)
);

create table endereco (
    id int auto_increment primary key,
    rua_id int,
    bairro_id int,
    cidade_id int,
    estado_id int,
    pais_id int,
    continente_id int,
    foreign key (rua_id) references rua(id),
    foreign key (bairro_id) references bairro(id),
    foreign key (cidade_id) references cidade(id),
    foreign key (estado_id) references estado(id),
    foreign key (pais_id) references pais(id),
    foreign key (continente_id) references continente(id)
);

insert into continente (nome) values 
('América do Norte'), 
('América do Sul'), 
('Europa'), 
('Ásia'), 
('África');

insert into pais (nome, continente_id) values 
('Brasil', 2), 
('Estados Unidos', 1), 
('Canadá', 1), 
('México', 1), 
('Argentina', 2), 
('Colômbia', 2), 
('Chile', 2), 
('França', 3), 
('Alemanha', 3), 
('China', 4), 
('Japão', 4), 
('Índia', 4), 
('Egito', 5), 
('Nigéria', 5), 
('África do Sul', 5);

insert into estado (nome, pais_id) values 
('São Paulo', 1), 
('Rio de Janeiro', 1), 
('Minas Gerais', 1), 
('Nova York', 2), 
('Califórnia', 2), 
('Texas', 2), 
('Ontário', 3), 
('Quebec', 3), 
('Cidade do México', 4), 
('Buenos Aires', 5), 
('Bogotá', 6), 
('Santiago', 7), 
('Île-de-France', 8), 
('Baviera', 9), 
('Pequim', 10), 
('Tóquio', 11), 
('Maharashtra', 12), 
('Cairo', 13), 
('Lagos', 14), 
('Cidade do Cabo', 15), 
('Guanajuato', 4), 
('Cordoba', 5), 
('Antioquia', 6), 
('Valparaíso', 7), 
('Île-de-la-Réunion', 8), 
('Hamburgo', 9), 
('Xangai', 10), 
('Osaka', 11), 
('Kerala', 12), 
('Giza', 13), 
('Kano', 14);

insert into cidade (nome, estado_id) values 
('São Paulo', 1), 
('Rio de Janeiro', 2), 
('Belo Horizonte', 3), 
('Nova York', 4), 
('Los Angeles', 5), 
('Houston', 6), 
('Toronto', 7), 
('Montreal', 8), 
('Cidade do México', 9), 
('Buenos Aires', 10), 
('Bogotá', 11), 
('Santiago', 12), 
('Paris', 13), 
('Munique', 14), 
('Pequim', 15), 
('Tóquio', 16), 
('Mumbai', 17), 
('Cairo', 18), 
('Lagos', 19), 
('Cidade do Cabo', 20), 
('León', 21), 
('Córdoba', 22), 
('Medellín', 23), 
('Valparaíso', 24), 
('Saint-Denis', 25), 
('Hamburgo', 26), 
('Xangai', 27), 
('Osaka', 28), 
('Trivandrum', 29), 
('Giza', 30);

insert into bairro (nome, cidade_id) values 
('Centro', 1), 
('Copacabana', 2), 
('Savassi', 3), 
('Manhattan', 4), 
('Beverly Hills', 5), 
('Downtown', 6), 
('Yorkville', 7), 
('Plateau Mont-Royal', 8), 
('Polanco', 9), 
('Palermo', 10), 
('Chapinero', 11), 
('Providencia', 12), 
('Montmartre', 13), 
('Schwabing', 14), 
('Dongcheng', 15), 
('Shibuya', 16), 
('Andheri', 17), 
('Zamalek', 18), 
('Ikeja', 19), 
('Sea Point', 20), 
('Centro', 21), 
('Nueva Córdoba', 22), 
('El Poblado', 23), 
('Miraflores', 24), 
('Le Butor', 25), 
('Altona', 26), 
('Jingan', 27), 
('Namba', 28), 
('Kowdiar', 29), 
('Dokki', 30);

insert into rua (nome, bairro_id) values 
('Rua A', 1), 
('Rua B', 2), 
('Rua C', 3), 
('Rua D', 4), 
('Rua E', 5), 
('Rua F', 6), 
('Rua G', 7), 
('Rua H', 8), 
('Rua I', 9), 
('Rua J', 10), 
('Rua K', 11), 
('Rua L', 12), 
('Rua M', 13), 
('Rua N', 14), 
('Rua O', 15), 
('Rua P', 16), 
('Rua Q', 17), 
('Rua R', 18), 
('Rua S', 19), 
('Rua T', 20), 
('Rua U', 21), 
('Rua V', 22), 
('Rua W', 23), 
('Rua X', 24), 
('Rua Y', 25), 
('Rua Z', 26), 
('Rua 1', 27), 
('Rua 2', 28), 
('Rua 3', 29), 
('Rua 4', 30), 
('Rua 5', 1), 
('Rua 6', 2), 
('Rua 7', 3), 
('Rua 8', 4), 
('Rua 9', 5), 
('Rua 10', 6), 
('Rua 11', 7), 
('Rua 12', 8), 
('Rua 13', 9), 
('Rua 14', 10), 
('Rua 15', 11), 
('Rua 16', 12), 
('Rua 17', 13), 
('Rua 18', 14), 
('Rua 19', 15), 
('Rua 20', 16), 
('Rua 21', 17), 
('Rua 22', 18), 
('Rua 23', 19), 
('Rua 24', 20);


select * from pais;

select * from cidade;

select * from continente;
----------------------------------------------
select * from rua where id = '37%';

select * from bairro where id = '12%';

select * from cidade where id = '29%';

select * from estado where id = '9%';

select pais from paise where id = '19%';

select * from continente where id = '4%';
------------------------------------------------
alter table pais add populacao int;

alter table continente add populacao int;

alter table estado add populacao int;

alter table cidade add populacao int;
-------------------------------------------------
select * from pais max(populacao) from pais;

select pais, min(populacao) from pais;

select continente, max(populacao) from continente;

select continente, min(populacao) from continente;

select estado, max(populacao) from estado;

select estado, min(populacao) from estado;

select cidade, max(populacao) from cidade;

select cidade, min(populacao) from cidade;


