CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

CREATE OR replace VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 30;

SELECT*
FROM v_adult_users;

DROP VIEW v_adult_users;