<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="VO.Board" %>
<%@ page import="DAO.BoardDao" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>IF</title>
<link rel="shortcut icon" href="./img/favicon.ico" />
<link rel="stylesheet" href="./css/font.css" />
<link rel="stylesheet" href="./css/template.css" />
<link rel="stylesheet" href="./css/board.css" />
<link rel="stylesheet" href="./css/write.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	function logout() {
		alert("로그아웃 되었습니다.");
	}
</script>
<style type="text/css">
.viewTable td{
	padding: 8px 0 8px 15px;
	font-size: 15px;
	border-bottom:1px solid #dddddd;
}
.viewTable{
	border-top: 2px solid black; 
	margin-top:60px;
}


</style>
</head>

<body>
	<%
	String userID = null;
	if (session.getAttribute("sessionID") != null) {
		userID = (String) session.getAttribute("sessionID");
	}
	int boardID = 0;
	if (request.getParameter("boardID") != null) {
		boardID = Integer.parseInt(request.getParameter("boardID"));
	}
	if (boardID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'board.jsp'");
		script.println("</script>");
	}
	Board board = new BoardDao().getBoard(boardID);
	%>
	<header>
		<div class="logo">
			<a href="#" style="text-decoration: none"><img
				class="logoimg" src="./img/logo.png" alt="" height="100px" /> </a>
		</div>
		<div class="headerbox">
			<ul class="menu">
				<%
				String msg = request.getParameter("msg");
		
				if (session.getAttribute("sessionID") != null) {
				%><li><a href="#"><%=session.getAttribute("sessionID")%>님</a></li>
				<li><a href="./logoutpro.jsp" onclick="logout()">로그아웃</a></li>
				<%
				} else {
				%>
				<li><a href="./loginform.jsp">로그인</a></li>
				<%
				}
				%>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">마이페이지</a></li>
			</ul>
		</div>
	</header>
	<nav>
		<div class="menubox">
			<ul class="menu">
				<li class="parent"><a href="#">수강신청</a>
					<ul class="submenu">
						<li class="parent"><a href="#">정보처리산업기사</a></li>
						<li class="parent"><a href="#">정보처리기사</a></li>
					</ul></li>

				<li class><a href="#">강사소개</a></li>
				<li class><a href="#">교재신청</a></li>
				<li class="parent"><a href="#">Daily문제</a>
					<ul class="submenu">
						<li class="parent"><a href="#">정보처리산업기사</a></li>
						<li class="parent"><a href="#">정보처리기사</a></li>
					</ul></li>
				<li class="parent"><a href="#">커뮤니티</a>
					<ul class="submenu">
						<li class><a href="#">후기게시판</a></li>
						<li class><a href="#">자유게시판</a></li>
						<li class><a href="#">질문게시판</a></li>
					</ul></li>
				<li class="parent"><a href="#">공지사항</a>
					<ul class="submenu">
						<li><a href="#">공지사항</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">시험일정</a></li>
						<li><a href="#">이벤트</a></li>
					</ul></li>
				<li><a href="#">나의강의실</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="leftmenu">
			<h2>커뮤니티</h2>
			<ul class="boardlist">
				<li><a href="#">자유게시판</a></li>
				<li class="action"><a href="#">후기게시판</a></li>
				<li><a href="#">질문게시판</a></li>
			</ul>
		</div>
		<div class="content">
			<div>
          		<h3>후기게시판</h3>
       		</div>
			<table class="viewTable" style="width: 790px; text-align: left; ">
				<col width="75%">
				<col width="*">
				<thead>
					<tr>
						<td colspan="2" style="padding: 8px 0 8px 15px; font-size: 16px; background-color: #fafafa;">
						[ <%=board.getTeacherInfo()%> ] <%=board.getBoardTitle() %></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><%=board.getUserID() %></td>
						<td><%=board.getBoardDate() %></td>
					</tr>
					<tr>
						<td colspan="2" >
							<div style="min-height: 250px;"><%=board.getBoardContent() %></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div style="margin-top:30px;">
 			<a href="/board.jsp" class="btn">목록</a>
			<%
				if(userID!=null && userID.equals(board.getUserID())){
			%>
					<a href="#?boardID=<%=boardID %>" class="btn2">수정</a>
					<a href="#?boardID=<%=boardID %>" class="btn2">삭제</a>
			<%
				}
			%>
			</div>
		</div>
	</div>
	<section></section>
	<footer>
		<div class="foot1" style="display: flex">
			<span> 대표 : 전준혁 </span> <span> 주소 : 충청남도 천안시 불당 26로 99 </span> <span>
				연락처 : 010-2200-9365 </span>
		</div>
		<div class="foot2" style="display: flex">
			<span> 고객센터 : 070-1234-5678 </span> <span> 계좌번호 :
				352-02-1234567 </span>
		</div>
		<div class="footli" style="display: flex">
			<ul>
				<li><a href="#">고객센터</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보취급방침</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>