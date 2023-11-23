
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

INSERT INTO tb_motorista_preferencias
VALUES (
    UUID_TO_BIN("a2b76f49-8997-11ee-8ca8-b445067b817e"), -- ID do motorista
    UUID_TO_BIN("834e184d-8996-11ee-8ca8-b445067b817e")  -- ID da categoria
);