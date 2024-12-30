--Trae los datos de la tabla derecha

--1:1
SELECT *FROM users RIGHT JOIN dni ON users.user_id = dni.dni_id;

SELECT users.name, dni.dni_number FROM users RIGHT JOIN dni ON users.user_id = dni.dni_id;

--N:M
SELECT users.name, languages.name 
FROM users
RIGHT JOIN users_languages 
ON users.user_id = users_languages.user_id
RIGHT JOIN languages
ON users_languages.language_id = languages.language_id;