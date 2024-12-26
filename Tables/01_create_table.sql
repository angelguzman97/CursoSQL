CREATE TABLE persons (
id INT,
name VARCHAR(100),
age INT,
email VARCHAR(50),
created DATE
);


---RESTRICCIÓN
CREATE TABLE persons2 (
id INT NOT NULL,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATE
);


---Unico campo
CREATE TABLE persons3 (
id INT NOT NULL,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATETIME,
UNIQUE(id)
);

---Unico campo, pero con llave primaria
CREATE TABLE persons4 (
id INT NOT NULL,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATETIME,
UNIQUE(id),
PRIMARY KEY(id)
);

---CHECK --- Poner un criterio
CREATE TABLE persons5 (
id INT NOT NULL,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATETIME,
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);


---Restricción DEFAULT
CREATE TABLE persons6 (
id INT NOT NULL,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATETIME DEFAULT CURRENT_TIMESTAMP(), ---Agrega la fecha del sistema
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);

------------Incremento
CREATE TABLE persons7 (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT,
email VARCHAR(50),
created DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);