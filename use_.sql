USE market_db; -- 사용할 db 선택 
SELECT * FROM member;
SELECT * FROM member WHERE mem_name = '블랙핑크'; -- 일반적으로 WHERE가 많이 들어감 

-- 이렇게 해도 상관 없음 
SELECT *
FROM member 
WHERE mem_name = '블랙핑크';

-- db 이름 지정 가능, 근데 이런 형식은 잘 안씀
USE sys;
SELECT *
FROM market_db.member 
WHERE mem_name = '블랙핑크';

-- 지정한 열들만 검색 
SELECT addr, height, debut_date, mem_name -- 여기서 쓴 순서대로 출력됨 
FROM member ;

SELECT addr 주소, height 키, debut_date "데뷔 날짜", mem_name 이름 -- 알리아스, 별칭 지정 / 띄어쓰기가 있을 경우 큰 따옴표로 지정
FROM member ;

SELECT * FROM member WHERE mem_number = 4; -- 회원수가 4명인 그룹 전체 정보 조회

SELECT mem_id, mem_name
	FROM member
    WHERE height <= 162; -- 평균 키가 162 이하인 멤버의 아이디와 이름 조회

SELECT mem_name, height, mem_number  
	FROM member
    WHERE height >= 165 AND mem_number > 6; -- 키가 160 이상이고 인원수가 7명 이상인 그룹의 이름, 키, 회원수 조회
    
SELECT mem_name, height, mem_number
	FROM member
    WHERE height <= 162 OR mem_number > 6;  -- 둘중에 하나 만족하는 그룹의 이름, 키, 인원 수 출력
    
SELECT mem_name, height
	FROM member
    WHERE height BETWEEN 162 AND 165; -- 키가 162~165 사이의 그룹 이름, 키 출력 / BETWEEN은 보통 숫자를 비교할 때 사용
    
SELECT mem_name, addr
	FROM member
    WHERE addr = '경기' OR addr = '전남' OR addr = '경남'; -- 경남, 전남, 경남에 살고있는 그룹의 이름, 주소 출력
-- 바로 위에 있는 거와 밑에 있는건 서로 같음 
SELECT mem_name, addr
	FROM member
    WHERE addr IN('경기', '전남', '경남'); -- 여기 들어 있는 것 중에 같은걸 출력 / IN은 보통 문자를 비교할 때 사용
    
SELECT *
	FROM member
    WHERE mem_name LIKE '우%'; -- 이름 앞에 우가 들어있는 그룹의 정보 전체 출력
    
SELECT *
	FROM member
    WHERE mem_name LIKE '__핑크'; -- 글자 두 개 들어가고 뒤가 핑크인 그룹 출력 / _ 하나에 한 글자
SELECT *
	FROM member
    WHERE mem_name LIKE '우___'; -- 근데 저장되 있는 데이터와 크기를 딱 맞춰야 작동함