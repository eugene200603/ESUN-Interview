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
<title>商品詳細資訊</title>
</head>
<body>

	<!-- ======= Header ======= -->
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<!-- End Header -->
	<main id="main">
	<h1>商品詳細資訊</h1>
	<h4>商品名稱:${product.productName}</h4>
	<fmt:formatNumber value="${product.price}" pattern="#"
		var="formattedPrice" />
	<h4>售價:${formattedPrice}</h4>
	<h4>庫存量:${product.quantity}</h4>

	<button>購買</button>
</main>
</body>
</html>