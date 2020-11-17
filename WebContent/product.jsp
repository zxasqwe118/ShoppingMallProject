<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Product" %>
<jsp:useBean id = "productDAO" class = "dao.ProductRepository" scope = "session" />
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>제품 상세 정보</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class = "container">
		<div class = "row">
			<div class = "col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><b>상품 코드 : </b><span class = "badge badge-danger"> <%=product.getProductId() %></span>
				<p><b>제조사</b> : <%=product.getManufacturer() %>
				<p><b>분류</b> : <%=product.getCategory() %>
				<p><b>재고 수</b> : <%=product.getUnitsInStock() %>
				<p><a href = "#" class = "btn btn-info"> 상품 주문</a> <a href = "./products.jsp" class = "btn btn-secondary"> 상품 목록</a>
			</div>
		</div>
	</div>
	
	<jsp:include page = "footer.jsp" />
</body>
</html>