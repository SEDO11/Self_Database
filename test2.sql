SELECT * FROM member;
SELECT * FROM product;
SELECT * FROM member WHERE member_name = '아이유';
SELECT * FROM product WHERE product_name = '삼각김밥';

-- CREATE INDEX idx_member_name ON member(member_name);
SELECT * FROM member WHERE member_name = '아이유'; -- 인덱스, 속도 증가

SELECT * FROM member_view; -- 뷰, 보안 증가 

DELIMITER //
CREATE PROCEDURE myDe() -- 프로시저 이름 지정 
BEGIN
SELECT * FROM member WHERE member_name = '아이유';
SELECT * FROM member WHERE member_name = '나훈아';
SELECT * FROM product WHERE product_name = '삼각김밥';
END //
DELIMITER ;

CALL myDe(); -- 프로시저 호출 