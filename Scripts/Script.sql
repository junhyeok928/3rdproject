CREATE table users( --회원 테이블
    user_no NUMBER,
    user_id varchar2(20),
    user_password varchar2(20),
    user_name varchar2(20),
    user_phone varchar2(20),
    user_email varchar2(40)
);
INSERT INTO users values(1,'himan','7777','전준혁','01022009365','junhyeok928@naver.com');


SELECT * FROM users;

DROP TABLE users;

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

CREATE SEQUENCE course_cart_seq;