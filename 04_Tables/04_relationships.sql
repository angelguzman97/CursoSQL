---1:1
CREATE TABLE DNI(
 dni_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
 dni_number int NOT NULL,
 user_id int,
 UNIQUE(dni_id),
 FOREIGN KEY(user_id) REFERENCES usuario (user_id)
);

---Insertar
insert into dni(dni_number, user_id) values(11111,1);
insert into dni(dni_number, user_id) values(22222,2);
insert into dni(dni_number, user_id) values(33333,3);
insert into dni(dni_number) values(44444);


---1:N
CREATE TABLE  companies(
company_id int auto_increment primary key,
name varchar(100) not null
);

---Insertar
insert into companies(name) values('MoureDev');
insert into companies(name) values('Apple');
insert into companies(name) values('Google');

---Colocar la llave foranea
alter table users
add constraint fk_companies
foreign key(company_id) references companies(company_id);

update users set company_id = 1 where user_id = 1;
update users set company_id = 2 where user_id = 3;
update users set company_id = 3 where user_id = 4;
update users set company_id = 1 where user_id = 5;



---N:N
CREATE TABLE  languages(
language_id int auto_increment primary key,
name varchar(100) not null
);

--Insertar


#Tabla intermedia
CREATE TABLE  users_languages(
users_languages_id int auto_increment primary key,
user_id int,
language_id int,
foreign key(user_id) references users(user_id),
foreign key(language_id) references languages(language_id),
unique(user_id, language_id)
);

----Insertar
insert into users_languages(user_id, language_id) values(1,3);
insert into users_languages(user_id, language_id) values(1,4);
insert into users_languages(user_id, language_id) values(2,3);
insert into users_languages(user_id, language_id) values(2,4);
insert into users_languages(user_id, language_id) values(3,1);