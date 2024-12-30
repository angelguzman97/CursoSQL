SELECT * FROM user WHERE age = 25; --Solo trae los datos que cumblen esa condición

 SELECT name FROM user WHERE age = 25; --Trae los nombres que tienen 25

SELECT DISTINCT name FROM user WHERE age = 25; --Trae los nombres distintos que tienen 24

SELECT DISTINCT age FROM user WHERE age = 25; --Trae las edades distintas que son de 25, solo trae una porque no repite
