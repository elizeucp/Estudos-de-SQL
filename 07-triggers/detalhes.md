# Detalhes Teóricos - Triggers

## O que são Triggers?

Triggers, ou gatilhos, são objetos do banco de dados que executam ações automáticas em resposta a eventos específicos (INSERT, UPDATE, DELETE) realizados em tabelas. Eles atuam como “vigias” que garantem regras e automatizam rotinas sem a necessidade de intervenção manual.

## Vantagens dos Triggers

- **Automação:** Realizam ações automaticamente após eventos, evitando esquecimentos ou erros humanos.
- **Integridade dos Dados:** Garantem que determinadas regras sejam sempre aplicadas ao modificar dados.
- **Auditoria:** Permitem registrar alterações, exclusões ou inserções em tabelas de histórico.
- **Validação:** Possibilitam validar dados antes de serem inseridos ou alterados.

## Sintaxe para criação de Triggers

A sintaxe pode variar de acordo com o SGBD (MySQL, PostgreSQL, SQL Server etc.).  
Exemplo em MySQL:

```sql
CREATE TRIGGER nome_trigger
[BEFORE | AFTER] [INSERT | UPDATE | DELETE] ON nome_tabela
FOR EACH ROW
BEGIN
  -- instruções SQL
END;
```

## Exemplos Práticos

- **Exemplo 1:** Trigger de auditoria ao inserir pedidos
  ```sql
  CREATE TRIGGER tg_audit_pedidos
  AFTER INSERT ON pedidos
  FOR EACH ROW
  BEGIN
    INSERT INTO audit_log (acao, data_hora)
    VALUES ('Novo pedido inserido', NOW());
  END;
  ```

- **Exemplo 2:** Trigger para impedir valores negativos em pedidos
  ```sql
  CREATE TRIGGER tg_valida_valor
  BEFORE INSERT ON pedidos
  FOR EACH ROW
  BEGIN
    IF NEW.valor_total < 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Valor não pode ser negativo';
    END IF;
  END;
  ```

## Limitações e Cuidados

- Triggers podem impactar a performance do banco se utilizados excessivamente ou em tabelas muito grandes.
- A lógica complexa dentro de triggers pode dificultar a manutenção e o entendimento do sistema.
- Nem todos os SGBDs suportam todos os tipos de triggers ou as mesmas funcionalidades.

## Utilização

Triggers são criados e removidos com comandos específicos do SGBD:

```sql
-- Remover uma trigger
DROP TRIGGER nome_trigger;
```

## Considerações Finais

Triggers são ferramentas essenciais para automação e garantia de regras de negócio diretamente no banco de dados. Devem ser utilizados com cautela, sempre documentando suas funções para facilitar a manutenção futura.