SELECT * FROM course_cart;

INSERT INTO course_cart values(course_cart_seq.nextval, 'himan', '정보처리기사 필기', '전준혁', 95, 99000, 33900, 66000);

CREATE SEQUENCE course_cart_SEQ;


DELETE FROM course_cart;

DROP TABLE course_cart;



CREATE TABLE course_cart ( --수강 장바구니 테이블
    NO NUMBER PRIMARY KEY,
    user_id varchar2(20),
    title varchar2(30),
    name varchar2(20),
    compose number(5,0),
    price NUMBER(10,0),
    disprice number(10,0),
    finprice number(10,0)
);

DROP SEQUENCE course_cart_seq;