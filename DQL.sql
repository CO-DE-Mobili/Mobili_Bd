-- DQL

-- SELECT TABELA INTEIRA
SELECT * FROM tb_parceiro;

SELECT * FROM tb_empresa;

SELECT * FROM tb_categoria;

SELECT * FROM tb_dias_funcionamento;

SELECT * FROM tb_redes_sociais;

SELECT * FROM tb_servico;

SELECT * FROM tb_motorista;

SELECT * FROM tb_motorista_preferencias;

SELECT * FROM tb_servico_categoria;


-- SELECT UUID

SELECT BIN_TO_UUID(id), nome FROM tb_servico;

SELECT BIN_TO_UUID(id), nome FROM tb_motorista;

SELECT BIN_TO_UUID(id), nome FROM tb_categoria;

SELECT BIN_TO_UUID(id), nome FROM tb_empresa;

SELECT BIN_TO_UUID(id), nome FROM tb_redes_sociais;

SELECT BIN_TO_UUID(id), nome FROM tb_dias_funcionamento;
