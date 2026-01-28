-- 단일컬럼 Group By + count 집계 함수 (개수) 
select category_code, count(*) from tbl_menu
group by category_code;
    
-- 단일컬럼 Group By + sum 집계 함수 (menu_price의 그룹별 합계) 
select category_code, sum(menu_price) from tbl_menu
group by category_code;

-- 단일컬럼 Group By + avg 집계 함수 (menu_price의 그룹별 합계) 
select category_code, avg(menu_price) from tbl_menu
group by category_code;

select category_code, menu_price, count(*) from tbl_menu
group by category_code, menu_price; # 묶어서 개수를 세준다.


# Having (group by로 묶인 조건)
select category_code, count(*) from tbl_menu
group by category_code
Having category_code between 5 and 8;

# ROLLUP 

-- 단일컬럼 group by + sum -> rollup => 총계(합계)
select category_code, sum(menu_price) from tbl_menu
group by category_code
with rollup; # 마지막에 합계를 작성해줌

-- 다중컬럼 gruop by + count -> rollup
-- 그룹별 count -> 먼저 나온 category_code 기준의 중계 -> 총계(합계)
select category_code, count(*) from tbl_menu
group by category_code, menu_price
with rollup;