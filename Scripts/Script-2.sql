SELECT * FROM course_cart;


ALTER TABLE course_cart modify(course_name varchar2(50));


DELETE FROM COURSE_CART cc 
where user_id='himan';