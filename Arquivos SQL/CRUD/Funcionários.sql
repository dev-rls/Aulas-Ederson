create database DB_Funcionarios;

use DB_Funcionarios;

create table Funcionarios(
id_funcionarios int auto_increment primary key,
nome varchar(50) not null,
cargo varchar(30) not null,
salario varchar(50) not null
);

insert into Funcionarios (id_funcionarios, nome, cargo, salario) values
(1, 'João Silva', 'Gerente de Projetos', 8.500),
(2, 'Maria Oliveira', 'Analista de Sistemas',6.500),
(3, 'Pedro Santos', 'Especialista em Marketing',7.000),
(4, 'Ana Lima', 'Consultor Financeiro',7.500),
(5, 'Lucas Costa', 'Coordenador de RH',6.800);

select * from Funcionarios;
-- Liste todos os funcionários com salário maior que um valor específico.
select * from Funcionarios where salario > 7.000;

-- Aumente o salário de um funcionário específico.
update Funcionarios set salario = salario + 1.000 where id_funcionarios = 2;

-- Exclua um funcionário da empresa.
delete from Funcionarios where id_funcionarios = 3;