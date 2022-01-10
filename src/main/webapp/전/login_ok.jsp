<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="DAO.member_DAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPro</title>
</head>
<body>
	<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("userId");
	String pw = request.getParameter("userPw");

	member_DAO dao = new member_DAO();
	int check = dao.loginCheck(id, pw);
	String msg = "";
	
	if (check == 1) // 로그인 성공
	{
		/* 		session.setAttribute("sessionID", id); */
		msg = "./loginform.jsp?msg=1";
	} else { // 로그인 실패
		System.out.println("실패");
		out.println("<script>");
		out.println("alert('로그인 실패')");
		out.println("</script>");
		msg = "./loginform.jsp?msg=0";
	}
	response.sendRedirect(msg);
	%>
</body>
</html>