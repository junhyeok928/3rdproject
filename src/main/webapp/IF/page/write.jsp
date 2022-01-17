<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" href="../img/favicon.ico" />
<link rel="stylesheet" href="../css/font.css" />
<link rel="stylesheet" href="../css/template.css" />
<link rel="stylesheet" href="../css/board.css" />
<link rel="stylesheet" href="../css/write.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	function logout() {
		alert("로그아웃 되었습니다.");
	}
</script>
</head>

<body>
	<header>
		<div class="logo">
			<a href="../index.jsp" style="text-decoration: none"><img class="logoimg" src="../img/logo.png" alt="" height="100px" /> </a>
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
				if (session.getAttribute("sessionID") != null) {
				%>
				<li><a href="../page/MyPage.jsp">마이페이지</a></li>
				<%
				}
				%>
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
			<form method="post" action="../process/writeAction.jsp">
				<table class="writeTable" style="width: 790px; text-align: left;">
					<col width="15%">
					<col width="*">
					<thead>
						<tr>
							<th colspan="2">게시글 작성</th>
						</tr>
					</thead>
					<tbody>
						<tr style="border-bottom: 1px solid #000000;">
							<td style="text-align: center; border-right: 1px solid #000000;">제목</td>
							<td>
								<input type="text" class="bTitle" placeholder="글 제목" name="boardTitle" maxlength="50">
							</td>
						</tr>
						<tr style="border-bottom: 1px solid #000000;">
							<td style="text-align: center; border-right: 1px solid #000000;">강사선택</td>
							<td>
								<select name="teacherInfo" style="margin: 3px 0 3px 10px;">
									<option value="정보처리기사 필기 전준혁 강사">정보처리기사 필기 전준혁 강사</option>
									<option value="정보처리기사 실기 서원 강사">정보처리기사 실기 서원 강사</option>
									<option value="정보처리산업기사 필기 유진선 강사">정보처리산업기사 필기 유진선 강사</option>
									<option value="정보처리산업기사 실기 이지수 강사">정보처리산업기사 실기 이지수 강사</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea class="bContent" placeholder="글 내용" name="boardContent" maxlength="1000" style=""></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="writeBtn" value="등록" style="border: none;">
			</form>

		</div>
	</div>
	<section></section>
	<footer>
		<div class="foot1" style="display: flex">
			<span> 대표 : 전준혁 </span> <span> 주소 : 충청남도 천안시 불당 26로 99 </span> <span> 연락처 : 010-2200-9365 </span>
		</div>
		<div class="foot2" style="display: flex">
			<span> 고객센터 : 070-1234-5678 </span> <span> 계좌번호 : 352-02-1234567 </span>
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