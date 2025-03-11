use dbClientes;
drop table cadastroClientes;

create table cadastroClientes (
cpf varchar(14) primary key,
nome varchar(100) not null,
rg varchar(20),
id_cidade int,
id_sexo int,
id_nacionalidade int,
fone varchar(15),
id_raca int,
id_escolaridade int,
foreign key (id_cidade) references cidade(id_cidade),
foreign key (id_sexo) references sexo(id_sexo),
foreign key (id_nacionalidade) references nacionalidade(id_nacionalidade),
foreign key (id_raca) references raca(id_raca),
foreign key (id_escolaridade) references escolaridade(id_escolaridade)
);

create table estado (
id_estado int auto_increment primary key,
estado varchar(100) not null);

create table cidade (
id_cidade int auto_increment primary key,
cidade varchar(100) not null,
id_estado int,
foreign key (id_estado) references estado(id_estado)
);

create table sexo (
id_sexo int auto_increment primary key,
sexo varchar(10) not null
    );
    
create table nacionalidade (
id_nacionalidade int auto_increment primary key,
nacionalidade varchar(100) not null
);

create table raca (
id_raca int auto_increment primary key,
raca varchar(50) not null
);

create table escolaridade (
id_escolaridade int auto_increment primary key,
escolaridade varchar(100) not null
);

insert into cadastroClientes (cpf, nome, rg, id_cidade, id_sexo, id_nacionalidade, fone, id_raca, id_escolaridade) values
('123.456.789-00', 'João Silva', 'MG1234567', 1, 1, 1, '(67) 91234-5678', 1, 1),
('234.567.890-11', 'Maria Oliveira', 'SP2345678', 2, 2, 2, '(67) 92345-6789', 2, 2),
('345.678.901-22', 'Pedro Souza', 'RJ3456789', 3, 1, 2, '(67) 93456-7890', 3, 3),
('456.789.012-33', 'Ana Costa', 'BA4567890', 4, 2, 1, '(67) 94567-8901', 4, 4),
('567.890.123-44', 'Lucas Santos', 'PR5678901', 5, 1, 1, '(67) 95678-9012', 5, 5),
('678.901.234-55', 'Carla Lima', 'RS6789012', 6, 2, 2, '(67) 96789-0123', 1, 1),
('789.012.345-66', 'Rafael Almeida', 'SC7890123', 7, 1, 2, '(67) 97890-1234', 2, 2),
('890.123.456-77', 'Fernanda Pereira', 'ES8901234', 8, 2, 1, '(67) 98901-2345', 3, 3),
('901.234.567-88', 'Gustavo Fernandes', 'GO9012345', 9, 1, 1, '(67) 99012-3456', 4, 4),
('012.345.678-99', 'Letícia Rodrigues', 'MT0123456', 10, 2, 1, '(67) 90123-4567', 5, 8),
('111.222.333-44', 'Marcos Vieira', 'MS1112223', 11, 1, 1, '(67) 91234-5678', 1, 1),
('222.333.444-55', 'Aline Machado', 'RO2223334', 12, 2, 2, '(67) 92345-6789', 2, 2),
('333.444.555-66', 'Thiago Moraes', 'RR3334445', 13, 1, 2, '(67) 93456-7890', 3, 3),
('444.555.666-77', 'Juliana Cardoso', 'TO4445556', 14, 2, 1, '(67) 94567-8901', 4, 4),
('555.666.777-88', 'Gabriel Barbosa', 'AC5556667', 15, 1, 2, '(67) 95678-9012', 5, 8),
('666.777.888-99', 'Camila Ribeiro', 'AL6667778', 16, 2, 2, '(67) 96789-0123', 1, 1),
('777.888.999-00', 'Vinícius Neves', 'AM7778889', 17, 1, 1, '(67) 97890-1234', 2, 2),
('888.999.000-11', 'Débora Teixeira', 'AP8889990', 18, 2, 1, '(67) 98901-2345', 3, 3),
('999.000.111-22', 'Felipe Martins', 'DF9990001', 19, 1, 2, '(67) 99012-3456', 4, 4),
('000.111.222-33', 'Isabela Azevedo', 'MA0001112', 20, 2, 1, '(67) 90123-4567', 5, 7);

