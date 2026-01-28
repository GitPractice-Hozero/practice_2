# where

-- 1) 비교 연산자
-- 같음 : =
select menu_code, menu_name, menu_price from tbl_menu where menu_code = 7;

-- 같지 않음: !=, <>
select menu_code, menu_name, menu_price from tbl_menu where menu_code <> 7;

-- 대소비교 <, >, <=, >=
select menu_code, menu_name, menu_price from tbl_menu where menu_price <= 10000;
# where 5000 < menu_price <= 10000 오류는 나지 않지만, 조건이 제대로 설정되지 않음
-- 2) and
select menu_code, menu_name, menu_price from tbl_menu
where 5000 < menu_price and
menu_price <= 10000;

-- 3) or
select menu_code, menu_name, menu_price from tbl_menu
where menu_price <= 10000 or
menu_name = '민트미역국';

-- 4) (not)between
select menu_code, menu_name, menu_price from tbl_menu
where menu_price between 5000 and 10000;

-- 5) (not) like

select menu_code, menu_name, menu_price from tbl_menu
where menu_name like '%김치%';

-- 6) (not) in
select menu_code, menu_name, menu_price from tbl_menu
where category_code in (4,5,6);

-- 7) is (not) null (!= or = 불가능)
select category_code, category_name, ref_category_code from tbl_category
where ref_category_code is null;
