<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="DAO.book_DAO"
	import="java.sql.*"
	import="VO.book_VO"
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
	book_DAO dao = new book_DAO();
		
	String user_id = null;
		
	user_id = request.getParameter("id");
	
	response.sendRedirect("book1.jsp"); // 해당 페이지로 이동
	
	dao.textbook_cart("2022 정보처리기사 필기", "37000원", "1개", user_id);	
	%>
	</body>
</html>