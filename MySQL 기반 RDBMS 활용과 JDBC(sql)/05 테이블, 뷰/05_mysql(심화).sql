use tabledb;

drop table if exists userTBL, buyTBL;
create table userTBL (
	userID 		CHAR(8) NOT NULL PRIMARY KEY,
    name		VARCHAR(10) NOT NULL,
    birthYear 	INT NOT NULL
);

create table buyTBL(
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    userID CHAR(8) NOT NULL,
    prodName CHAR(6) NOT NULL
);

alter table buytbl
	add constraint FK_userTBL_buyTBL
    foreign key(userID)
    references userTBL(userID);

--
drop table if exists buyTBL, userTBL;
create table userTBL(
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL,
    email CHAR(30) NULL UNIQUE

);

-- 
drop table if exists userTBL;
create table userTBL(
	userID CHAR(8) PRIMARY KEY,
    name VARCHAR(10),
    birthYear INT CHECK (birthYear >= 1900 AND birthYear <= 2023),
    mobile CHAR(3) NULL,
    constraint CK_name CHECK (name is not null)
);
--

drop table if exists userTBL;
create table userTBL(
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL DEFAULT -1,
    addr CHAR(2) NOT NULL DEFAULT '서울',
    mobile1 CHAR(3) NULL,
    mobile2 CHAR(8) NULL,
    height SMALLINT NULL DEFAULT 170,
    mDate DATE NULL
);

insert into usertbl values('PSE', '박사은', default, default, '010', '72003411', 163, '2024-05-21');
select * from userTBL;

--

alter table usertbl 
	drop column mobile1;
    
alter table usertbl
	change column name uName VARCHAR(20) NULL;
    
alter table usertbl
	drop primary key;

--
use employees;
create view employees_info
as select e.*, t.title, t.from_date as t_from, t.to_date as t_to, s.salary, s.from_date as s_from, s.to_date as s_to
from employees e
inner join titles t on e.emp_no = t.emp_no
inner join salaries s on e.emp_no = s.emp_no;

select * from employees_info;

--
select * from employees_info
where s_to = '9999-01-01';

--
create or replace view emp_dept_info
as select e.emp_no, d.dept_no, d.dept_name, de.from_date, de.to_date
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no;
select * from emp_dept_info;

select * from emp_dept_info
where to_date = '9999-01-01';




    
