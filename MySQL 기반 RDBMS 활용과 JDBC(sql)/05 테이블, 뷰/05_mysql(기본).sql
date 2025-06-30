-- 2p
drop database if exists tabledb;
create database tabledb;

use tabledb;
create table usertbl (
	userID 		CHAR(8) NOT NULL PRIMARY KEY,
    name 		VARCHAR(10) NOT NULL,
    birthyear 	INT NOT NULL,
    addr 		CHAR(2) NOT NULL,
    mobile1 	CHAR(3) NULL,
    mobile2 	CHAR(8) NULL,
    height 		SMALLINT NULL,
    mDate 		DATE NULL
);
    
-- 3p
drop table if exists buytbl;
create table buytbl (
	num 		INT auto_increment NOT NULL PRIMARY KEY,
    userID 		CHAR(8) NOT NULL,
    prodName 	CHAR(6) NOT NULL,
    groupName 	CHAR(4) NULL,
    price 		INT NOT NULL,
    amount 		SMALLINT NOT NULL,
    FOREIGN KEY(userID) REFERENCES usertbl(userID)
);

-- 4p
insert into usertbl values('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
insert into usertbl values('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
insert into usertbl values('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');

insert into buytbl values(NULL, 'KBS', '운동화', NULL, 30, 2);
insert into buytbl values(NULL, 'KBS', '노트북', '전자', 1000, 1);
insert into buytbl values(NULL, 'JYP', '모니터', '전자', 200, 1); -- 에러가 남 : userID는 FK이기 때문에 usertbl에 JYP가 있어야 한다.

-- 5p
drop table if exists buytbl; -- usertbl을 삭제하려면 buytbl을 먼저 삭제해야 한다.
drop table if exists usertbl;

create table usertbl (
	userID 		CHAR(8) NOT NULL,
    name		VARCHAR(10) NOT NULL,
    birthYear	INT NOT NULL,
    CONSTRAINT PRIMARY KEY PK_userTBL_userID(userID)
);

show tables; -- 테이블 목록 보기
desc usertbl; -- 테이블의 구조 보기

-- 6p
drop table if exists prodTbl;
create table prodTbl (
	prodCode 	CHAR(3) 	NOT NULL,
    prodID		CHAR(4) 	NOT NULL,
    prodDate	DATETIME 	NOT NULL,
    prodCur		CHAR(10) 	NULL,
	CONSTRAINT PK_prodTbl_proCode_prodID PRIMARY KEY (prodCode, prodID)
);
-- 7p
use sqldb;
create view v_userbuytbl
as
select u.userID as userid, u.name, b.prodName, u.addr, concat(mobile1, mobile2) as '연락처'
from usertbl u inner join buytbl b 
on u.userID = b.userID;

select * from v_userbuytbl where name = '김범수';
