# 방어회 메뉴 삭제 (menu_code 이용해서 삭제)
import mysql.connector

connection = mysql.connector.connect(
    host = 'localhost', 
    user = 'ohgiraffers',
    password = 'ohgiraffers',
    database = 'menudb'
)

cursor = connection.cursor()

# sql = 'delete from tbl_menu where menu_code = 113'
sql = 'delete from tbl_menu where menu_code = 113'


cursor.execute(sql)

connection.commit()

cursor.close()
connection.close()

