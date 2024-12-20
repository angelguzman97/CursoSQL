SELECT * FROM user WHERE NOT email = 'bety@gmail.com'; --Trae los usuarios que no tengan ese email
SELECT * FROM user WHERE email = 'bety@gmail.com' AND age = 25; --Trae los usuarios que tengan ese email y esa edad
SELECT * FROM user WHERE email = 'bety@gmail.com' OR age = 25; --Trae los usuarios que tienen ese email o que tengan esa edad
