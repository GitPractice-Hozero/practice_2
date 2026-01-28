# ### Q1. 상위 카테고리 코드가 null이 아닌 카테고리의 카테고리 코드와 카테고리명을 출력하세요. 
# 단, 카테고리명을 기준으로 내림차순 정렬하여 출력하세요.

select category_code, category_name from tbl_category 
where ref_category_code is not null order by category_name desc; 

### Q2.
#메뉴명에 '밥'이 포함되고, 가격이 20,000원 이상 30,000원 이하인 메뉴의 메뉴명과 가격을 출력하세요.

select menu_name, menu_price from tbl_menu
where menu_name like '%밥%' and menu_price between 20000 and 30000;

#가격이 10,000원 미만이거나, 메뉴명에 김치가 포함되는 메뉴의 모든 컬럼을 출력하세요.
#단, 가격을 기준으로 오름차순 정렬하고, 추가로 메뉴명을 기준으로 내림차순 정렬하여 출력하세요.

select * from tbl_menu order by menu_price, menu_name desc;

select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu
where category_code not in (8,9,10)
and menu_price = 13000
and orderable_status <> 'N';

