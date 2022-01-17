<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
</style>
<title>로그인</title>
<link rel="shortcut icon" href="./img/favicon.ico" />
<link rel="stylesheet" href="./css/font.css" />
<link rel="stylesheet" href="./css/template.css" />
<link rel="stylesheet" href="./css/login.css" />
<script type="text/javascript">
	function logout() {
		alert("로그아웃 되었습니다.");
	}

	function checkValue() {
		inputForm = eval("document.loginInfo");
		if (!inputForm.userId.value) {
			alert("아이디를 입력하세요");
			inputForm.userId.focus();
			return false;
		}
		if (!inputForm.userPw.value) {
			alert("비밀번호를 입력하세요");
			inputForm.userPw.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<header>
		<div class="logo">
			<a href="./main.jsp" style="text-decoration: none"><img class="logoimg" src="./img/logo.png" alt="" height="100px" /> </a>
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
	<div class="float1">베너</div>
	<div class="float2">베너</div>
	<section>
		<form action="./loginpro.jsp" method="post" class="logform" name="loginInfo" onsubmit="return checkValue()">
			<fieldset class="login">
				<div>
					<span class="text">ID</span>
					<input type="text" id="id" name="userId" />
				</div>
				<div>
					<span class="text">PASSWORD</span>
					<input type="password" id="password" name="userPw" />
				</div>
				<div>
					<input type="submit" value="로그인" id="btn_login" />
				</div>
				<div>
					<a href="#">계정찾기</a>/<a href="#">회원가입</a>
				</div>
			</fieldset>
		</form>
	</section>
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