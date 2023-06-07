<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>編輯商品</title>
<link rel="stylesheet" type="text/css" href="${contextRoot}/assetsForBackend/css/form.css" />

</head>
<body class="sb-nav-fixed">
	<!-- ======= Header ======= -->
	<jsp:include page="../layout/headerForBackend.jsp"></jsp:include>
	<!-- End Header -->

	<div id="layoutSidenav">

		<!-- ======= SiderNav ======= -->
		<jsp:include page="../layout/sideNavForBackend.jsp"></jsp:include>
		<!-- End SiderNav -->

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1>商品管理-編輯</h1>
					<form:form modelAttribute="product" method="put"
						action="${contextRoot}/ProductBack/edit">
						<form:label path="productId">商品編號:</form:label>
							<form:input type="hidden" path="productId" />
						
						<form:label path="productName">商品名稱:</form:label>
						<form:input type="hidden" path="productName" />
						<input type="text" value="${product.productName}" readonly="readonly" />
						
						<br>
						<form:label path="price">售價:</form:label>
						<form:input path="price" required="required" type="number" min="0" pattern="[0-9]+" value="0"/>
						<br>
						<form:label path="quantity">目前庫存:</form:label>		
						<input type="text" value="${product.quantity}" readonly="readonly" />
						<br>
						<form:label path="increaseQuantity">進庫數量:</form:label>
						<form:input path="increaseQuantity" required="required" type="number" min="0" pattern="[0-9]+" value="0"/>
						<br><br>
						<button type="submit">送出</button>
					</form:form>
				</div>
			</main>
			<!-- End #main -->

			<!-- ======= Footer ======= -->
			<jsp:include page="../layout/footerForBackend.jsp"></jsp:include>
			<!-- End Footer -->
		</div>
	</div>

	<!-- =============================== bootstrap ================================================= -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="${contextRoot}/assetsForBackend/js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${contextRoot}/assetsForBackend/js/datatables-simple-demo.js"></script>
	<!-- =================================== bootstrap ============================================= -->
</body>
</html>