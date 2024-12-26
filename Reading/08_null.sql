SELECT * FROM user WHERE init_date IS NULL; --Trae los usuario que tienen null
SELECT * FROM user WHERE init_date IS NOT NULL; --Trae los usuarios que no tienen null
SELECT * FROM user WHERE init_date IS NOT NULL AND age = 25; --Trae lo mismo de arriba, pero solo con la edad de 25