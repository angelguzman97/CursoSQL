--Trae ambas tablas y todas sus relaciones
select*from users inner join dni;

--Relacionar especificamente ciertos datos o donde solo hayan coincidencias
--1:1
select*from users inner join dni on users.user_id = dni.user_id;
select*from users join dni on users.user_id = dni.user_id;

select name,dni_number from users 
join dni 
on users.user_id = dni.user_id
order by age asc;

---1:N
select * from users 
join companies 
on users.company_id = companies.company_id;

select companies.name, users.name from users 
join companies 
on users.company_id = companies.company_id;

select companies.name AS company, users.name AS user from users 
join companies 
on users.company_id = companies.company_id;

---N:M
select *
from users_languages
join users
on users_languages.user_id = users.user_id
join languages
on users_languages.language_id = languages.language_id;

select users.name, languages.name
from users_languages
join users
on users_languages.user_id = users.user_id
join languages
on users_languages.language_id = languages.language_id;

select users.name, languages.name
from users
join users_languages
on users_languages.user_id = users.user_id
join languages
on users_languages.language_id = languages.language_id;