select distinct category_code from tbl_menu order by category_code; 

-- 단일 컬럼 DISTINCT with NULL
-- NULL이 포함된 경우 NULL도 조회함
select distinct ref_category_code from tbl_category;

-- 다중 컬럼 distinct(결합된 값을 하나로 보고 중복 제거, 각각의 중복 제거가 아님)
select distinct category_code, orderable_status from tbl_menu order by category_code, orderable_status;