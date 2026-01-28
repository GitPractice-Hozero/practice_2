# ORDER BY

-- 오름차순 정렬 (명시하지 않아도 기본 정렬 방식)
select menu_code, menu_name, menu_price from tbl_menu order by menu_name asc;

-- 내림차순 정렬 (desc는 명시해야 내림차순 정렬)
select menu_code, menu_name, menu_price from tbl_menu order by menu_name desc;

-- 다중 조건 정렬
select menu_code, menu_name, menu_price from tbl_menu order by menu_price desc,
menu_name;

-- 컬럼의 연산 결과로 정렬
select menu_code, menu_name, menu_price * menu_code from tbl_menu
order by menu_price * menu_code;

select menu_code, menu_name, menu_price * menu_code as '연산결과' from tbl_menu
order by '연산결과';

-- 오름차순 정렬 시 기본적으로 NULL이 맨처음으로 옴 
-- is null을 붙이면 null을 맨끝으로 보냄 뒤에 오름차순 가능 
select category_code, category_name, ref_category_code from tbl_category
order by ref_category_code is null;


-- is null에서 내림차순 해주려면, 한번 더 desc를 붙여야 함 
select category_code, category_name, ref_category_code from tbl_category
order by ref_category_code is null desc, ref_category_code desc;	