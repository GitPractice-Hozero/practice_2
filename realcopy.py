import requests
from bs4 import BeautifulSoup
import mysql.connector

url = "https://main.kotsa.or.kr/portal/bbs/faq_list.do?pageNumb=1&menuCode=04010000&cateCode=C01&sechCdtn=0&sechKywd="
response = requests.get(url)
bs = BeautifulSoup(response.text, 'html.parser')

q = bs.select_one('div[data-bbslist="faq"] a')
text = q.text.replace('질문', '').strip()
print(text)


# a = bs.select_one('tbody p')
# print(a.text)
   