insert into estado (id_estado, estado) values
(1, 'Acre'),
(2, 'Alagoas'),
(3, 'Amapá'),
(4, 'Amazonas'),
(5, 'Bahia'),
(6, 'Ceará'),
(7, 'Distrito Federal'),
(8, 'Espírito Santo'),
(9, 'Goiás'),
(10, 'Maranhão'),
(11, 'Mato Grosso'),
(12, 'Mato Grosso do Sul'),
(13, 'Minas Gerais'),
(14, 'Pará'),
(15, 'Paraíba'),
(16, 'Paraná'),
(17, 'Pernambuco'),
(18, 'Piauí'),
(19, 'Rio de Janeiro'),
(20, 'Rio Grande do Norte'),
(21, 'Rio Grande do Sul'),
(22, 'Rondônia'),
(23, 'Roraima'),
(24, 'Santa Catarina'),
(25, 'São Paulo'),
(26, 'Sergipe'),
(27, 'Tocantins');

insert into cidade (id_cidade, cidade, id_estado) values
(1, 'Rio Branco', 1),
(2, 'Cruzeiro do Sul', 1),
(3, 'Sena Madureira', 1),
(4, 'Tarauacá', 1),
(5, 'Feijó', 1),
(6, 'Maceió', 2),
(7, 'Arapiraca', 2),
(8, 'Palmeira dos Índios', 2),
(9, 'Rio Largo', 2),
(10, 'Penedo', 2),
(11, 'Macapá', 3),
(12, 'Santana', 3),
(13, 'Laranjal do Jari', 3),
(14, 'Oiapoque', 3),
(15, 'Mazagão', 3),
(16, 'Manaus', 4),
(17, 'Parintins', 4),
(18, 'Itacoatiara', 4),
(19, 'Manacapuru', 4),
(20, 'Coari', 4),
(21, 'Salvador', 5),
(22, 'Feira de Santana', 5),
(23, 'Vitória da Conquista', 5),
(24, 'Camaçari', 5),
(25, 'Itabuna', 5),
(26, 'Fortaleza', 6),
(27, 'Caucaia', 6),
(28, 'Juazeiro do Norte', 6),
(29, 'Maracanaú', 6),
(30, 'Sobral', 6),
(31, 'Brasília', 7),
(32, 'Taguatinga', 7),
(33, 'Ceilândia', 7),
(34, 'Samambaia', 7),
(35, 'Planaltina', 7),
(36, 'Vitória', 8),
(37, 'Vila Velha', 8),
(38, 'Serra', 8),
(39, 'Cariacica', 8),
(40, 'Guarapari', 8),
(41, 'Goiânia', 9),
(42, 'Anápolis', 9),
(43, 'Aparecida de Goiânia', 9),
(44, 'Rio Verde', 9),
(45, 'Luziânia', 9),
(46, 'São Luís', 10),
(47, 'Imperatriz', 10),
(48, 'Timon', 10),
(49, 'Caxias', 10),
(50, 'Codó', 10),
(51, 'Cuiabá', 11),
(52, 'Várzea Grande', 11),
(53, 'Rondonópolis', 11),
(54, 'Sinop', 11),
(55, 'Tangará da Serra', 11),
(56, 'Campo Grande', 12),
(57, 'Dourados', 12),
(58, 'Três Lagoas', 12),
(59, 'Corumbá', 12),
(60, 'Ponta Porã', 12),
(61, 'Belo Horizonte', 13),
(62, 'Uberlândia', 13),
(63, 'Contagem', 13),
(64, 'Juiz de Fora', 13),
(65, 'Betim', 13),
(66, 'Belém', 14),
(67, 'Ananindeua', 14),
(68, 'Santarém', 14),
(69, 'Marabá', 14),
(70, 'Castanhal', 14),
(71, 'João Pessoa', 15),
(72, 'Campina Grande', 15),
(73, 'Santa Rita', 15),
(74, 'Patos', 15),
(75, 'Bayeux', 15),
(76, 'Curitiba', 16),
(77, 'Londrina', 16),
(78, 'Maringá', 16),
(79, 'Ponta Grossa', 16),
(80, 'Cascavel', 16),
(81, 'Recife', 17),
(82, 'Jaboatão dos Guararapes', 17),
(83, 'Olinda', 17), 
(84, 'Caruaru', 17), 
(85, 'Petrolina', 17),
(86, 'Teresina', 18),
(87, 'Parnaíba', 18),
(88, 'Picos', 18),
(89, 'Piripiri', 18),
(90, 'Floriano', 18),
(91, 'Rio de Janeiro', 19),
(92, 'São Gonçalo', 19),
(93, 'Duque de Caxias', 19),
(94, 'Nova Iguaçu', 19),
(95, 'Niterói', 19),
(96, 'Natal', 20),
(97, 'Mossoró', 20),
(98, 'Parnamirim', 20),
(99, 'São Gonçalo do Amarante', 20),
(100, 'Macau', 20),
(101, 'Porto Alegre', 21),
(102, 'Caxias do Sul', 21),
(103, 'Pelotas', 21),
(104, 'Canoas', 21),
(105, 'Santa Maria', 21),
(106, 'Porto Velho', 22),
(107, 'Ji-Paraná', 22),
(108, 'Ariquemes', 22),
(109, 'Cacoal', 22),
(110, 'Vilhena', 22),
(111, 'Boa Vista', 23),
(112, 'Rorainópolis', 23),
(113, 'Caracaraí', 23),
(114, 'Mucajaí', 23),
(115, 'Alto Alegre', 23),
(116, 'Florianópolis', 24),
(117, 'Joinville', 24),
(118, 'Blumenau', 24),
(119, 'São José', 24),
(120, 'Chapecó', 24),
(121, 'São Paulo', 25),
(122, 'Campinas', 25),
(123, 'São Bernardo do Campo', 25),
(124, 'Santo André', 25),
(125, 'Guarulhos', 25),
(126, 'Aracaju', 26),
(127, 'Nossa Senhora do Socorro', 26),
(128, 'Lagarto', 26),
(129, 'Itabaiana', 26),
(130, 'Estância', 26),
(131, 'Palmas', 27),
(132, 'Araguaína', 27),
(133, 'Gurupi', 27),
(134, 'Porto Nacional', 27),
(135, 'Paraíso do Tocantins', 27)
;

