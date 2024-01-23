CREATE USER 'admin'@'localhost' IDENTIFIED BY 'senha_admin';
CREATE USER 'ceo'@'localhost' IDENTIFIED BY 'senha_ceo';
CREATE USER 'contador'@'localhost' IDENTIFIED BY 'senha_contador';
CREATE USER 'vendendor04'@'localhost' IDENTIFIED BY 'vendedor04';
CREATE USER 'vendendor05'@'localhost' IDENTIFIED BY 'vendedor05';
CREATE USER 'vendendor06'@'localhost' IDENTIFIED BY 'vendedor06';

CREATE ROLE 'admin_p', 'ceo_p', 'contador_p', 'vendedor_p';


GRANT  SELECT, INSERT, UPDATE ON  sistema_de_gestao_automotiva.clientes TO 'admin_p'; 
GRANT  SELECT, INSERT, UPDATE ON  sistema_de_gestao_automotiva.funcionarios TO 'admin_p'; 
GRANT ALL ON  sistema_de_gestao_automotiva.* TO 'admin_p'; 
GRANT ALL ON sistema_de_gestao_automotiva.* TO 'ceo_p';
GRANT ALL ON sistema_de_gestao_automotiva.vendas TO 'contador_p'; 
GRANT ALL ON sistema_de_gestao_automotiva.relatorios_gerencias TO 'contador_p'; 
GRANT ALL ON sistema_de_gestao_automotiva.comunicacao_interna TO 'contador_p'; 
GRANT  SELECT, INSERT, UPDATE ON  sistema_de_gestao_automotiva.comunicacao_interna TO 'vendedor_p';
GRANT  SELECT, INSERT, UPDATE ON  sistema_de_gestao_automotiva.vendas TO 'vendedor_p';
GRANT  SELECT, INSERT, UPDATE ON  sistema_de_gestao_automotiva.veiculos TO 'vendedor_p';

GRANT 'admin_p' TO 'admin'@'localhost';
GRANT 'ceo_p' TO 'ceo'@'localhost';
GRANT 'contador_p' TO 'contador'@'localhost';
GRANT 'vendedor_p' TO  'vendendor04'@'localhost';
GRANT 'vendedor_p' TO  'vendendor05'@'localhost';
GRANT 'vendedor_p' TO  'vendendor06'@'localhost';

FLUSH PRIVILEGES;

SET DEFAULT ROLE 'admin_p' TO 'admin'@'localhost';
SET DEFAULT ROLE 'ceo_p' TO 'ceo'@'localhost';
SET DEFAULT ROLE 'contador_p' TO 'contador'@'localhost';
SET DEFAULT ROLE 'vendedor_p' TO  'vendendor04'@'localhost';
SET DEFAULT ROLE 'vendedor_p' TO  'vendendor05'@'localhost';
SET DEFAULT ROLE 'vendedor_p' TO  'vendendor06'@'localhost';

