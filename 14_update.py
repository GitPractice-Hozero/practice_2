# 7번 메뉴 변경 / 메뉴명을 '럭키쎄븐푸드', 가격을 77777원
import mysql.connector

connection = mysql.connector.connect(
    host = 'localhost', 
    user = 'ohgiraffers',
    password = 'ohgiraffers',
    database = 'menudb'
)

cursor = connection.cursor()

# sql = 'update tbl_menu set menu_name = "럭키쎄븐푸드", menu_price = 77777 where menu_code = 7'

sql = 'update tbl_menu set menu_name = %s, menu_price = %s where menu_code = %s'

values = ("럭키쎄븐푸드",77777,8)

cursor.execute(sql,values)

connection.commit()

cursor.close()
connection.close()