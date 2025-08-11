## Comando UPDATE

O comando UPDATE serve para modificar dados já existentes em uma tabela. Para utilizá-lo, você deve especificar a tabela, os campos a serem alterados e os novos valores desejados. O uso da cláusula WHERE é fundamental para garantir que apenas os registros desejados serão alterados. Sem o WHERE, todos os registros da tabela serão atualizados, o que pode causar grandes problemas.

A sintaxe básica é:

```sql
UPDATE nome_da_tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condição;
```

O UPDATE permite atualizar um ou mais campos ao mesmo tempo, além de aceitar expressões e subconsultas como novos valores. Também é possível utilizar operadores aritméticos para atualizar valores com base no valor anterior do campo, por exemplo:

```sql
UPDATE produtos SET preco = preco * 1.10 WHERE categoria = 'Eletrônicos';
```

Esse comando aumenta em 10% o preço de todos os produtos da categoria "Eletrônicos".

Outra possibilidade é fazer UPDATE com base em outra tabela, usando JOINs. Exemplo:

```sql
UPDATE clientes c
JOIN pedidos p ON c.id = p.cliente_id
SET c.status = 'Ativo'
WHERE p.data > '2025-01-01';
```

Esse comando define o status como "Ativo" para todos os clientes que fizeram pedidos após 1º de janeiro de 2025.

**Dicas importantes:**
- Sempre revise o filtro do WHERE antes de executar um UPDATE.
- Em bancos de produção, é recomendado fazer um backup antes de grandes atualizações.
- Use comandos SELECT antes do UPDATE para conferir quais registros serão afetados.
- O UPDATE retorna o número de registros alterados após a execução.

## Referências

- [Documentação MySQL - UPDATE](https://dev.mysql.com/doc/refman/8.0/en/update.html)
- [W3Schools SQL UPDATE](https://www.w3schools.com/sql/sql_update.asp)