<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*" import="jspexp.a03_database.*" import="DAO.member_DAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("userId");
	String pw = request.getParameter("userPw");

	member_DAO dao = new member_DAO();
	int check = dao.loginCheck(id, pw);
	String msg = "";

	if (check == 1) {
		session.setAttribute("sessionID", id);
		msg = "./main.jsp";
	} else {
		msg = "./loginform.jsp?msg=0";
	}
	response.sendRedirect(msg);
	%>
</body>
</html>