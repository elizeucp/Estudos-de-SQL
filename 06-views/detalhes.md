# Detalhes Teóricos - Views

## O que são Views?

Views, ou visões, são objetos virtuais de um banco de dados que representam o resultado de uma consulta SQL. Elas funcionam como "tabelas virtuais": não armazenam dados fisicamente, mas exibem informações a partir de consultas previamente definidas.

## Vantagens das Views

- **Simplificação de Consultas:** Uma view pode encapsular consultas complexas, tornando o acesso aos dados mais simples para o usuário.
- **Segurança:** Permite restringir o acesso a determinados dados, mostrando aos usuários apenas as informações necessárias.
- **Manutenção:** Facilita alterações na estrutura das consultas sem impactar diretamente quem utiliza as views.
- **Reutilização:** Pode ser utilizada por diferentes usuários ou aplicações, padronizando o acesso aos dados.

## Sintaxe para criação de Views

```sql
CREATE VIEW nome_da_view AS
SELECT colunas
FROM tabela
WHERE condições;
```

## Exemplos Práticos

- **Exemplo 1:** View de clientes ativos
  ```sql
  CREATE VIEW vw_clientes_ativos AS
  SELECT id, nome, email
  FROM clientes
  WHERE ativo = 1;
  ```

- **Exemplo 2:** View de pedidos acima de R$100
  ```sql
  CREATE VIEW vw_pedidos_valor_alto AS
  SELECT id_pedido, cliente_id, valor_total
  FROM pedidos
  WHERE valor_total > 100;
  ```

## Limitations

- Views geralmente não possuem índices, o que pode afetar a performance em consultas muito grandes.
- Algumas views podem ser apenas de leitura, dependendo das operações realizadas na consulta.

## Utilização

Após criada, pode-se consultar a view como se fosse uma tabela:
```sql
SELECT * FROM vw_clientes_ativos;
```

## Atualização e Exclusão

- Para atualizar uma view:
  ```sql
  CREATE OR REPLACE VIEW nome_da_view AS
  SELECT ...
  ```
- Para excluir uma view:
  ```sql
  DROP VIEW nome_da_view;
  ```

## Considerações Finais

Views são ferramentas poderosas para melhorar a organização e segurança dos dados em bancos relacionais. Elas devem ser utilizadas estrategicamente para facilitar o acesso às informações e manter boas práticas de desenvolvimento em SQL.