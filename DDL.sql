CREATE DATABASE bd_mobili;

USE bd_mobili;
-- USE bd_mobili;
CREATE TABLE tb_parceiro(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
telefone VARCHAR (255) NOT NULL,
aprovado BIT NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_empresa(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
razao_social VARCHAR(255) NOT NULL,
cnpj VARCHAR(14) NOT NULL,
cep VARCHAR(8) NOT NULL,
logradouro VARCHAR(255) NOT NULL,
complemento VARCHAR(255),
bairro VARCHAR(255) NOT NULL,
localidade VARCHAR(255) NOT NULL,
uf VARCHAR(2) NOT NULL,
ddd VARCHAR(5) NOT NULL,
foto BLOB,
descricao TEXT NOT NULL,
hora_abertura DATETIME NOT NULL,
hora_fechamento DATETIME NOT NULL,
aprovado BIT NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_categoria(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_dias_funcionamento(
id BINARY(16) NOT NULL,
nome CHAR(1) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_redes_sociais(
id BINARY(16) NOT NULL,
nome VARCHAR(100) NOT NULL,
link VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_servico(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
foto BLOB,
servico BIT NOT NULL,
descricao TEXT NOT NULL,
valor DECIMAL(10,2) NOT NULL,
duracao_parceria DATETIME NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_motorista(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
telefone VARCHAR(15) NOT NULL,
idade TINYINT,
PRIMARY KEY(id)
);

CREATE TABLE tb_motorista_preferencias(
id_motorista BINARY(16) NOT NULL,
id_categoria BINARY(16) NOT NULL,
FOREIGN KEY(id_motorista) REFERENCES tb_motorista(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_servico_categoria(
id_servico BINARY(16) NOT NULL,
id_categoria BINARY(16) NOT NULL,
FOREIGN KEY(id_servico) REFERENCES tb_servico(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_empresa_redes_sociais(
id_empresa BINARY(16) NOT NULL,
id_redes_sociais BINARY(16) NOT NULL,
FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
FOREIGN KEY(id_redes_sociais) REFERENCES tb_redes_sociais(id)
);

CREATE TABLE tb_empresa_funcionamento(
id_empresa BINARY(16) NOT NULL,
id_dia_funcionamento BINARY(16) NOT NULL,
FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
FOREIGN KEY(id_dia_funcionamento) REFERENCES tb_dias_funcionamento(id)
);

CREATE TABLE tb_empresa_categoria(
id_empresa BINARY(16) NOT NULL,
id_categoria BINARY(16) NOT NULL,
FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);