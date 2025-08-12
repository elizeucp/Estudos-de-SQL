## Comando DELETE

O comando DELETE permite remover um ou mais registros de uma tabela no banco de dados. A sintaxe básica é simples, mas seu uso exige atenção para evitar a exclusão indesejada de dados.

A forma geral do comando é:

```sql
DELETE FROM nome_da_tabela WHERE condição;
```

A cláusula WHERE é essencial para que apenas os registros desejados sejam removidos. Por exemplo, para apagar apenas um cliente específico, utiliza-se o identificador único dele:

```sql
DELETE FROM clientes WHERE id = 5;
```

Caso não seja utilizado o WHERE, todos os registros da tabela serão apagados:

```sql
DELETE FROM clientes;
```

Além disso, é possível usar condições mais complexas, como operadores lógicos (AND, OR) e curingas (LIKE). Por exemplo:

```sql
DELETE FROM clientes WHERE email LIKE '%@exemplo.com' AND ativo = 0;
```

Esse comando remove todos os clientes com email do domínio "exemplo.com" que estejam inativos.

**Dicas importantes:**
- Sempre revise o filtro do WHERE antes de executar um DELETE.
- Em bancos de produção, recomenda-se realizar um backup antes de grandes exclusões.
- Use um SELECT com a mesma condição do WHERE para conferir quais registros serão afetados.
- O DELETE retorna o número de registros removidos após a execução.

## Referências

- [Documentação MySQL - DELETE](https://dev.mysql.com/doc/refman/8.0/en/delete.html)
- [W3Schools SQL DELETE](https://www.w3schools.com/sql/sql_delete.asp)