<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
<link rel="stylesheet" href="${urlPublic}/css/style.css">
<link rel="Shortcut Icon" type="image/x-icon"
	href="${urlPublic}/assets/icons/shortcut-icon.ico" />
<link href="https://fonts.googleapis.com/css?family=Dosis"
	rel="stylesheet">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.11.2.min.js"><\/script>')
</script>
<script src="${urlPublic}/js/modernizr.js"></script>
<script src="${urlPublic}/js/main.js"></script>
<script src="${urlPublic}/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="content-page">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12 text-center">
						<p class="tittles-pages">Detalles del producto</p>
					</div>

					<div class="col-xs-12">
						<div class="container">
							<div class="col-xs-12 col-sm-6 col-md-3 center">
								<div class="thumbnail thumbnail-content-phones">
									<div class="img-products">
										<img
											src="${urlPublic}/assets/img/celulares/${produSele.imagen}"
											alt="prod-icon" class="img-responsive">
									</div>
									<div class="caption" role="menu" id="producto" name="producto">
										<h3 class="text-align-center">${produSele.modelo.nombre}</h3>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">${produSele.descripcion}</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Precio<br></b> ${produSele.precio}gs
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12">
						<div class="container">
							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Memoria Ram<br></b> ${produSele.memoria.descripcion}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Almacenamiento<br></b>
										${produSele.almacenamiento.descripcion}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Color<br></b> ${produSele.color.nombre}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Resolución<br></b> ${produSele.modelo.resolucion}
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12">
						<div class="container">

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Peso<br></b> ${produSele.modelo.peso}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Bateria<br></b> ${produSele.modelo.bateria}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Dimensiones<br></b> ${produSele.modelo.dimensiones}
									</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 left">
								<div class="thumbnail thumbnail-content-phones">
									<p class="text-align-center">
										<b>Pantalla<br></b> ${produSele.modelo.pantalla}gs
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-12">
						<div class="col-xs-12 col-sm-6 col-md-3 center">
							<div class="thumbnail thumbnail-content-phones">
								<p class="text-justify center">
									<b>Agregar al carrito</b>
								</p>
								<p class="text-align-center">
									<a href="${urlRoot}carrito/${usuario.name}/agregar/${produSele.prod_id}"
										class="btn btn-success" role="button" title="Agregar al carrito"> <span
										class="glyphicon glyphicon-shopping-cart"></span>
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>