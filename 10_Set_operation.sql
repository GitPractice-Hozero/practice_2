# set operation (결과셋 집합 연산)

# UNION (합집합)
select menu_code, menu_name, menu_price, category_code
from tbl_menu
where category_code = 10
union
select menu_code, menu_name, menu_price, category_code
from tbl_menu
where category_code < 9000;

# UNION ALL (합집합 + 교집합)
select menu_code, menu_name, menu_price, category_code
from tbl_menu
where category_code = 10
union all
select menu_code, menu_name, menu_price, category_code
from tbl_menu
where category_code < 9000;

# INTERSECT (교집합)
# MINUS (차집합)