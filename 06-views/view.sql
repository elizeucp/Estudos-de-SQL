CREATE VIEW vw_clientes_ativos AS
SELECT id, nome, email
FROM clientes
WHERE ativo = 1;

-- Consulta a view criada
SELECT * FROM vw_clientes_ativos;