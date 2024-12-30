import mysql.connector

def print_user(user):

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_sql",
    "user": "root",
    "password": "admin"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()
//para evitar sql injection se le pasa el parametro de manera explicita que es un string
query = "SELECT * FROM users WHERE name =%s" 
//se le coloca una dupla para que reciba solo el parametro indicado, no más
cursor.execute(query, (user))
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()

#print_user("brais")
#Query malicioso
#print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")