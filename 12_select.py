import mysql.connector

connection = mysql.connector.connect( # connection으로 공간을 열어줌 
    host = 'localhost', # MySQL 서버 주소 (ip)
    user = 'ohgiraffers', # 사용자 이름
    password = 'ohgiraffers', # 비밀번호
    database = 'menudb' # 사용할 DB 스키마
)

cursor = connection.cursor() # mysql로 이python 11_python-mysql.py동

sql = 'select * from tbl_menu' # db 값 대입

cursor.execute(sql) # mysql 실행

result_rows = cursor.fetchall() #결과값 가져오기

# print(result_rows) # list 값으로 컬럽 값을 준다
for row in result_rows: # list 값으로 준 것을 하나씩 반환
    print(row)

cursor.close() # 커서를 닫아줘야 함
connection.close()