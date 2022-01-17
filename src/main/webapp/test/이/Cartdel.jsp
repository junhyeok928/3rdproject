<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
	import="DAO.Cart_DAO"
    import="VO.Cart_VO"
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>장바구니 선택 취소</title>
	</head>
	<body>
	<%
	Cart_DAO dao = new Cart_DAO();
	String user_id = request.getParameter("id");
	
	int del = Integer.parseInt(request.getParameter("del"));
	for(Cart_VO vo:dao.CartList(user_id)) {
		dao.CartListDel(user_id, del);
	}
	response.sendRedirect("Cart.jsp");
	%>
	</body>
</html>