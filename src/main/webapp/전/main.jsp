<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
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
        <link rel="stylesheet" href="./css/main.css">
		<style>
			table{
				border: 3px solid #444444;
			}
			table td{
				
				padding-bottom:10px;
				border-bottom: 1px solid #444444;
				
			}
		</style>
    </head>
	<script type="text/javascript">
	window.onload=function(){
		var h3Obj = document.querySelector("h3");
		var today = new Date();
		var dday = new Date(2022,03,05);
		var gap = dday.getTime() - today.getTime();
		var result = Math.ceil(gap / (1000 * 60 * 60 * 24));
		h3Obj.innerText = "D-Day "+ result+"일";
	}
	
	</script>
    <body>
        <header>
            <div class="logo">
                <a href="#" style="text-decoration: none"
                    ><img class="logoimg" src="./img/logo.png" alt="" height="100px" />
                </a>
            </div>
            <div class="headerbox">
                <ul class="menu">
                    <li><a href="./loginform.jsp">로그인</a></li>
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
        <div>
        <img class="float1" src="./img/banner1.png" alt="오류" >
        </div>
        <div>
        <img class="float2" src="./img/banner2.png" alt="오류" >
        </div>
           	<div class="first_sc">
		         <div class="top">
		          	<table>
		           		<tr><td># 인기강의 TOP3</td><tr>
		           		<tr><td>1위 정보처리기사 필기+실기</td></tr>
		           		<tr><td>2위 정보처리산업기사 필기+실기</td></tr>
		           		<tr><td>3위 정보처리기사 필기</td></tr>
		           </table>
		         </div>
		         <div class="top">
		           <table >
		           		<tr><td># 인기교재 TOP3</td><tr>
		           		<tr><td>1위 2022 이기적 정보처리기사 필기</td></tr>
		           		<tr><td>2위 2022 시나공 정보처리기사 필기</td></tr>
		           		<tr><td>3위 2022 수제비 정보처리기사 필기</td></tr>
		           </table>
		       	 </div>

	            <div class="top3">
	           		<h2>2022 정보처리기사 필기</h2>
	           		<h3></h3>
	           </div>
	       </div> 
           <section>
           		<div class="wrap">
					<ul>
						<li class="tab_1"><a>공지사항</a></li>
						<li class="tab_2"><a>후기게시판</a></li>
						<li class="tab_2"><a>질문게시판</a></li>
						<li class="tab_2"><a>자유게시판</a></li>
					</ul>
					<ul class="ul_list">
						<li><a>공지사항</a></li>
						<li><a>공지사항</a></li>
						<li><a>공지사항</a></li>
						<li><a>공지사항</a></li>
					</ul>
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