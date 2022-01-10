<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="DAO.member_DAO"%>
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("userId");
String pw = request.getParameter("userPw");

member_DAO dao = new member_DAO();
int check = dao.loginCheck(id,pw);
String msg = "";

if(check ==1) // 로그인성공
{
	session.setAttribute("sessionID",id);
	msg = "../";
}else{
	
}
%>