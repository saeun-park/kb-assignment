-- productTBL의 데이터 출력
select * from shopdb.productTBL;

-- membertbl의 데이터 출력 (단, memberName와 memberAddress만 출력)
select memberName, memberAddress from shopdb.membertbl;

-- membertbl의 데이터 중 이름이 '지운이'인 데이터만 출력
select * from shopdb.memberTBL where memberName='지운이';