CREATE DATABASE sistema_servico;
USE sistema_servico;

CREATE TABLE autenticacao (
    login VARCHAR(50) PRIMARY KEY,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    permissao ENUM('admin', 'funcionario', 'cliente') NOT NULL
);

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    email_autenticacao VARCHAR(100) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14) UNIQUE NOT NULL,
    FOREIGN KEY (email_autenticacao) REFERENCES autenticacao(email)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY,
    dia_disponivel VARCHAR(50) NOT NULL,
    turno_atendimento ENUM('manhã', 'tarde', 'noite') NOT NULL,
    foto VARCHAR(255),
    FOREIGN KEY (id_funcionario) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    interesse TEXT,
    observacao TEXT,
    FOREIGN KEY (id_cliente) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE especialidade (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE funcionario_especialidade (
    id_funcionario INT,
    id_especialidade INT,
    PRIMARY KEY (id_funcionario, id_especialidade),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data DATE NOT NULL,
    confirmado BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE cliente_pedido (
    id_cliente INT,
    id_pedido INT,
    PRIMARY KEY (id_cliente, id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE pedido_servico (
    id_pedido INT,
    id_servico INT,
    PRIMARY KEY (id_pedido, id_servico),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE funcionario_pedido (
    id_funcionario INT,
    id_pedido INT,
    PRIMARY KEY (id_funcionario, id_pedido),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);
