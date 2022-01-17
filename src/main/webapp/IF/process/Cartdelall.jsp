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
		<title>장바구니 전체 취소</title>
	</head>
	<body>
	<%
		Cart_DAO dao = new Cart_DAO();
		String user_id = request.getParameter("id");
		
		for(Cart_VO vo:dao.CartList(user_id)) {
			dao.CartListDelAll(user_id);
		}
		response.sendRedirect("../page/Cart.jsp");
	%>
	</body>
</html>