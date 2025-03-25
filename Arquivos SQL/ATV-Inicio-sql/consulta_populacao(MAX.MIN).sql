use cadastroRuas;

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
select * from continente where populacao = (select max(populacao) from continente);
select * from continente where populacao = (select min(populacao) from continente);

select * from pais where populacao = (select max(populacao) from pais);
select * from pais where populacao = (select min(populacao) from pais);

select * from estado where populacao = (select max(populacao) from estado);
select * from estado where populacao = (select min(populacao) from estado);

select * from cidade where populacao = (select max(populacao) from cidade);
select * from cidade where populacao = (select min(populacao) from cidade);

set SQL_SAFE_UPDATES = 1;
update continente set populacao = 1100 where id=5;
select * from continente;

update pais set populacao = 7898 where id=1;
select * from pais;

update estado set populacao = 5898 where id=1;
select * from estado;

update cidade set populacao = 18898 where id=1;
select * from cidade;