# menu_code (auto_increment), 방어회, 30000, 4, 'Y'
import mysql.connector

connection = mysql.connector.connect(
    host = 'localhost', 
    user = 'ohgiraffers',
    password = 'ohgiraffers',
    database = 'menudb'
)

cursor = connection.cursor()

# %s는 자리만 차지한 것
sql = 'insert into tbl_menu (menu_name, menu_price, category_code, orderable_status) Values (%s,%s,%s,%s)'

values = ("방어회", 30000, 4, "Y")

cursor.execute(sql,values)

connection.commit()

print(f"@@@ {cursor.rowcount}개의 행 삽입 완료 @@@")

cursor.close()
connection.close()
