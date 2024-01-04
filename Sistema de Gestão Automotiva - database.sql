CREATE DATABASE SISTEMA_DE_GESTAO_AUTOMOTIVA;

CREATE TABLE veiculos (
 id INT NOT NULL AUTO_INCREMENT,
 modelo VARCHAR(255) NOT NULL,
 placa CHAR(7) NOT NULL,
 ano YEAR NOT NULL,
 numero_chassi CHAR(17),
 status VARCHAR(20) NOT NULL DEFAULT('Disponível'),
 PRIMARY KEY (id)
);

CREATE TABLE usuarios (
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 senha VARCHAR(255) NOT NULL,
 tipo_usuario VARCHAR(20) NOT NULL,
 PRIMARY KEY (id)
);

CREATE TABLE funcionarios (
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 rg CHAR(9) NOT NULL,
 cpf CHAR(11) NOT NULL,
 cargor VARCHAR(50) NOT NULL,
 numero_celular VARCHAR(15) NOT NULL,
 numero_indenticacao VARCHAR(20) NOT NULL,
 nivel_acesso VARCHAR(20) NOT NULL, 
 PRIMARY KEY (id)
);

CREATE TABLE clientes (
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 cpf CHAR(11) NOT NULL, 
 numero_telefone VARCHAR(15) NOT NULL,
 email VARCHAR(15),
 PRIMARY KEY (id)
);

CREATE TABLE vendas (
 id INT NOT NULL AUTO_INCREMENT, 
 data date,
 valor DECIMAL(10,2),
 veiculo_id INT,
 cliente_id INT,
 funcionario_id INT,
 condicoes_pagamento VARCHAR(255),
 PRIMARY KEY (id),
 FOREIGN KEY (veiculo_id) REFERENCES veiculos(id),
 FOREIGN KEY (cliente_id) REFERENCES clientes(id),
 FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);

CREATE TABLE configuracoe_desconto (
 id INT NOT NULL AUTO_INCREMENT,
 politica_desconto VARCHAR(255) NOT NULL,
 PRIMARY KEY (id)
);

CREATE TABLE configuracoe_garantia (
 id INT NOT NULL AUTO_INCREMENT,
 politica_garantia VARCHAR(255),
 PRIMARY KEY (id)
);

CREATE TABLE comunicacao_interna (
 id INT NOT NULL AUTO_INCREMENT, 
 remetente INT,
 destinatario INT,
 mensagem TEXT, 
 data_envio DATETIME,
 PRIMARY KEY (id),
 FOREIGN KEY (remetente) REFERENCES funcionarios(id),
 FOREIGN KEY (destinatario) REFERENCES funcionarios(id)
);

CREATE TABLE relatorios_gerenciais (
 id INT NOT NULL AUTO_INCREMENT,
 tipo_relatorio VARCHAR(255),
 dados_relatorios TEXT,
 PRIMARY KEY (id)
);

ALTER TABLE funcionarios
CHANGE cargor cargo VARCHAR(50) NOT NULL;

ALTER TABLE funcionarios
CHANGE numero_indenticacao numero_indentificacao VARCHAR(20) NOT NULL;

CREATE TABLE cargo ( 
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL,
 salario DECIMAL(10,2) NOT NULL,
 PRIMARY KEY (id)
);