import mysql.connector
print("Enter your user id and passs to login ")
uid  = input()
pwd = input()
conn = mysql.connector.connect(host = "localhost", user="root",
password="", database="MITE")
c  = conn.cursor()
sql = "select * from regn where userid='"+uid+"' and password='" + pwd + "'"
c.execute(sql)
data = c.fetchall()
if c.rowcount  == 0:
    print("Login failed")
else:
    print("Welcom to MITE, login success")
