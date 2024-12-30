CREATE TABLE hello_mysql.email_history (
  email_history_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY (email_history_id),
  UNIQUE INDEX email_history_id_UNIQUE (email_history_id ASC) VISIBLE);


#MYSQL
DELIMITER //
CREATE TRIGGER tg_email
--#indicar si queremos que se ejecute antes o después. BEFORE/AFTER
--#Indicar la acción INSERT/UPDATE/DELETE
AFTER
UPDATE
ON users
FOR EACH ROW
BEGIN #Se ejecuta la condición
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES(OLD.user_id, OLD.email);
    END IF;
END //
#Tiene que llevar un espacio al principio y al final DELIMITER
DELIMITER ;

--Borrar el trigger
DROP TRIGGER IF EXISTS tg_email;

UPDATE users SET email = 'angelteo0510@gmail.com' WHERE user_id = 1;