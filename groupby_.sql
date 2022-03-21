-- 보통 예약어는 대문자, 다른건 소문자로 작성 
USE market_db;

SELECT * 
	FROM member
    ORDER BY debut_date; -- 기본 오름차순 ASC 
    
SELECT *
	FROM member
    ORDER BY debut_date DESC; -- 내림 차순 

SELECT *
	FROM member
    ORDER BY height
    WHERE height >= 164; -- WHERE 가 ORDER BY보다 뒤에 있으므로 오류 뜸 
    
SELECT *
	FROM member
	WHERE height >= 164
    ORDER BY height DESC, debut_date ASC; -- 앞에 쓴게 우선순위이고 뒤에 꺼는 둘이 동률일 때 누구를 먼저 할건지 
    
SELECT *
	FROM member
    LIMIT 3; -- 3개의 튜플만 보여줌
    
SELECT mem_name, debut_date
	FROM member
    ORDER BY debut_date
    LIMIT 3; -- 대뷔 날짜가 빠른 순으로 3개의 튜플만 보여줌
    
SELECT mem_name, height
	FROM member
    ORDER BY height DESC
    LIMIT 3, 2; -- 3번째 부터 2개 출력 
    
SELECT addr FROM member;

SELECT DISTINCT addr FROM member; -- 중복을 제거하고 하나씩만 보여줌 

SELECT mem_id "회원 아이디", SUM(amount) "총 구매 개수" 
	FROM buy 
    GROUP BY mem_id; --  id 별로 묶어서 합계를 내라
    
SELECT mem_id "회원 아이디", SUM(price * amount) "총 구매액" 
	FROM buy 
    GROUP BY mem_id; --  id 별로 묶어서 합계를 내라
    
SELECT mem_id "회원 아이디", SUM(price * amount) "총 구매액" 
	FROM buy 
    GROUP BY mem_id; --  id 별로 묶어서 합계를 내라
    
SELECT AVG(amount) "평균 구매 개수" FROM buy; -- 평균 

SELECT mem_id "회원 아이디", AVG(amount) "평균 구매 개수" 
	FROM buy
    GROUP BY mem_id;
    
SELECT COUNT(*) FROM member; -- 회원의 수, 행의 개수

SELECT COUNT(phone1) "연락처가 있는 회원" FROM member; -- 폰이 있는 회원

SELECT mem_id "회원 아이디", SUM(price * amount) "총 구매액" 
	FROM buy 
    GROUP BY mem_id
    HAVING SUM(price*amount) > 1000; -- 1000만 원 이상쓴 회원만 출력, 그룹 함수에서 조건을 쓸때는 having으로 사용
    
SELECT mem_id "회원 아이디", SUM(price * amount) "총 구매액" 
	FROM buy 
    GROUP BY mem_id
    HAVING SUM(price*amount) > 1000
    ORDER BY SUM(price*amount) DESC; -- 1000만 원 이상쓴 회원만 출력하고 내림차순으로 정렬 