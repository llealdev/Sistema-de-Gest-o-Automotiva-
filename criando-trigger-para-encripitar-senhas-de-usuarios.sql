DELIMITER //

CREATE TRIGGER encriptar_senha_before_insert
BEFORE INSERT ON usuarios
FOR EACH ROW
BEGIN
    SET NEW.senha = SHA2(NEW.senha, 256);
END //

CREATE TRIGGER encriptar_senha_before_update
BEFORE UPDATE ON usuarios
FOR EACH ROW
BEGIN
    SET NEW.senha = SHA2(NEW.senha, 256);
END //

DELIMITER ;
