create database Aula;

use Aula;

create table produtos(
referencia varchar(3) primary key,
descricao varchar(50) unique,
estoque int not null default 0
);
insert into  produtos  values ("001","Feijão",10);
insert into  produtos  values ("002","Arroz",5);
insert into  produtos  values ("003","Farinha",15);

create table item_venda(
venda int primary key,
produtos varchar(3),
quantidade int,
foreign key (produtos) references produtos (referencia)
 
);
insert into item_venda values(1,'001',3);
insert into item_venda values(2,'002',1);
insert into item_venda values(3,'003',5);
select *from item_venda;
 
delimiter $ -- 1
create trigger tgr_item_venda_insert after insert 
on item_venda
for each row
begin
   update produto set estoque = estoque-new.quantidade
where referencia= new.produto;
end$
delimiter ;
 
insert into item_venda values(1,'001',3);
insert into item_venda values(2,'002',1);
insert into item_venda values(3,'003',5);

delimiter $ -- 2
create trigger trg_item_venda_delete after delete
on item_venda
for each row
begin
update produto set estoque = + old.quantidade
where referencia = old.produto;
end$
delimiter ;

-- show triggers
-- drop trigger
-- lgr_item_venda_insert



 