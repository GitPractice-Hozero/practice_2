# DML
-- 데이터의 CRUD
-- C(Create) = INSERT
-- R(Read) - SELECT
-- U(Update) = UPDATE
-- D(Delete) = DELETE

select menu_code, menu_name, menu_price, category_code, orderable_status
from tbl_menu; 

#INSERT
-- INSERT INTO 테이블명 VALUES (컬럼순으로, 들어갈, 데이터, 나열, ...)
insert into tbl_menu Values (null, '햄버거', 10000, 4, 'Y');

-- INSERT INTO 테이블명 (컬럼명1, 컬럼명2, 컬럼명3...) VALUES (데이터1, 데이터2, 데이터3, ...)
insert into tbl_menu (menu_code, menu_name, menu_price, category_code, orderable_status)
Values (null, '맛있는 햄버거', 10000, 4, 'Y'); # 데이터가 추가되었을 때, 명확하게 하려고 사용 (권장)

insert into tbl_menu ( menu_name, category_code, orderable_status, menu_price)
Values ('정말 맛있는 햄버거', 4, 'Y', 10000);

-- MULTI INSERT
INSERT INTO tbl_menu
values
(null, '감자튀김', 2000, 5, 'Y'),
(null, '치즈스틱', 1500, 5, 'N'),
(null, '코울슬로', 3000, 6, 'Y');

-- AUTO INCREMENT 옵션이 있어도 임의의 PK값 지정 가능
-- (단, AUTO_INCREMENT 번호 자체에 영향을 줌)
insert into tbl_menu Values (100, '햄버거', 10000, 4, 'Y');

#UPDATE
-- UPDATE 테이블명
-- SET 컬럼명1 = 수정할 데이터1
-- 	   컬럼명2 = 수정할 데이터2
--     ...
-- [WHERE 수정 대상 데이터 조건] 

UPDATE tbl_menu
	set menu_name = '100번이었던 음식',
		menu_price = 1000000
	where menu_code = 100;

#DELETE
-- DELETE FROM 테이블먕 [where 삭제 대상 데이터의 조건];

delete from tbl_menu
where menu_code = 101;	

delete from tbl_menu
order by menu_code desc
limit 3;	

# REPLACE
-- 중복값에 대해서는 데이터를 덮어쓰고, 중복값이 없다면 INSERT 수행
-- (INTO 키워드는 생략 가능)
INSERT INTO tbl_menu VALUES (100, '한방능이100숙', 1000000, 4, 'Y');
replace INTO tbl_menu VALUES (100, '한방능이100숙', 100, 4, 'Y');
replace INTO tbl_menu VALUES (110, '한방능이100숙', 100, 4, 'Y');