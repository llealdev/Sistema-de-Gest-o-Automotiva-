INSERT INTO funcionarios (id, nome, rg, cpf, cargo, numero_celular, numero_indentificacao, nivel_acesso) values 
(1, 'Matheus Henrique de Jesus Leal', '177649744', '75247402634', 'CEO', '(71) 92994-7575', '01', '5'),
(2, 'Rogerio Silva Santos', '318855057', '56318158421','Administrador', '(71) 98223-5937', '02', '4'),
(3, 'Ricardo Oliveira Souza', '112632853', '68737881477', 'Contador', '(71) 93812-7248', '03', '3'), 
(4, 'Clara Maria Oliveira', '478175541', '84544537762', 'Vendedor', '(71) 93717-3772', '04', '2'),
(5, 'Renato Carlos Brandão', '247380660', '31876581808', 'Vendedor', '(71) 92166-3242', '05', '2'),
(6, 'Marcus Paulo Pinto Costa', '323383397', '45288261199', 'Vendedor', '(71) 92426-4024', '06', '2');

INSERT INTO clientes (id, nome, cpf, numero_telefone) VALUES
(1, 'Raiam Santos', '25417789453', '(73) 92464-4734'),
(2, 'Carlos Patrick Gomes', '28902233618', '(71) 3082-3345'),
(3, 'Maria Rosa de Jesus', '11865652415', '(71) 92841-4620'),
(4, 'Luciana filgueira', '65476887717', '(71) 2122-2270');

INSERT INTO veiculos (modelo, placa, ano, numero_chassi)
VALUES 
('Toyota Corolla', 'ABC123', 2022, '12345678901234567'),
('Honda Civic', 'DEF456', 2021, '23456789012345678'),
('Ford Focus', 'GHI789', 2023, '34567890123456789'),
('Chevrolet Cruze', 'JKL012', 2020, '45678901234567890'),
('Nissan Sentra', 'MNO345', 2022, '56789012345678901'),
('Volkswagen Golf', 'PQR678', 2021, '67890123456789012'),
('Hyundai Elantra', 'STU901', 2023, '78901234567890123'),
('Mercedes-Benz S-Class', 'ABC123', 2022, '12345678901234567'),
('BMW 7 Series', 'DEF456', 2021, '23456789012345678'),
('Audi A8', 'GHI789', 2023, '34567890123456789'),
('Lexus LS', 'JKL012', 2020, '45678901234567890'),
('Jaguar XJ', 'MNO345', 2022, '56789012345678901'),
('Porsche Panamera', 'PQR678', 2021, '67890123456789012'),
('Tesla Model S', 'STU901', 2023, '78901234567890123');

UPDATE funcionarios SET
nivel_acesso = 'Vendedor'
WHERE id = '6';

UPDATE funcionarios SET
nivel_acesso = 'Vendedor'
WHERE id = '5';

UPDATE funcionarios SET
nivel_acesso = 'Vendedor'
WHERE id = '4';

UPDATE funcionarios SET
nivel_acesso = 'Contador'
WHERE id = '3';

UPDATE funcionarios SET
nivel_acesso = 'Administrador'
WHERE id = '2';

UPDATE funcionarios SET
nivel_acesso = 'CEO'
WHERE id = '1';

INSERT INTO usuarios (nome, senha, tipo_usuario) VALUES 
('admin', 'senha_admin', 'administrador'),
('ceo', 'senha_ceo', 'CEO'),
('contador', 'senha_contador', 'contador'),
('vendedor04', 'senha_vendedor04', 'vendedor'),
('vendedor05', 'senha_vendedor05', 'vendedor'),
('vendedor06', 'senha_vendedor06', 'vendedor');

INSERT INTO configuracoe_desconto (politica_desconto) VALUES 
('Desconto para pagamento à vista'),
('Desconto para clientes frequentes');

INSERT INTO configuracoe_garantia (politica_garantia) VALUES 
('Garantia de cinco meses para todos os carros'),
('Garantia estendida disponível para todos os veículos');

INSERT INTO comunicacao_interna (remetente, destinatario, mensagem, data_envio) VALUES 
(5, 2, 'Olá, Rogerio! Preciso da sua ajuda com um cliente.', '2022-01-05 10:30:00'),
(2, 5, 'Claro, Renato! Estou disponível. O que você precisa?', '2022-01-05 11:00:00');

INSERT INTO vendas (data, valor, veiculo_id, cliente_id, funcionario_id, condicoes_pagamento) VALUES 
('2022-01-10', 150000.00, 1, 1, 6, 'À vista'),
('2022-02-15', 110000.00, 2, 2, 5, 'Parcelado'),
('2022-03-20', 70000.00, 12, 4, 2, 'À vista');

UPDATE veiculos SET 
status = 'Vendido'
WHERE id = 1;

UPDATE veiculos SET 
status = 'Vendido'
WHERE id = 2;

UPDATE veiculos SET 
status = 'Vendido'
WHERE id = 12;

UPDATE vendas SET 
valor = 700000
WHERE id = 3;

INSERT INTO cargo (nome, salario) VALUES
('CEO', 20000.00),
('Administrador', 5000.00),
('Contador', 6500.00),
('Vendedor', 3500.00);

INSERT INTO relatorios_gerenciais (tipo_relatorio, dados_relatorios)
VALUES 
('Desempenho de Vendas', 'Relatório de vendas por mês: 1'),
('Controle de Estoque', 'Relatório de estoque atualizado: 11'),
('Análise Financeira', 'Balanço financeiro do último trimestre: 960.000');

UPDATE funcionarios SET 
cargo = '1'
WHERE id = 1;

UPDATE funcionarios SET 
cargo = '2'
WHERE id = 2;

UPDATE funcionarios SET 
cargo = '3'
WHERE id = 3;

UPDATE funcionarios SET 
cargo = '4'
WHERE id = 4;

UPDATE funcionarios SET 
cargo = '4'
WHERE id = 5;

UPDATE funcionarios SET 
cargo = '4'
WHERE id = 6;