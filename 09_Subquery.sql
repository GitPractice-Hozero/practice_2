# SUBQUERY (서브쿼리)

use menudb;

-- 메뉴명이 '열무김치라떼'인 메뉴의 카테고리와 동일한 카테고리의 메뉴 정보 조회
-- 서브쿼리
select category_code from tbl_menu
where menu_name = '열무김치라떼';

-- 메인쿼리
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu
where category_code = 8;

-- where절에 서브쿼리를 사용해서 해결
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu
where category_code = (select category_code from tbl_menu
where menu_name = '열무김치라떼');

-- 가장 많은 메뉴가 포함된 카테고리의 메뉴 개수 조회
-- 메인쿼리 (파생테이블=from 내,은 별칭이 들어가야 한다)
select max(count) 
from (select count(*) as 'count' 
from tbl_menu group by category_code) as count_table;

#상관 서브쿼리
-- 메인쿼리가 서브쿼리의 결과에 영향을 주는 경우카테고리에 영향을 주는 경우이다
select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu m1
where menu_price > (
select avg(menu_price)
from tbl_menu
where category_code = m1.category_code # 카테고리별로 비교 가능
group by category_code); #집계함수는 group by

# EXISTS
-- 조회 결과가 존재하면 True, 존재하지 않으면 False
select category_code, category_name
from tbl_category c
where exists (select 1
from tbl_menu m
where c.category_code = m.category_code);