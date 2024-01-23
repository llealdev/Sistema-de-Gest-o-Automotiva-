DELIMITER //

CREATE FUNCTION calcular_salario_total(funcionario_id INT, mes_consulta INT) RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE quantidade_veiculos INT;
    DECLARE salario_cargo DECIMAL(10,2);

    SELECT COUNT(*) INTO quantidade_veiculos
    FROM vendas
    WHERE funcionario_id = funcionario_id AND MONTH(data) = mes_consulta;

    SELECT salario INTO salario_cargo
    FROM cargo WHERE id = (SELECT cargo_id FROM funcionarios WHERE id = funcionario_id);

    RETURN (salario_cargo + quantidade_veiculos * 100); 
END //

DELIMITER ;