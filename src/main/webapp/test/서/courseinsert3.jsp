<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="DAO.course_DAO"
	import="java.sql.*"
	import="VO.course_VO"
	import="VO.member_VO"
	import="java.util.*"
%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>수강신청 데이터 추가</title>
			
			<style>
	
			</style>
		</head>
		
	<body>
	<%
	course_DAO dao = new course_DAO();
		
	String user_id = null;
		
	user_id = request.getParameter("id");
	
	dao.course_cart(user_id, "2022 정보처리산업기사 필기", "이지수", 37, 37000, 0, 37000);	
	
	response.sendRedirect("course2.jsp"); // 해당 페이지로 이동

	%>
	</body>
</html>