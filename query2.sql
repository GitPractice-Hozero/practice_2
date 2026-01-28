create database bookdb;

grant all privileges on bookdb.* to ohgiraffers@'%';

use bookdb;

drop table if exists naver_book;

create table if not exists naver_book
(
	book_code int auto_increment primary key,
	book_title varchar(300),
    book_image varchar(300),
    author varchar(100),
    publisher varchar(100),
    isbn varchar(100),
    book_description varchar(3000),
    pub_date datetime
) engine=innodb;

select * from naver_book;