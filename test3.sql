USE market_db;

SELECT * FROM member;
SELECT * FROM buy;

SELECT * FROM buy WHERE  mem_id='BLK';
SELECT mem_id 아이디, prod_name 이름
	FROM buy 
    WHERE mem_id='BLK';
    
SELECT * 
	FROM member
	WHERE height BETWEEN 165 AND 170;
    
SELECT prod_name 이름, group_name 분류, price 가격
	FROM buy
	WHERE group_name IN('디지털', '패션');
    
SELECT prod_name 이름, group_name 분류, price 가격
	FROM buy
	WHERE prod_name LIKE '혼%';
