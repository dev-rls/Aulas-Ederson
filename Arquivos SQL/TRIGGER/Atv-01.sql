create database DB_Pessoa;

use DB_Pessoa;

create table Estado (
id_estado int primary key,
nome varchar(50) not null,
uf char(2) not null
); 

create table Cidade (
id_cidade int primary key,
nome varchar(100) not null,
id_estado int,
foreign key (id_estado) references Estado(id_estado)
);

create table Genero (
id_genero int primary key,
descricao varchar(50) not null
);
 
create table Raca (
id_raca int primary key,
descricao varchar(50) not null
); 

create table Religiao (
id_religiao int primary key,
descricao varchar(50) not null
);

create table Agencias (
id_agencia int primary key,
numero varchar(10) not null,
endereco varchar(200) not null,
id_cidade int,
foreign key (id_cidade) references Cidade(id_cidade)
);

create table Clientes (
id_cliente int primary key,
numero_conta varchar(20) not null unique,
nome varchar(100) not null,
id_cidade int,
id_genero int,
id_raca int,
id_religiao int,
id_agencia int,
saldo decimal(15,2) default 0.00,
foreign key (id_cidade) references Cidade(id_cidade),
foreign key (id_genero) references Genero(id_genero),
foreign key (id_raca) references Raca(id_raca),
foreign key (id_religiao) references Religiao(id_religiao),
foreign key (id_agencia) references Agencias(id_agencia)
); 

select * from Clientes;

create table Saque (
id_operacao int primary key,
id_agencia int,
id_cliente int,
valor decimal(15,2) not null,
data_operacao timestamp default current_timestamp,
foreign key (id_agencia) references Agencias(id_agencia),
foreign key (id_cliente) references Clientes(id_cliente)
); 
select * from Saque;

create table Deposito (
id_operacao int primary key,
id_agencia int,
id_cliente int,
valor decimal(15,2) not null,
data_operacao timestamp default current_timestamp,
foreign key (id_agencia) references Agencias(id_agencia),
foreign key (id_cliente) references Clientes(id_cliente)
);

select * from Deposito;

delimiter $ 
create trigger trg_atualiza_saldo_saque
after insert on Saque
for each row
begin
update Clientes 
set saldo = saldo - new.valor
where id_cliente = new.id_cliente;
end ;
delimiter ;

delimiter $ 
create trigger trg_atualiza_saldo_deposito
after insert on Deposito
for each row
begin
update Clientes 
set saldo = saldo + new.valor
where id_cliente = new.id_cliente ;
end ;
delimiter ;