insert into sexo (id_sexo, sexo) values
(1, 'Masculino'),
(2, 'Feminino'),
(3, 'Outro');

insert into nacionalidade (id_nacionalidade, nacionalidade) values 
(1,'brasileira'),
(2,'estrangeira');

insert into raca (id_raca, raca) values 
(1, 'Branca'),
(2, 'Negra'),
(3, 'Asiática'),
(4, 'Indígena'),
(5, 'Parda');

insert into escolaridade (id_escolaridade, escolaridade) values 
(1, 'Ensino Fundamental Incompleto'),
(2, 'Ensino Fundamental Completo'),
(3, 'Ensino Médio Incompleto'),
(4, 'Ensino Médio Completo'),
(5, 'Ensino Técnico'),
(6, 'Ensino Superior Incompleto'),
(7, 'Ensino Superior Completo'),
(8, 'Pós-graduação');

select * from raca;
select * from sexo;
select * from cidade;
select * from estado;
select * from nacionalidade;
select * from escolaridade;
select * from cadastroClientes;
-- Atividade Join
select cadastroClientes.nome, cidade.cidade from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade;
										--
select cadastroClientes.nome, estado.estado from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade
join estado on cidade.id_estado = estado.id_estado;
										--
select cadastroClientes.nome, cadastroClientes.cpf, raca.raca from cadastroClientes
join raca on cadastroClientes.id_raca = raca.id_raca;
										--
