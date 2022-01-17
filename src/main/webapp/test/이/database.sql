CREATE TABLE course_cart (
	NO NUMBER PRIMARY KEY,
	user_id varchar2(20),
	title varchar2(30),
	name varchar2(20),
	compose number(5,0),
	price NUMBER(10,0),
	disprice number(10,0),
	finprice number(10,0)
);

CREATE SEQUENCE cartNo
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999
	CYCLE;

INSERT INTO course_cart values(cartNo.nextval, 'himan', '정보처리기사 필기', '전준혁', 95, 99000, 33900, 66000);
INSERT INTO course_cart values(cartNo.nextval, 'himan', '정보처리기사 실기', '유진선', 57, 120000, 21000, 99000);
INSERT INTO course_cart values(cartNo.nextval, 'himan2', '정보처리기사 실기', '유진선', 57, 120000, 21000, 99000);

SELECT * FROM course_cart;

CREATE TABLE users(
    user_no number PRIMARY KEY,
    user_id varchar2(20),
    user_pw varchar2(20),
    user_name varchar2(20),
    user_phone varchar2(20),
    user_email varchar2(40)
);
INSERT INTO users values(1,'himan','7777','전준혁','01022009365','junhyeok928@naver.com');
INSERT INTO users values(2,'himan2','7777','유진선','01022009365','junhyeok928@naver.com');
SELECT * FROM users;

CREATE TABLE user_course(
	user_id varchar(20),
	title varchar2(30),
	name varchar2(20),
	compose number(5,0),
	composeing number(5,0),
	start_date DATE,
	finish_date DATE,
	state varchar(10)
);

INSERT INTO user_course VALUES ('himan', '정보처리기사 필기', '전준혁', 95, 2, sysdate, sysdate+90, '수강중');
INSERT INTO user_course VALUES ('himan', '정보처리기사 실기', '유진선', 57, 4, sysdate, sysdate+120, '수강중');

DELETE FROM user_course;

SELECT * FROM user_course;
