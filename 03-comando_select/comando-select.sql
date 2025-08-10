-- Seleciona todos os dados da tabela clientes (clientes 1)
SELECT * FROM clientes;

-- Seleciona apenas o nome e o email dos clientes (clientes 2)
SELECT nome, email FROM clientes;

-- Seleciona clientes com nome 'Ana Lima' (clientes 3)
SELECT * FROM clientes WHERE nome = 'Ana Lima';

-- Seleciona os 5 primeiros clientes ordenados pelo nome (clientes 4)
SELECT * FROM clientes ORDER BY nome ASC LIMIT 5;