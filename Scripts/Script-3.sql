SELECT * FROM course_cart;


DROP TABLE course_cart;


delete FROM COURSE_CART cc 
WHERE NO='1';

CREATE TABLE course_cart ( --수강 장바구니 테이블
	NO NUMBER PRIMARY KEY,
	user_id varchar2(20),
    title varchar2(50),
    name varchar2(20),
    compose number(5,0),
    price NUMBER(10,0),
    disprice number(10,0),
    finprice number(10,0)
);


DELETE FROM COURSE_CART cc 
WHERE NO='2';