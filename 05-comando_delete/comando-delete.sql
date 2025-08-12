-- Remove o cliente com id 1
DELETE FROM clientes WHERE id = 1;

-- Remove todos os clientes com email do domínio 'teste.com'
DELETE FROM clientes WHERE email LIKE '%@teste.com';

-- Remove todos os registros da tabela (NÃO recomendado!)
DELETE FROM clientes;