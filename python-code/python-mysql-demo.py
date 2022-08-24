import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="oracle-demo"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM emp ORDER BY eid")

myresult = mycursor.fetchall()

for x in myresult:
    print(x)
