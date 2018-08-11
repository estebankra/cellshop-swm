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
					<p class="tittles-pages">Listado de productos en su carrito</p>
				</div>

				<div class="col-xs-12">
					<c:if test="${msg !=null }">
						<div class='alert alert-success' role='alert'>${msg}</div>
					</c:if>
				</div>

				<spring:url value="carrito/${usuario.name}/eliminar" var="urlDelete" />

				<a href="${urlRoot}productos/lists" class="btn btn-success"
					role="button" title="Nueva marca">Agregar más</a><br> <br>

				<div class="table-responsive text-center">
					<table class="table table-hover table-striped table-bordered">
						<tr>
							<th>Producto</th>
							<th>Fecha</th>
							<th>Precio</th>
							<th>Acciones</th>

						</tr>

						<c:forEach var="prodCarrito" items="${carritoUsu}">
							<tr>
								<td>${prodCarrito.producto.modelo.nombre}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${prodCarrito.fecha}" />
								</td>
								<td><fmt:formatNumber value="${prodCarrito.precio}"
										minFractionDigits="0" maxFractionDigits="0" />gs
								</td>
								<td><a href="${urlRoot}modelos/detalle/${prodCarrito.producto.prod_id}"
									class="btn btn-success btn-sm" role="button" title="Detalles"><span
										class="glyphicon glyphicon-info-sign"></span>
									</a> 
									
									<a href="${urlRoot}${urlDelete}/${prodCarrito.carrito_id}"
									onclick='return confirm("¿Estas seguro?")'
									class="btn btn-danger btn-sm" role="button" title="Eliminar"><span
										class="glyphicon glyphicon-trash"></span>
									</a>
								</td>
							</tr>
						</c:forEach>
					</table>
					
					<br>
					<h5>
						<b>Suma total:</b>
						<fmt:formatNumber value="${sumaTotal}" minFractionDigits="0"
							maxFractionDigits="0" />
					</h5>

					<c:if test="${ sumaTotal != 0 }">
						<a href="${urlRoot}pedidos/carrito/${usuario.name}/completar"
							class="btn btn-success" role="button">Finalizar compra</a>
						<br>
						<br>
					</c:if>
				</div>
			</div>
		</div>
		<jsp:include page="../includes/footer.jsp"></jsp:include>
	</div>

	<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>