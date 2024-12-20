SELECT * FROM user LIMIT 2; --Trae las primeras 2 filas de la tabla
SELECT * FROM user WHERE NOT email = 'angel@hotmail.com' OR age = 26 LIMIT 1;