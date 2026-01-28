# JOIN

use menudb;

# ALIAS (별칭)
-- 컬럼 별칭
select menu_code as 'code', menu_name as name, menu_price as '메뉴의 가격'
from tbl_menu;


-- 테이블 별칭 (from에 별칭을 붙이면, 별칭.컬럼으로 소속을 밝혀줘야 한다, 생략 가능)
select m.menu_code, m.menu_name, m.menu_price from tbl_menu as m;


# INNER JOIN
select m.menu_name, m.menu_price, c.category_name
from tbl_menu m
inner join tbl_category c 
on m.category_code = c.category_code;

-- USING (JOIN 대상인 두 테이블의 JOIN을 위한 컬럼명이 같을 경우 사용)
select m.menu_name, m.menu_price, c.category_name
from tbl_menu m
inner join tbl_category c 
using (category_code);

# OUTER JOIN
-- LEFT JOIN
select c.category_code, c.category_name, m.menu_name
from tbl_category c
left join tbl_menu m
on m.category_code = c.category_code;
-- RIGHT JOIN
select c.category_code, c.category_name, m.menu_name from tbl_category c
right join tbl_menu m on m.category_code = c.category_code;

# CROSS JOIN
select m.menu_name, c.category_name from tbl_menu m cross join tbl_category c;
# SELF JOIN
select c1.category_name, c1.category_code, c2.category_code, c2.category_name
from tbl_category c1 join tbl_category c2 on c1.ref_category_code = c2.category_code;