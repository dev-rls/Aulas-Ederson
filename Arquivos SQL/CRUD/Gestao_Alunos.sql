create database Gestao_Alunos;

use Gestao_Alunos;

create table Alunos (
id_alunos int auto_increment primary key,
nome varchar(50) not null,
idade int(30)
);

create table Notas (
id_notas int auto_increment primary key,
disciplina varchar(200) not null,
nota varchar(50) not null,
id_alunos int,
foreign key (id_alunos) references Alunos (id_alunos)
);

insert into Alunos (id_alunos, nome, idade) values
(1, 'João Silva', 8.5),
(2, 'Maria Oliveira', 9.2),
(3, 'Pedro Santos', 7.8),
(4, 'Ana Lima', 6.9),
(5, 'Lucas Costa', 8.0);

insert into Notas (id_notas, disciplina, nota, id_alunos) values
(1, 'Matemática', 8.5, 1),
(2, 'Língua Portuguesa', 9.2, 2),
(3, 'Biologia', 7.8, 3),
(4, 'Química', 6.9, 4),
(5, 'História', 8.0, 5)
 ;
 select * from Notas;
 describe Alunos;
 
-- Errei a idade e Atualizei as idades dos alunos.
update Alunos set idade = 19 where id_alunos = 5 ;

-- Consulte as notas de um aluno específico.
select nome, nota from Alunos
join Notas on Alunos.id_alunos = Notas.id_notas where Alunos.id_alunos = 1;

-- Atualize a nota de um aluno em uma disciplina.
update Notas set nota = 7.0 where id_alunos = 4 ;

-- Exclua a nota de um aluno em uma disciplina.
delete from Notas where disciplina = 'História' and id_notas = 5;

