## Comando SELECT

O comando SELECT é a principal forma de consultar dados no SQL. Ele permite buscar todos os registros de uma tabela, somente alguns campos, filtrar informações, ordenar resultados e até realizar cálculos e combinações de tabelas.

- Para buscar todos os dados de uma tabela, use:
  ```sql
  SELECT * FROM clientes;
  ```

- Para buscar apenas algumas colunas:
  ```sql
  SELECT nome, email FROM clientes;
  ```

- Para aplicar filtros, utilize WHERE:
  ```sql
  SELECT nome FROM clientes WHERE email LIKE '%@gmail.com';
  ```

- Para ordenar os resultados:
  ```sql
  SELECT nome FROM clientes ORDER BY nome ASC;
  ```

- Para limitar o número de resultados:
  ```sql
  SELECT nome FROM clientes LIMIT 10;
  ```

O comando SELECT pode ser combinado com funções como COUNT, AVG, SUM, MAX, MIN, além de permitir o uso de JOINs para consultar dados em mais de uma tabela ao mesmo tempo.

---

## Curiosidades e Dicas

- O SELECT permite a criação de consultas complexas usando subconsultas (subqueries).
- O uso de índices acelera a busca de dados em tabelas grandes.
- É possível agrupar resultados usando GROUP BY, ideal para relatórios e análises.

---

## Fontes e Referências

- Documentação MySQL: https://dev.mysql.com/doc/refman/8.0/en/select.html