SELECT *,
CASE
	WHEN age >= 27 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;


SELECT *,
CASE
	WHEN age >= 27 THEN true
    ELSE false
END AS '¿Es mayor de edad?'
FROM users;


SELECT *,
CASE
	WHEN age > 27 THEN 'Es mayor de edad'
    WHEN age = 27 THEN 'Acaba de cumplir la edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;