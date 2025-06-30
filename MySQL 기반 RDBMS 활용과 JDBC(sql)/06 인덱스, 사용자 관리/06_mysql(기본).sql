use sqldb;
-- 2p tbl1 생성후 자동 생성된 인덱스 목록 확인
create table if not exists tbl1 (
	a INT PRIMARY KEY,
    b INT,
    c INT
);
show index from tbl1;

-- 3p tbl2 생성 후 자동 생성된 인덱스 목록 확인 
create table if not exists tbl2 (
	a INT PRIMARY KEY,
    b INT UNIQUE,
    c INT UNIQUE,
    d INT
);
show index from tbl2;

-- 4p tbl3 생성 후 자동 생성된 인덱스 목록 확인 
create table if not exists tbl3 (
	a INT UNIQUE,
    b INT UNIQUE,
    c INT UNIQUE,
    d INT
);
show index from tbl3;

-- 5p tbl4 생성 후 자동 생성된 인덱스 목록 확인 
create table if not exists tbl4 (
	a INT UNIQUE NOT NULL,
    b INT UNIQUE,
    c INT UNIQUE,
    d INT
);
show index from tbl4;

-- 6p tbl5 생성 후 자동 생성된 인덱스 목록 확인 
create table if not exists tbl5 (
	a INT UNIQUE NOT NULL,
    b INT UNIQUE,
    c INT UNIQUE,
    d INT PRIMARY KEY
);
show index from tbl5;

-- 7p 
-- usertbl 만들기
create database if not exists testdb;
use testdb;

drop table if exists usertbl;
create table usertbl(
	userID 		CHAR(8) 	NOT NULL 	PRIMARY KEY,
	name 		VARCHAR(10) NOT NULL,
	birthYear 	INT 		NOT NULL,
	addr 		NCHAR(2) 	NOT NULL
);

-- 데이터를 추가하고, 클러스터형인덱스의 테이블 내용 확인하기
INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기');
INSERT INTO usertbl VALUES('S나', '성시경', 1979, '서울');
SELECT * FROM usertbl;

-- 
-- alter을 사용하여 usertbl에서 primary key 제약조건을 제거하고, name컬럼에 pk_name이라는 제약조건명으로 기본키를 설정하세요
ALTER TABLE usertbl DROP PRIMARY KEY;
ALTER TABLE usertbl
ADD CONSTRAINT pk_name PRIMARY KEY(name);

-- usertbl의 내용을 출력하여, 새로운 클러스터형 인덱스를 확인하세요
SELECT * FROM usertbl;







