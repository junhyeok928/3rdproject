<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="DAO.test_dao"
    import="VO.test_vo"
    %>
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
        <link rel="stylesheet" href="/3rd_Project/이/MyPage.css" />
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="#" style="text-decoration: none"
                    ><img class="logoimg" src="/3rd_Project/template/img/logo.png" alt="" height="100px" />
                </a>
            </div>
            <div class="headerbox">
                <ul class="menu">
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">마이페이지</a></li>
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
								<a href="" id="now">수강정보</a>
							</li>           
							<li>
								<a href="">장바구니</a>
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
						test_dao dao = new test_dao();
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
						<%for(test_vo v:dao.test()){%>
							<tr><td><%=v.getName() %></td><td><%=v.getSt() %></td><td><%=v.getFn() %></td><td><%=v.getStat() %></td></tr>
						<%} %>
						</tbody>
					</table>
					<span class="title2">나의강의실</span>
					<table class="mycourse">
					<col width="25%">
					<col width="30%">
					<col width="25%">
					<col width="20%">
						<tbody>			
							<tr>
								<th rowspan="2"><img src=/javaexp/z01_img/쮸애기.jpg alt="이미지 오류"></th>
								<th>정보처리기사 필기</th>
								<th>전준혁 강사</th>
								<th rowspan="2"><a href="#">강좌 바로가기</a></th>
							</tr>
							<tr>
								<td>2/95강</td>
								<td>2%</td>
							</tr>
						</tbody>
						<tbody>			
							<tr>
								<th rowspan="2"><img src=/javaexp/z01_img/쮸애기.jpg alt="이미지 오류"></th>
								<th>정보처리기사 실기</th>
								<th>유진선 강사</th>
								<th rowspan="2"><a href="#">강좌 바로가기</a></th>
							</tr>
							<tr>
								<td>4/57강</td>
								<td>7%</td>
							</tr>
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
