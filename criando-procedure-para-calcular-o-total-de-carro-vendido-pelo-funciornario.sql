DELIMITER //

CREATE PROCEDURE calcular_veiculos_vendidos_no_mes_pelo_funcionario(IN funcionario_id INT)
BEGIN
    DECLARE mes_atual INT;
    SET mes_atual = MONTH(NOW());
    SELECT COUNT(*) AS veiculos_vendidos
    FROM vendas
    WHERE funcionario_id = funcionario_id AND MONTH(data) = mes_atual;
END //

DELIMITER ;

CALL calcular_veiculos_vendidos_no_mes_pelo_funcionario(6);