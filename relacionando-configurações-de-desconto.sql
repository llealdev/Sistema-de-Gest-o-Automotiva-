ALTER TABLE vendas ADD COLUMN desconto_id INT; 
ALTER TABLE vendas ADD FOREIGN KEY (desconto_id) REFERENCES configuracoe_desconto(id);