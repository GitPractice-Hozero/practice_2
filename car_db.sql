create database cardb;

show databases;

grant all privileges on cardb.* to ohgiraffers@'%';

show grants for ohgiraffers@'%';

use cardb;

CREATE TABLE IF NOT EXISTS tbl_registed_car
(
    registed_region    VARCHAR(15) NOT NULL COMMENT '자치구',
    registed_month    VARCHAR(30) NOT NULL COMMENT '등록 월',
    registed_car_num    INT COMMENT '등록 차량 수',
    primary key (registed_region)
) ENGINE=INNODB COMMENT '구별 차량 현황';

select * from tbl_registed_car