<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>CellShop | Bienvenido</title>
	<spring:url value="/resources" var="urlPublic" />
	<spring:url value="/" var="urlRoot" />
	<!-- Bootstrap 2014 -->
	<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
	<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- Style CSS -->
	<link rel="stylesheet" href="${urlPublic}/css/style.css">
	
	<!-- Icon -->
	<link rel="Shortcut Icon" type="image/x-icon"
		href="${urlPublic}/assets/icons/shortcut-icon.ico" />
	
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Dosis"
		rel="stylesheet">
	
	<!-- Social Icons -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>

<body>

	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>
	
		<div class="container theme-showcase" role="main">
	
			<div class="content-page">
			   <div class="col-xs-12">
				<p class="tittles-pages">Detalles del pedido</p>
			</div>

			<c:if test="${msg !=null }">
				<div class='alert alert-success' role='alert'>${msg}</div>
			</c:if>
			
			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Modelo</th>
						<th>Descripción</th>
						<th>Precio</th>
						<th>Memoria</th>
						<th>Almacenamiento</th>
						<th>Color</th>
					</tr>

					<c:forEach var="pedidoDetalle" items="${pedidoDetalles}">
						<tr>
							<td>${pedidoDetalle.producto.modelo.nombre}</td>
							<td>${pedidoDetalle.producto.descripcion}</td>
							<td><fmt:formatNumber value="${pedidoDetalle.precio}" minFractionDigits="0" maxFractionDigits="0"/>gs</td>
							<td>${pedidoDetalle.producto.memoria.descripcion}</td>
							<td>${pedidoDetalle.producto.almacenamiento.descripcion}</td>
							<td>${pedidoDetalle.producto.color.nombre}</td>
						
						</tr>
					</c:forEach>
				</table>
			</div>
			</div>
	
		</div>
	
		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
	
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>