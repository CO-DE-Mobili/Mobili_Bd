
-- DML

USE bd_mobili;

-- Adicionando parceiros

INSERT INTO tb_parceiro VALUES(
	UUID_TO_BIN(UUID()), --  id - 
    "Marcelinho", -- nome - VARCHAR
    "marcelinho@email.com", -- email - VARCHAR
    "1234", -- senha - VARCHAR
    "123456789", -- telefone - VARCHAR
    1 -- aprovado - VARCHAR
);

-- Adicionando empresa

INSERT INTO tb_empresa VALUES(
	UUID_TO_BIN(UUID()), --  id - 
    "Tecnologia Solaris", -- nome - VARCHAR
    "Soluções Tecnológicas Ltda.", -- razao social - VARCHAR
    "12345678000190", -- cnpj - VARCHAR(14)
    "04567890", -- cep - VARCHAR(8)
    "Avenida da Inovação, 123", -- logradouro - VARCHAR
	"Sala 302, Edifício Lumière", -- complemento - VARCHAR
	"Bairro Central", -- bairro - VARCHAR
	"Cidade do Futuro", -- localidade - VARCHAR
	"SP", -- uf - VARCHAR(2)
	"11", -- ddd - VARCHAR(5)
    NULL, -- foto - blob
    "A Tecnologia Solaris é uma empresa inovadora dedicada a criar soluções tecnológicas brilhantes para os desafios do presente e do futuro.", -- descrição - VARCHAR
    '2023-11-22 09:00:00', -- hora de abertura - DATETIME
	'2023-11-22 18:00:00', -- hora de fechamento - DATETIME
    1 -- aprovado - VARCHAR
);

-- Adicionando categoria

INSERT INTO tb_parceiro VALUES(
	UUID_TO_BIN(UUID()), --  id - 
    "Marcelinho", -- nome - VARCHAR
    "marcelinho@email.com", -- email - VARCHAR
    "1234", -- senha - VARCHAR
    "123456789", -- telefone - VARCHAR
    1 -- aprovado - VARCHAR
);


-- Adicionando categorias

INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Troca de Óleo");
INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Troca de Pneus");
INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Mecânico");
INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Inspeção Veicular");
INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Lanche");
INSERT INTO tb_categoria VALUE (UUID_TO_BIN(UUID()), "Tecnologia");

-- Adicionando dias de funcionamento
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Domingo'); -- domingo
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Segunda'); -- Segunda-feira
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Terça'); -- Terça-feira
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Quarta'); -- Quarta-feira
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Quinta'); -- Quinta-feira
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Sexta'); -- Sexta-feira
INSERT INTO tb_dias_funcionamento VALUE	(UUID_TO_BIN(UUID()), 'Sábado'); -- Sábado

-- adiocionando redes sociais
INSERT INTO tb_redes_sociais VALUE	(UUID_TO_BIN(UUID()), 'Facebook', 'https://www.facebook.com/empresa123'); -- facebook

-- Adicionando serviços
INSERT INTO tb_servico VALUES(
	UUID_TO_BIN(UUID()), --  id - 
    "SACOLÉ", -- nome - VARCHAR
    NULL, -- foto - blob
    1, -- serviço - VARCHAR
    "sorvete", -- descrição - VARCHAR
    20, -- valor - VARCHAR
    "2027-11-22 09:00:00" -- duracao da parceria - VARCHAR
);

-- Adicionando cliente motorista
INSERT INTO tb_motorista VALUES(
	UUID_TO_BIN(UUID()), --  id - 
    "Sergio", -- nome - VARCHAR
    "sergio233o@email.com", -- email - VARCHAR
    "1234", -- senha - VARCHAR
    "155456789", -- telefone - VARCHAR
    45 -- idade - TINYINT
);

-- Adicionando as preferencias do cliente motorista

INSERT INTO tb_motorista_preferencias
VALUES (
    UUID_TO_BIN("a2b76f49-8997-11ee-8ca8-b445067b817e"), -- ID do motorista
    UUID_TO_BIN("834e184d-8996-11ee-8ca8-b445067b817e")  -- ID da categoria
);

-- Adicionando os seviços das categorias

INSERT INTO tb_servico_categoria
VALUES (
    UUID_TO_BIN("548ffbe5-8997-11ee-8ca8-b445067b817e"), -- ID do serviço
    UUID_TO_BIN("8d443330-8996-11ee-8ca8-b445067b817e")  -- ID da categoria
);

-- Adicionando a rede social da empresa

INSERT INTO tb_empresa_redes_sociais
VALUES (
    UUID_TO_BIN("7e45a8bb-8996-11ee-8ca8-b445067b817e"), -- ID da empresa
    UUID_TO_BIN("d6e260d3-8996-11ee-8ca8-b445067b817e")  -- ID da rede social
);

-- Adicionando os dias de funcionamento da empresa

INSERT INTO tb_empresa_funcionamento (id_empresa, id_dia_funcionamento)
VALUES
    (UUID_TO_BIN('7e45a8bb-8996-11ee-8ca8-b445067b817e'), UUID_TO_BIN('902e4902-8996-11ee-8ca8-b445067b817e')), -- ID 1
    (UUID_TO_BIN('7e45a8bb-8996-11ee-8ca8-b445067b817e'), UUID_TO_BIN('941b05d7-8996-11ee-8ca8-b445067b817e')), -- ID 2
    (UUID_TO_BIN('7e45a8bb-8996-11ee-8ca8-b445067b817e'), UUID_TO_BIN('96926b3f-8996-11ee-8ca8-b445067b817e')); -- ID 3]
    
    
-- Adicionando categoria da empresa
INSERT INTO tb_empresa_categoria
VALUES (
    UUID_TO_BIN("7e45a8bb-8996-11ee-8ca8-b445067b817e"), -- ID da empresa
    UUID_TO_BIN("be146d16-8a52-11ee-8ca8-b445067b817e")  -- ID da categoria
);
