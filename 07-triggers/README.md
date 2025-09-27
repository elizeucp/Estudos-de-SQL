# Capítulo 07 - Triggers

O comando **TRIGGER** é utilizado para criar procedimentos automáticos que são executados em resposta a eventos (como INSERT, UPDATE ou DELETE) em uma tabela do banco de dados. Triggers ajudam a manter a integridade dos dados, realizar auditorias e automatizar tarefas recorrentes.

## Exemplos

```sql
-- Trigger que registra toda inserção na tabela pedidos
CREATE TRIGGER tg_audit_pedidos
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
  INSERT INTO audit_log (acao, data_hora)
  VALUES ('Novo pedido inserido', NOW());
END;
```

Atenção: Triggers são executados automaticamente pelo banco, podendo impactar a performance se usados sem critério.

## Trigger para Validação Automática [Bloquear valor negativo]
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

## Removendo uma Trigger (Terceiro Exemplo)
```sql
DROP TRIGGER tg_audit_pedidos;
```

---

Os principais tópicos abordados serão:
- O que são triggers e para que servem
- Como criar, consultar e remover triggers
- Exemplos práticos de uso
- Benefícios, limitações e cuidados ao utilizar triggers