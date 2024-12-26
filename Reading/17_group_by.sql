SELECT MAX(age) FROM users GROUP BY age; --Agrupar el máximo de edades
SELECT COUNT(age), age FROM users GROUP BY age; --Conteo de edades
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC; --Agrupar y ordenar la edad de forma asc
SELECT COUNT(age), age FROM users WHERE age > 25 GROUP BY age ORDER BY age ASC; 
