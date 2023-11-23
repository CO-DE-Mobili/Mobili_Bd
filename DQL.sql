-- DQL

-- SELECT TABELA INTEIRA
SELECT * FROM tb_motorista_preferencias;
-- SELECT UUID

SELECT BIN_TO_UUID(id), nome FROM tb_servico;
SELECT BIN_TO_UUID(id), nome FROM tb_motorista;
SELECT BIN_TO_UUID(id), nome FROM tb_categoria;