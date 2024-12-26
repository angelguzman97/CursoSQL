---Añadir nuevo campo
ALTER TABLE persons8
ADD surname VARCHAR(150);

----Renombrar campo
ALTER TABLE persons8
RENAME COLUMN surname TO descripcion

---Modiciar la restricción
ALTER TABLE persons8
MODIFY COLUMN descripcion VARCHAR(250);

---ELIMINAR COLUMNA
ALTER TABLE persons8
DROP COLUMN descripcion;

