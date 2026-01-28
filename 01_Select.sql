use menudb;

-- 단일 컬럼 조회
select menu_name from tbl_menu;

-- 다중 컬럼 조회
select menu_code, menu_name, menu_price, orderable_status, category_code from tbl_menu;

-- 전체 컬럼 조회 (사용하는 것을 지양)
select * from tbl_menu;

-- 연산자 사용
select 7+4 from dual 
