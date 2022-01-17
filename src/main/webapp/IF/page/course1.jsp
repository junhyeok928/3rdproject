<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>수강신청</title>
<!-- 수강신청 - 정보처리기사 -->
<link rel="shortcut icon" href="../img/favicon.ico" />
<link rel="stylesheet" href="../css/font.css" />
<link rel="stylesheet" href="../css/template.css" />
<link rel="stylesheet" href="../css/course.css?ver=1.1" />

<style>
table{
	border-style: ;
}
td{
	border-style: inset;
}
</style>
</head>
<body>
	<header>
		<div class="logo">
			<a href="../index.jsp" style="text-decoration: none"><img
				class="logoimg" src="../img/logo.png" alt="" height="100px" /> </a>
		</div>
		<div class="headerbox">
			<ul class="menu">
				<%
				String msg = request.getParameter("msg");

				if (session.getAttribute("sessionID") != null) {
				%><li><a href="#"><%=session.getAttribute("sessionID")%>님</a></li>
				<li><a href="../process/logoutpro.jsp" onclick="logout()">로그아웃</a></li>
				<%
				} else {
				%>
				<li><a href="../page/loginform.jsp">로그인</a></li>
				<%
				}
				%>
				<li><a href="../page/joinform.jsp">회원가입</a></li>
				<% 
				if(session.getAttribute("sessionID") != null){

				%>
				<li><a href="../page/MyPage.jsp">마이페이지</a></li>
				<%} %>
			</ul>
		</div>
	</header>
	<nav>
		<div class="menubox">
			<ul class="menu">
				<li class="parent"><a href="../page/course1.jsp">수강신청</a>
					<ul class="submenu">
						<li class="parent"><a href="../page/course2.jsp">정보처리산업기사</a></li>
						<li class="parent"><a href="../page/course1.jsp">정보처리기사</a></li>
					</ul></li>

				<li class><a href="#">강사소개</a></li>
				<li class><a href="../page/book1.jsp">교재신청</a></li>
				<li class="parent"><a href="../page/daily.jsp">Daily문제</a>
					<ul class="submenu">
						<li class="parent"><a href="../page/daily3.jsp">정보처리산업기사</a></li>
						<li class="parent"><a href="../page/daily1.jsp">정보처리기사</a></li>
					</ul></li>
				<li class="parent"><a href="#">커뮤니티</a>
					<ul class="submenu">
						<li class><a href="../page/board.jsp">후기게시판</a></li>
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

	<div class="left">
		<font size="10" style="padding: 0px 30px 0px 0px;"> <br>
			&nbsp;수강신청
		</font>
		<div style="padding: 0px 30px 0px 0px;">
			<br> <br> <br> <a href="../page/course1.jsp"
				style="text-decoration: none; color: black;"> &nbsp;정보처리기사 </a> <br>
			<br> <a href="../page/course2.jsp"
				style="text-decoration: none; color: black;"> &nbsp;정보처리산업기사 </a> <br>

		</div>
	</div>

	<div class="right">
		<!-- 정보처리기사 필기 수강 -->
		<div style="height: 100%; width: 100%; border-left: 1px solid black;">
			<font size="5"> <br> <br>
				<div style="padding: 0px 0px 0px 30px;">
					정보처리기사 <br> <br> <img src="../img/course_logo.PNG">
					<br>
				</div>
			</font>
			
			<table border="0" align="" style="margin: 30px 30px 30px 30px" width="800">
				<tr>
					<!-- 첫번째 줄 시작 -->
					<td rowspan="4" style="line-height: 0" width="100px"><img
						src="../img/information1.png"></td>
					<td colspan="3">강의명: 2022 정보처리기사 필기</td>
				
				</tr>

				<hr style="margin: 30px 30px 30px 30px" border: "1px
					solid" color="black" width="800">

				<tr>
					<!-- 두번째 줄 시작 -->
					<td colspan="3">강사: 전준혁</td>
				</tr>

				<tr>
					<!-- 세번째 줄 시작 -->
					<td>구성: 95강 / 평균30분 수강일수: 90일,</td>
					<td colspan="2">가격: 66000원</td>
				</tr>

				<tr>
					<!-- 네번째 줄 시작 -->
					<td>교재: 000 정보처리기사 필기</td>
					<td> 
						<%
					if(session.getAttribute("sessionID")!=null){
				%>

						<form method="post" action="../process/courseinsert.jsp">

							<%
					}
				%>
							<%
					if(session.getAttribute("sessionID")!=null){
				%>
							<script>
					function call(){
						alert("장바구니 완료");
												
					}
				</script>

							<%
				} else{
				
				
				%>
							<script>
					function call(){
						alert("로그인을 먼저 시도해주세요");
					}
				</script>
							<%
				}
				%>
							<input type="hidden" name="id"
								value=<%=session.getAttribute("sessionID")%>>

							<button class="button" type="submit" id="button1"
								onclick="call()";>장바구니</button>
						</form>
					</td>

					<td><button class="button"
							onclick="location.href='../page/Cart.jsp'">바로구매</button></td>
				</tr>
			</table>

			<hr style="margin: 30px 30px 30px 30px" border: "1px
				solid" color="black" width="800">
			<br>
			<table border="0" style="margin: 30px 30px 30px 30px"
				width="800">
				<tr>
					<td rowspan="4" style="line-height: 0" width="100px"><img
						src="../img/information2.png"></td>
					<td colspan="3">강의명: 2022 정보처리기사 실기</td>

				</tr>
				<hr style="margin: 30px 30px 30px 30px" border: "1px
					solid" color="black" width="800">
				<tr>
					<td colspan="3">강사: 전준혁</td>
					
				</tr>
				<tr>
					<td>구성: 30강 / 평균30분 수강일수: 90일,</td>
					<td colspan="2">가격: 99000원</td>
				</tr>
				<tr>
					<td>교재: 000 정보처리기사 실기</td>
					<td>
						<%
						if(session.getAttribute("sessionID")!=null){
						%>
						<form method="post" action="../process/courseinsert2.jsp">

							<%
						}	
							%>
							<%
							if(session.getAttribute("sessionID")!=null){
							%>
							<script>
							function call(){
								alert("장바구니 완료");
							}
							</script>
							<%
							} else{
							%>

							<script>
							function call(){
								alert("로그인을 먼저 시도해주세요");
							}
							
							</script>
							<%
							}
							%>
							<input type="hidden" name="id2"
								value=<%=session.getAttribute("sessionID")%>>
							<button class="button" type="submit" id="button2"
								onclick="call()";>장바구니</button>
						</form>
					</td>

					<td><button class="button"
							onclick="location.href='../page/Cart.jsp'">바로구매</button></td>
				</tr>
			</table>
			<hr style="margin: 30px 30px 30px 30px" border: "1px
				solid" color="black" width="800">
		</div>
	</div>

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