select cadastroClientes.nome, nacionalidade.nacionalidade 
from cadastroClientes join nacionalidade on cadastroClientes.id_nacionalidade = nacionalidade.id_nacionalidade;
										--
select cadastroClientes.nome, escolaridade.escolaridade from cadastroClientes
join escolaridade on cadastroClientes.id_escolaridade = escolaridade.id_escolaridade;
										--
select cadastroClientes.nome, cidade.cidade, estado.estado from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade
join estado on cidade.id_estado = estado.id_estado;
										--
select cadastroClientes.nome, cidade.cidade, estado.estado, cadastroClientes.fone, cadastroClientes.rg, 
sexo.sexo, nacionalidade.nacionalidade, raca.raca, escolaridade.escolaridade from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade
join estado on cidade.id_estado = estado.id_estado
join sexo on cadastroClientes.id_sexo = sexo.id_sexo
join nacionalidade on cadastroClientes.id_nacionalidade = nacionalidade.id_nacionalidade
join raca on cadastroClientes.id_raca = raca.id_raca
join escolaridade on cadastroClientes.id_escolaridade = escolaridade.id_escolaridade;

-- Atividade update
set sql_safe_updates=0;

update cidade 
set cidade = case 
    when left(cidade, 1) between 'A' and 'M' then 'abaixo de M'
    else 'acima de M'
end;

update estado 
set estado = case 
    when estado in ('Mato Grosso do Sul', 'Mato Grosso', 'Goiás', 'Distrito Federal') then 'Centro Oeste'
    when estado in ('São Paulo', 'Rio de Janeiro', 'Minas Gerais', 'Espírito Santo') then 'Sudeste'
    when estado in ('Paraná', 'Santa Catarina', 'Rio Grande do Sul') then 'Sul'
    when estado in ('Bahia', 'Pernambuco', 'Ceará', 'Alagoas', 'Sergipe', 'Rio Grande do Norte', 'Paraíba', 'Maranhão', 'Piauí') then 'Nordeste'
    else 'Norte'
end;

update nacionalidade 
set nacionalidade = 'fora do Brasil' 
where nacionalidade = 'estrangeira';

update raca 
set raca = 'seres humanos';

update escolaridade 
set escolaridade = case 
    when escolaridade in ('Ensino Fundamental Incompleto', 'Ensino Médio Completo') then 'Ensino Fundamental'
    when escolaridade in ('Ensino Superior Completo', 'Pós-Graduação', 'Ensino Superior Incompleto', 'Ensino Técnico') then 'Ensino Avançado'
     else 'Ensino Avançado'
end;

-- selects conforme solicitado
select nome, cidade from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade;

select nome, estado from cadastroClientes
join estado on cadastroClientes.id_estado = estado.id_estado;

select nome, cpf, raca from cadastroClientes
join raca on cadastroClientes.id_raca = raca.id_raca;

select nome, nacionalidade from cadastroClientes
join nacionalidade on cadastroClientes.id_nacionalidade = nacionalidade.id_nacionalidade;

select nome, escolaridade from cadastroClientes
join escolaridade on cadastroClientes.id_escolaridade = escolaridade.id_escolaridade;

select nome, cidade, estado from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade
join estado on cadastroClientes.id_estado = estado.id_estado;

select nome, cidade, estado, fone, rg, sexo, nacionalidade, raca, escolaridade from cadastroClientes
join cidade on cadastroClientes.id_cidade = cidade.id_cidade
join estado on cadastroClientes.id_estado = estado.id_estado
join sexo on cadastroClientes.id_sexo = sexo.id_sexo
join nacionalidade on cadastroClientes.id_nacionalidade = nacionalidade.id_nacionalidade
join raca on cadastroClientes.id_raca = raca.id_raca
join escolaridade on cadastroClientes.id_escolaridade = escolaridade.id_escolaridade;




