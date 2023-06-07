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

		<form id="orderForm" action="${contextRoot}/orders" method="post">
			<label for="quantity">購買數量:</label>
			 <input type="hidden" name="productId" value="${product.productId}"> 
			 <input type="hidden" name="standPrice" value="${product.price}"> 
			 <input type="number" name="quantity" min="1" max="${product.quantity}"
				required value="1">
			<button type="submit">加入訂單</button>
		</form>
	</main>



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
// 		$(document).ready(function() {
// 			$("#orderForm").submit(function(event) {
// 				event.preventDefault();

// 				let quantity = $("input[name='quantity']").val();
// 				let productId = $("input[name='productId']").val();
// 				let standPrice = $("input[name='standPrice']").val();
// 				let jsonData = {
// 					    "order": {
// 					        "orderDetails": [{
// 					            "quantity": quantity,
// 					            "product": {
// 					                "productId": productId,
// 					                "price": standPrice
// 					            }
// 					        }]
// 					    }
// 					};

// 				$.ajax({
// 					url : "${contextRoot}/orders",
// 					type : "POST",
// 					data : JSON.stringify(jsonData),
// 					contentType : "application/json",
// 					success : function(response) {
// 						alert("已加入訂單");
// 					},
// 					error : function(xhr, status, error) {
// 						// 處理錯誤
// 					}
// 				});
// 			});
// 		});
</script>


</body>
</html>