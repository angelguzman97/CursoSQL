---Crear indices
CREATE INDEX idx_name ON users(name);

--Inidice único
CREATE UNIQUE INDEX idx_name ON users(name);
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

---Crear más de un solo indice
CREATE INDEX idx_name ON users(name, surname);

--Borrar el indice creado
DROP INDEX idx_name ON users;