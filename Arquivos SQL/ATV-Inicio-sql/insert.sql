
use universidade;
 
create table departamento (
    id_departamento int auto_increment primary key,
    nome varchar(100) NOT NULL,
    codigo varchar(10) NOT NULL,
    telefone varchar(20),
    centro varchar(50)
);
 
create table curso (
    id_curso int auto_increment primary key,
    nome varchar(100) NOT NULL,
    tipo ENUM('Técnico', 'Graduação', 'Mestrado', 'Doutorado') NOT NULL,
    id_departamento INT,
    coordenador VARCHAR(100),
    vice_coordenador VARCHAR(100),
    foreign key (id_departamento) references DEPARTAMENTO(id_departamento)
);
 
create table aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    numero_matricula VARCHAR(20) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    endereco_rua VARCHAR(100),
    endereco_cidade VARCHAR(50),
    endereco_cep VARCHAR(10),
    telefone VARCHAR(100),
    data_nascimento DATE,
    sexo CHAR(1),
    id_departamento INT,
    id_curso INT,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);
 
create table professor (
    id_professor int auto_increment primary key,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    id_departamento INT,
    telefone VARCHAR(20),
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento)
);
 
create table disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    codigo VARCHAR(20) NOT NULL,
    numero_creditos INT NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento)
);
 
create table oferta_disciplina (
    id_oferta int auto_increment primary key,
    id_professor INT,
    id_disciplina INT,
    horario VARCHAR(50),
    FOREIGN KEY (id_professor) references professor(id_professor),
    FOREIGN KEY (id_disciplina) references disciplina(id_disciplina)
);
 
create table matricula (
    id_matricula int auto_increment primary key,
    id_aluno int,
    id_oferta int,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_oferta) references oferta_disciplina(id_oferta)
);
 
insert into departamento (nome, codigo, telefone, centro) values
('Departamento de Computação', 'D001', '123456789', 'Centro de Ciências'),
('Departamento de Matemática', 'D002', '987654321', 'Centro de Ciências');
 
insert into curso (nome, tipo, id_departamento, coordenador, vice_coordenador) values
('Ciência da Computação', 'Graduação', 1, 'Dr. João', 'Prof. Ana'),
('Engenharia de Software', 'Graduação', 1, 'Dr. Carlos', 'Prof. Lucia');
 
insert into aluno (nome, numero_matricula, cpf, endereco_rua, endereco_cidade, endereco_cep, telefone, data_nascimento, sexo, id_departamento, id_curso) VALUES
('Lucas Silva', '2025001', '12345678901', 'Rua A, 123', 'São Paulo', '01001000', '123456789', '2000-03-15', 'M', 1, 1),
('Mariana Oliveira', '2025002', '98765432100', 'Rua B, 456', 'Rio de Janeiro', '02002000', '987654321', '1999-07-20', 'F', 2, 2);
 
insert into disciplina (nome, descricao, codigo, numero_creditos, id_departamento) values
('Programação I', 'Introdução à programação', 'COMP101', 4, 1),
('Matemática Discreta', 'Fundamentos de lógica e conjuntos', 'MATH101', 4, 2);
 
insert into matricula (id_aluno, id_oferta) values
(1, 1),
(2, 2);
 
select * from departamento;
select * from curso;
select * from aluno;
select * from professor;
select * from disciplina;
select * from oferta_disciplina;
select * from matricula;