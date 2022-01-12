<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="DAO.Cart_DAO"
    import="VO.Cart_VO"
    %>
<%@ page import="java.text.*"%>
<%request.setCharacterEncoding("utf-8");%>
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
        <link rel="stylesheet" href="/3rd_Project/이/Cart.css?after" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
	
	function CartAll(obj){
		var chbox = document.getElementsByName("cart").length;
		if(document.getElementById("cart").checked==true){ 
			for(var i=0; i<chbox; i++) document.getElementsByName("cart")[i].checked=true;
		}
		if(document.getElementById("cart").checked==false){
		    for(var i=0; i<chbox; i++) document.getElementsByName("cart")[i].checked=false;  
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
				<li><a href="#">마이페이지</a></li>
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
								<a href="/3rd_Project/이/MyPage.jsp">수강정보</a>
							</li>           
							<li>
								<a href="/3rd_Project/이/Cart.jsp" id="now">장바구니</a>
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
					<span class="title">주문내역</span>
					<form>
						<table class="cart">
						<col width="5%"><col width="15%"><col width="15%"><col width="15%"><col width="15%"><col width="15%"><col width="15%"><col width="5%">
							<thead>
								<tr>
									<th></th><th>상품명</th><th>강사명</th><th>구성</th><th>수강금액</th><th>할인금액</th><th>결제금액</th><th></th>
								</tr>
							</thead>
							<tbody>
									<%Cart_DAO dao = new Cart_DAO();
									DecimalFormat df = new DecimalFormat("###,###");
									for(Cart_VO vo:dao.CartList()) {%>
									<%!int i=1; %>
								<tr>
									<td><input type="checkbox" name="cart" checked>
									<td><%=vo.getTitle() %></td><td><%=vo.getName() %></td><td><%=vo.getCompose() %>강</td><td><%=df.format(vo.getPrice()) %>원</td><td><%=df.format(vo.getDisprice()) %>원</td><td><%=df.format(vo.getFinprice()) %>원</td>
									<td><input type="button" name="del" value="삭제" class="del">
								</tr>
									<%} %>
							</tbody>
							<tfoot>
								<tr>
									<th><input type="checkbox" id="cart" checked onclick="CartAll(this)"></th>
									<th colspan="5">총 결제금액</th>
									<th>
										
									</th>
									<th><input type="button" name="delAll" value="모두삭제" class="del"></th>
								</tr>
							</tfoot>
						</table>
					</form>
					<span class="title2">결제수단</span>
					<form>
						<table class="payment">
						<col width="25%"><col width="25%"><col width="25%"><col width="25%">
							<tbody>
								<tr>
									<td>
										<input type="radio" name="payment" value="카드">신용카드
									</td>
									<td>
										<input type="radio" name="payment" value="계좌이체">실시간 계좌이체
									</td>
									<td>
										<input type="radio" name="payment" value="휴대폰">휴대폰 결제
									</td>
									<td>
										<input type="radio" name="payment" value="무통장">무통장 입금
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4">
										<input type="button" name="pay" value="결제하기" class="pay">
									</td>
								</tr>
							</tfoot>
						</table>
					</form>
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
