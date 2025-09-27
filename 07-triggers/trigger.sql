-- Criação da tabela de log (se ainda não existir)
CREATE TABLE IF NOT EXISTS log_clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT,
  acao VARCHAR(50),
  data_hora DATETIME
);

-- Trigger: registra no log toda vez que um novo cliente for inserido
DELIMITER //

CREATE TRIGGER tg_log_novo_cliente
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
  INSERT INTO log_clientes (cliente_id, acao, data_hora)
  VALUES (NEW.id, 'Inserção', NOW());
END;
//

DELIMITER ;