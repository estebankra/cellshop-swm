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
					<p class="tittles-pages">Listado de pedidos</p>
				</div>
	
				<div class="col-xs-12">
					<c:if test="${msg !=null }">
						<div class='alert alert-success' role='alert'>${msg}</div>
					</c:if>
				</div>
				
				<spring:url value="/pedidos/${usuario.name}/detalles" var="urlDetails" />
				<spring:url value="/pedidos/adm/entrega/" var="urlPedido" />
	
				<div class="table-responsive text-center">
					<table class="table table-hover table-striped table-bordered">
						<tr>
							<th>Información del Cliente</th>
							<th>Informacíon del Pedido</th>
							<th>Acciones</th>
						</tr>
	
						<c:forEach var="pedido" items="${pedidos}">
							<tr>
								<td>
									${pedido.usuario.nombre} ${pedido.usuario.apellidos}<br>
									${pedido.usuario.pais}<br>
									${pedido.usuario.ciudad}<br>
									${pedido.usuario.direccion}<br>
									${pedido.usuario.telefono}<br>
									${pedido.usuario.email}
								</td>
								
								<td>
									<b>Pedido: </b>
									<fmt:formatDate pattern="yyyy-MM-dd" value="${pedido.fecha}" /><br>
									
									<b>Entrega: </b>
									<c:if test="${pedido.fecha_entrega !=null }">
										<fmt:formatDate pattern="yyyy-MM-dd" value="${pedido.fecha_entrega}"/><br>
									</c:if>
									
									<c:if test="${pedido.fecha_entrega ==null }">
										No entregada<br>
									</c:if>
									
									<b>Monto: </b>
									<fmt:formatNumber value="${pedido.monto}" minFractionDigits="0" maxFractionDigits="0"/>gs<br>
									
									<a id="verProd" href="${urlDetails}/${pedido.pedido_id}" class="btn btn-Primary" role="button" title="Ver">
									Ver productos pedidos</a>
								</td>					
								<td>
									<c:if test="${pedido.fecha_entrega ==null }">
										<a href="${urlPedido}/${pedido.pedido_id}" onclick='return confirm("¿Esta seguro de confirmar la entrega?")' class="btn btn-success" role="button" title="Confirmar entrega">
										<span class="glyphicon glyphicon-ok"></span></a>
									
										<!--<a href="${urlDetails}/${pedido.pedido_id}" class="btn btn-danger" role="button" title="Descartar pedido">
										<span class="glyphicon glyphicon-remove"></span></a> -->
									</c:if>
									
									<c:if test="${pedido.fecha_entrega !=null }">
										<div class='alert alert-success' role='alert'>Entregada</div>
									</c:if>
									
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