-- Atualiza o e-mail do cliente com id 1 (update-1)
UPDATE clientes SET email = 'novo@email.com' WHERE id = 1;

-- Atualiza o nome do cliente com id 2 (update-2)
UPDATE clientes SET nome = 'Carlos Eduardo' WHERE id = 2;

-- Atualiza todos os registros [não recomendado] (update-3)
UPDATE clientes SET email = 'padrao@email.com';