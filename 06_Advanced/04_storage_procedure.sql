--#SP en MySQL
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
    END //

--Llamar al SP
call p_all_users();

-----SP con parámetros
DELIMITER //
CREATE PROCEDURE p_age_users(IN age int)
BEGIN
	SELECT * FROM users WHERE age = age;
END //


DROP PROCEDURE p_age_users;

--Darle un nombre distinto al parámetro
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END //


call p_age_users(27);