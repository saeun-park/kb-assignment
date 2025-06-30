use sqldb;
select * from buytbl;

-- 2p 다음 결과가 나오도록 buytbl에 대한 SQL문을 각각 작성하세요.
select userID as '사용자 아이디', sum(amount) as '총 구매 개수' from buytbl group by userID;
select userID as '사용자 아이디', sum(price*amount) as '총 구매액' from buytbl group by userID;

-- 3p 다음 결과가 나오도록 buytbl에 대한 SQL문을 각각 작성하세요.
select avg(amount) as '평균 구매 개수' from buytbl;
select userID, avg(amount) as '평균 구매 개수' from buytbl group by userID;

-- 4p 가장 키가 큰 사람과 가장 키가 작은 사람을 출력함
select * from usertbl;
select name, height from usertbl
where height = (select max(height) from usertbl) 
	or height = (select min(height) from usertbl);

-- 5p 다음 결과가 나오도록 usertbl에 대한 SQL문을 작성하세요.
select count(*) as '휴대폰이 있는 사용자' from usertbl where mobile1 is not null;


-- 6p 
-- 사용자별 총 구매액을 출력하세요.
select * from buytbl;
select userID as '사용자', sum(price*amount) as '총구매액' from buytbl group by userID;

-- 총 구매액이 1,000 이상인 사용자만 출력하세요.
select userID as '사용자', sum(price*amount) as '총구매액' from buytbl 
group by userID having sum(price*amount)>=1000;

-- 7p
use world;
select * from city;

-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 총합을 구하시오.
select sum(Population) from city where CountryCode='KOR';
select sum(Population) as '인구수 총합' from city group by CountryCode having CountryCode='KOR';

-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 중 최소값을 구하시오. 단 결과를 나타내는 테이블의 필드는"최소값"으로 표시하시오.
select min(Population) as '최소값' from city where CountryCode='KOR';

-- city 테이블에서 국가코드가 'KOR'인 도시들의 평균을 구하시오.
select avg(Population) as 'KOR 평균' from city where CountryCode='KOR';

-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 중 최대값을 구하시오. 단 결과를 나타내는 테이블의 필드는"최대값"으로 표시하시오.
select max(Population) as '최대값' from city where CountryCode='KOR';

-- country 테이블 각 레코드의 Name 칼럼의 글자수를 표시하시오.
select length(Name) as 'Name 칼럼 글자수' from country;

-- country 테이블의 나라명(Name 칼럼)을 앞 세글자만 대문자로 표시하시오.
select upper(mid(Name, 1, 3)) from country;

-- country 테이블의 기대수명(LifeExpectancy)을 소수점 첫째자리에서 반올림해서 표시하시오.
select * from country;
select round(LifeExpectancy,1) as '기대수명' from country;

-- 9p
use employees;

-- 10p
-- employees db에서 각 부서별 관리자를 출력하세요. 단, 현 재직자만 출력한다.
select * from dept_manager where to_date='9999-01-01';

-- 부서번호 d005 부서의 현재 관리자 정보를 출력하세요
-- select emp_no from dept_manager where dept_no='d005' and to_date='9999-01-01';
select * from employees 
where emp_no = (select emp_no from dept_manager where dept_no='d005' and to_date='9999-01-01');

-- 11p employee 테이블에서 페이지네이션으로 페이지를 추출하려고 한다. 다음 조건하에서 8번 페이지의 데이터를 출력하세요.
-- -- 입사일을 내림차순으로 정렬한다
-- -- 한 페이지당 20명의 정보를 출력한다.
select * from employees order by hire_date desc limit 140, 20;

-- 12p
-- employees db에서 재직자의 총 수를 구하시오. 재직자의 to_date값은 '9999-01-01'로 저장되어 있음
select count(*) from dept_emp where to_date='9999-01-01';

-- employees db에서 재직자의 평균 급여를 출력하시오.
select avg(salary) from salaries where to_date ='9999-01-01';
 
 -- 13p 재직자 전체 평균 급여보다 더 많이 받는 재직자를 출력하세요.
select * from salaries 
where to_date ='9999-01-01' 
and salary > (select avg(salary) from salaries where to_date='9999-01-01');
 
 -- 14p employees db에서 각 부서별 재직자의 수를 구하시오. 부서 번호로 구분하고, 부서 번호로 오름차순 정렬하여 출력한다.
select dept_no, count(*) from dept_emp where to_date='9999-01-01' group by dept_no order by dept_no asc;
 
 
 
 