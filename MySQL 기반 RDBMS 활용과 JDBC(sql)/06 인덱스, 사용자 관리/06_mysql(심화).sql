use sqldb;

select * from usertbl;
show index from usertbl;
show table status like 'usertbl'; -- data_length:16384, index_length: 0

--
create index idx_usertbl_addr on usertbl(addr);
show index from usertbl;

show table status like 'usertbl';
analyze table usertbl;
show table status like 'usertbl';
-- 
create unique index idx_usertbl_birthYear on usertbl(birthYear); -- 중복값이 있어서 에러 발생
create unique index idx_usertbl_name on usertbl(name);
show index from usertbl;

-- 
drop index idx_usertbl_name on usertbl;
create unique index idx_usertbl_name_birthYear on usertbl(name, birthYear);
show index from usertbl;

drop index idx_usertbl_name_birthYear on usertbl;
drop index idx_usertbl_addr on usertbl;
show index from usertbl;

--

create database scoula_db;
DROP USER 'scoula'@'%';
CREATE USER 'scoula'@'%' IDENTIFIED BY 'Saeun1123!';
grant all privileges on scoula_db.* to 'scoula'@'%';
flush privileges;









