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
		
	user_id = request.getParameter("id2");
	
	dao.course_cart2(user_id, "2022 정보처리기사 실기", "전준혁", 30, 99000, 0, 99000);	

	response.sendRedirect("course1.jsp"); // 해당 페이지로 이동
	
	%>
	</body>
</html>