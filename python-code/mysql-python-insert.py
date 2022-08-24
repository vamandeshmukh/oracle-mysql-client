import mysql.connector

print("Start")

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="oracle-demo"
)

mycursor = mydb.cursor()

sqlSelect = "SELECT * FROM emp ORDER BY eid"

print(mycursor.rowcount, "record inserted successfully.")

mycursor.execute(sqlSelect)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)

sqlInsert = "INSERT INTO emp (eid, ename, salary) VALUES (%s, %s, %s)"
valuesToInsert = (115, "Tonu", 89000)

mycursor.execute(sqlInsert, valuesToInsert)

mydb.commit()

print(mycursor.rowcount, "record inserted successfully.")

mycursor.execute(sqlSelect)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)

print("End")
