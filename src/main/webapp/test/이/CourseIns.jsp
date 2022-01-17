<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="DAO.User_Course_DAO"
    import="VO.User_Course_VO"
    import="DAO.Cart_DAO"
    import="VO.Cart_VO"
    import="java.sql.Date"
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>수강 결제완료</title>
	</head>
	<body>
	<%
	User_Course_DAO Codao = new User_Course_DAO();
	Cart_DAO Cadao = new Cart_DAO();
	String user_id = null;
	user_id = request.getParameter("id");
	
	java.util.Date date = new java.util.Date();
	Calendar cal = Calendar.getInstance();
	cal.setTime(date);
	java.sql.Date sysdate = new java.sql.Date(cal.getTimeInMillis());
	
	Calendar wrcal = Calendar.getInstance();
	wrcal.setTime(date);
	wrcal.add(Calendar.DATE, 90);
	java.sql.Date wrdate = new java.sql.Date(wrcal.getTimeInMillis());
	
	Calendar pecal = Calendar.getInstance();
	pecal.setTime(date);
	pecal.add(Calendar.DATE, 120);
	java.sql.Date pedate = new java.sql.Date(pecal.getTimeInMillis());
	
	String chS[] = request.getParameterValues("cart");
	int chI[] = new int[chS.length];
	for(int i=0; i<chS.length; i++) {
		chI[i] = Integer.parseInt(chS[i]);
	}
	for(int ch:chI) {
		for(Cart_VO vo:Cadao.CartChList(user_id, ch)) {
			String title = vo.getTitle().substring(vo.getTitle().length()-2,vo.getTitle().length());
			if(title.equals("필기")) {
				Codao.User_CourseListIns(user_id, vo.getTitle(), vo.getName(), vo.getCompose(), 0, sysdate, wrdate, "수강중");			
			} else if(title.equals("실기")) {
				Codao.User_CourseListIns(user_id, vo.getTitle(), vo.getName(), vo.getCompose(), 0, sysdate, pedate, "수강중");			
			}
			Cadao.CartListDel(user_id, ch);
		}
	}
	response.sendRedirect("Cart.jsp");
	%>
	</body>
</html>