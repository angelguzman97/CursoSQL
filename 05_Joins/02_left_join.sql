---Trae las coincidencia de la izquierda
SELECT *FROM users LEFT JOIN dni ON users.user_id = dni.dni_id;

SELECT users.name, dni.dni_number FROM users LEFT JOIN dni ON users.user_id = dni.dni_id;

--1:1
SELECT users.name, dni.dni_number 
FROM dni
LEFT JOIN users 
ON users.user_id = dni.dni_id;

--N:M
SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages 
ON users.user_id = users_languages.user_id
LEFT JOIN languages
ON users_languages.language_id = languages.language_id;