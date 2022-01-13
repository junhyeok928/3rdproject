<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="DAO.User_Course_DAO"
    import="VO.User_Course_VO"
    %>
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
        <link rel="shortcut icon" href="./img/favicon.ico">
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/template.css">
        <link rel="stylesheet" href="/3rd_Project/이/MyPage.css?after" />
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
			<a href="/3rd_Project/전/main.jsp" style="text-decoration: none"><img class="logoimg" src="./img/logo.png" alt="" height="100px" /> </a>
		</div>
		<div class="headerbox">
			<ul class="menu">
				<%
				String msg = request.getParameter("msg");

				if (session.getAttribute("sessionID") != null) {
				%><li><a href="#"><%=session.getAttribute("sessionID")%>님</a></li>
				<li><a href="/3rd_Project/전/logoutpro.jsp" onclick="logout()">로그아웃</a></li>
				<%
				} else {
				%>
				<li><a href="/3rd_Project/전/loginform.jsp">로그인</a></li>
				<%
				}
				%>
				<li><a href="#">회원가입</a></li>
				<% 
				if(session.getAttribute("sessionID") != null){
				%>
				<li><a href="/3rd_Project/이/MyPage.jsp">마이페이지</a></li>
				<%} %>			
			</ul>
		</div>
	</header>
        <nav>
            <div class="menubox">
                <ul class="menu">
                    <li class="parent">
                        <a href="#">수강신청</a>
                        <ul class="submenu">
                            <li class="parent">
                                <a href="#">정보처리산업기사</a>
                            </li>
                            <li class="parent">
                                <a href="#">정보처리기사</a>
                            </li>
                        </ul>
                    </li>

                    <li class>
                        <a href="#">강사소개</a>
                    </li>
                    <li class>
                        <a href="#">교재신청</a>
                    </li>
                    <li class="parent">
                        <a href="#">Daily문제</a>
                        <ul class="submenu">
                            <li class="parent">
                                <a href="#">정보처리산업기사</a>
                            </li>
                            <li class="parent">
                                <a href="#">정보처리기사</a>
                            </li>
                        </ul>
                    </li>
                    <li class="parent">
                        <a href="#">커뮤니티</a>
                        <ul class="submenu">
                            <li class>
                                <a href="#">후기게시판</a>
                            </li>
                            <li class>
                                <a href="#">자유게시판</a>
                            </li>
                            <li class>
                                <a href="#">질문게시판</a>
                            </li>
                        </ul>
                    </li>
                    <li class="parent">
                        <a href="#">공지사항</a>
                        <ul class="submenu">
                            <li>
                                <a href="#">공지사항</a>
                            </li>
                            <li>
                                <a href="#">FAQ</a>
                            </li>
                            <li>
                                <a href="#">시험일정</a>
                            </li>
                            <li>
                                <a href="#">이벤트</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">나의강의실</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="test"></div>
  		<div>
       		<img class="float1" src="./img/banner1.png" alt="오류" >
        </div>
        <div>
        	<img class="float2" src="./img/banner2.png" alt="오류" >
        </div>
        <section>
        	<div>
		       	<div class="mymenubox1">
			    	<div class="mymenubox">
						<span>마이페이지</span>
						<ul class="mymenu">
							<li>
								<a href="/3rd_Project/이/MyPage.jsp" id="now">수강정보</a>
							</li>           
							<li>
								<a href="/3rd_Project/이/Cart.jsp">장바구니</a>
							</li>           
							<li>
								<a href="#" >주문/배송</a>
							</li>
						</ul>
					</div>
					<div class="division"></div>   
					<div class="mymenubox">   
						<ul class="mymenu">     
							<li>
								<a href="#">나의강의실</a>
							</li>           
							<li>
								<a href="#">회원정보수정</a>
							</li>           
						</ul>
			        </div>
				</div>
				<div class="coursebox">
					<span class="title">수강정보</span>
					<%
					User_Course_DAO dao = new User_Course_DAO();
					%>
					<table class="recodes">
					<col width="25%">
					<col width="25%">
					<col width="25%">
					<col width="25%">
						<thead>
							<tr><th>강좌명</th><th>시작일</th><th>종료일</th><th>상태</th></tr>
						</thead>
						<tbody>
						<%
						String id = (String)session.getAttribute("sessionID");
						for(User_Course_VO vo:dao.User_CourseList(id)) {
						%>
							<tr><td><%=vo.getTitle() %></td><td><%=vo.getStart_date() %></td><td><%=vo.getFinish_date() %></td><td><%=vo.getState() %></td></tr>
						<%} %>
						</tbody>
					</table>
					<span class="title2">나의강의실</span>
					<table class="mycourse">
					<col width="30">
					<col width="30%">
					<col width="35%">
						<tbody>			
							<%for(User_Course_VO vo:dao.User_CourseList(id)) { %>
							<tr>
								<th><%=vo.getTitle() %></th>
								<th><%=vo.getName() %> 강사</th>
								<th rowspan="2"><a href="#">강좌 바로가기</a></th>
							</tr>
							<tr>
								<td><%=vo.getComposeing() %>/<%=vo.getCompose() %>강</td>
								<td><%=(int)(((double)vo.getComposeing()/vo.getCompose())*100.0) %>%</td>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
        </section>
        <footer>
            <div class="foot1" style="display: flex">
                <span> 대표 : 전준혁 </span>
                <span> 주소 : 충청남도 천안시 불당 26로 99 </span>
                <span> 연락처 : 010-2200-9365 </span>
            </div>
            <div class="foot2" style="display: flex">
                <span> 고객센터 : 070-1234-5678 </span>
                <span> 계좌번호 : 352-02-1234567 </span>
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
