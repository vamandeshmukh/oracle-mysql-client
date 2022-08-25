# python mysql-python-transaction.py

import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="oracle-demo"
)


try:
    cursor = conn.cursor()
    cursor.execute("update emp set salary = salary * 2 where eid = 104")
    cursor.execute("update emp set salary = salary * 2 where eid = 103")
    cursor.close()
    conn.commit()
    print("Transaction succeeded.")
except mysql.connector.Error as e:
    print("Transaction failed, rolling back. Error was:")
    print(e)
    try:
        conn.rollback()
    except mysql.connector.Error as er:
        print("Unable to roll back. Error was:")
        print(er)
