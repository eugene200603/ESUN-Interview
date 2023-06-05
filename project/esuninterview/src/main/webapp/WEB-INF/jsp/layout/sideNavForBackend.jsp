<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>

		<body>
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<div class="sb-sidenav-menu">
						<div class="nav">
							<div class="sb-sidenav-menu-heading">Core</div>
							<a class="nav-link" href="${contextRoot}/backend">
								<div class="sb-nav-link-icon">
									<i class="fas fa-tachometer-alt"></i>
								</div> 後台主頁
							</a>
							<div class="sb-sidenav-menu-heading">後台系統</div>
							
							<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
								data-bs-target="#collapseLayouts-member" aria-expanded="false"
								aria-controls="collapseLayouts-member">
								<div class="sb-nav-link-icon">
									<i class="fas fa-columns"></i>
								</div> 會員後台系統
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="collapseLayouts-member" aria-labelledby="headingOne"
								data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="${contextRoot}/working">會員管理</a>

								</nav>
							</div>
							
							<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
								data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
								<div class="sb-nav-link-icon">
									<i class="fas fa-columns"></i>
								</div> 廠商後台系統
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
								data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="${contextRoot}/working">賣家管理</a>
									
								</nav>

							</div>

							<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
								data-bs-target="#collapseLayouts-com" aria-expanded="false"
								aria-controls="collapseLayouts-com">
								<div class="sb-nav-link-icon">
									<i class="fas fa-columns"></i>
								</div> 商品後台系統
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="collapseLayouts-com" aria-labelledby="headingOne"
								data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="${contextRoot}/ProductBack">商品管理</a>
									<a class="nav-link" href="${contextRoot}/Product/add">新增商品</a>
								</nav>
							</div>
						</div>
						</div>

				</nav>
			</div>
		</body>

		</html>