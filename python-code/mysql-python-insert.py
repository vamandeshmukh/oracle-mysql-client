import mysql.connector

print("Start")

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="oracle-demo"
)


mycursor = mydb.cursor()

sql = "INSERT INTO emp (eid, ename, salary) VALUES (%s, %s, %s)"
val = (112, "Soni", 98000)
mycursor.execute(sql, val)

mydb.commit()

print(mycursor.rowcount, "record inserted successfully.")

print("End")
