<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="DAO.BoardDao" %>
<%@ page import="VO.Board" %>
<%@ page import="DAO.member_DAO" %>
<%@ page import="java.util.ArrayList" %>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript">
	function logout() {
		alert("로그아웃 되었습니다.");
	}
	</script>
  </head>

  <body>
		<%
		int pageNumber = 1;
  		if (request.getParameter("pageNumber") != null){
  			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  		}
  		%>
    <header>
      <div class="logo">
        <a href="#" style="text-decoration: none"
          ><img class="logoimg" src="./img/logo.png" alt="" height="100px" />
        </a>
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
		<img class="float1" src="./img/banner1.png" alt="오류">
	</div>
    <div>
		<img class="float2" src="./img/banner2.png" alt="오류">
	</div>
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
        <table style="width:790px; text-align:center;">
            <table class="search">
                <tr>
                    <td>
                        <select name="search_mode">
                            <option value="all">전체</option>
                            <option value="name">작성자</option>
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                        </select>
                        <input class="search_model" type="text" name="search_word" size="30" />
                        <input type="submit" value="검 색" />
                    </td>
                </tr>
            </table>  
            <table class="table_maintext" cellspacing="0" 
                style="text-align: center; border: 1px solid #dddddd;border-top: 2px solid #333333; width: 100%;">
                <colgroup>
                    <col width="*">
                    <col width="13%">
                    <col width="20%">
                </colgroup>
                <thead>
                    <tr>
	                    <th>제목</th>
	                    <th>작성자</th>
	                    <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                	<%
                		BoardDao boardDao = new BoardDao();
                		ArrayList<Board> list = boardDao.getList(pageNumber);
                		for(int i = 0; i < list.size(); i++) {
                	%>
                	<tr>
                        <td><a style="text-decoration: none; color: black;" 
                        href="view.jsp?boardID=<%=list.get(i).getBoardID() %>">
                          [ <%= list.get(i).getTeacherInfo()%> ] <%= list.get(i).getBoardTitle() %></a></td>
                        <td><%=list.get(i).getUserID() %></td>
                        <td><%=list.get(i).getBoardDate() %></td>
                    </tr>
                	<%
                		}
                	%>
                </tbody>
            </table>
        </table>
        <span><a href="write.jsp" class="writeBtn">글쓰기</a></span>
        <div class="listNum">
            <div class="item">
                <a href="#">
                    <i class="fa fa-angle-left"></i>
                </a>
            </div>
            <div class="item">
                <ol>
                <%for(int i = 0; i < pageNumber; i++){
                	if(boardDao.nextPage(pageNumber)){
                %>
                    <li>
                        <a href="board.jsp?pageNumber=<%=pageNumber%>"><%=i+1 %></a>
                    </li>
                <%
               			pageNumber++;
                	}
                }
                %>
                <!-- 더 생각해보기 -->
                </ol>
            </div>
            <div class="item">
                <a href="#">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
      </div>
    </div>

    <section></section>
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