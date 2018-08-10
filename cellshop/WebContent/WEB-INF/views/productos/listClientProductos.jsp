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

		<div class="content-page">
			<!-- <div class="hidden-xs content-carousel">
			<div id="carousel-phonestore" class="carousel slide"
				data-ride="carousel" style="margin-top: 0;">
				<ol class="carousel-indicators">
					<li data-target="#carousel-phonestore" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-phonestore" data-slide-to="1"></li>
					<li data-target="#carousel-phonestore" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="${urlPublic}/assets/img/slide 1.jpg" alt="">
						<div class="carousel-caption">
							<h2>Windows Phone</h2>
						</div>
					</div>
					<div class="item">
						<img src="${urlPublic}/assets/img/slide 2.jpg" alt="">
						<div class="carousel-caption">
							<h2>iPhone 5</h2>
						</div>
					</div>
					<div class="item">
						<img src="${urlPublic}/assets/img/slide 3.jpg" alt="">
						<div class="carousel-caption">
							<h2>Sony Xperia Z</h2>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-phonestore"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#carousel-phonestore"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<div class="visible-xs static-image-carousel">
			<img src="${urlPublic}/assets/img/image-carousel.jpg" alt=""
				class="img-responsive">
		</div>-->

			<section id="prod-container section">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 text-center">
							<p class="tittles-pages">Teléfonos</p>
						</div>

						<div class="col-xs-12">
							<div class="container">

								<ul class="nav nav-tabs" id="myTab">
									<li class="nav-item"><a class="nav-link active"
										href="${urlRoot}productos/lists">Todos</a></li>
									<c:forEach var="marca" items="${marcas}">
										<li class="nav-item"><a class="nav-link active"
											href="${urlRoot}productos/lists/${marca.marca_id}">${marca.descripcion}</a>
										</li>
									</c:forEach>
								</ul>


								<div class="tab-content">
									<div class="tab-pane active" id="all-categories">
										<p class="tittles-pages">Todos los productos
											${marcaSele.descripcion}</p>

										<c:forEach var="producto" items="${productos}">

											<div class="col-xs-12 col-sm-6 col-md-3">
												<div class="thumbnail thumbnail-content-phones">
													<div class="img-products">
														<img
															src="${urlPublic}/assets/img/celulares/${producto.imagen}"
															alt="prod-icon" class="img-responsive">
													</div>
													<div class="caption" role="menu" id="producto"
														name="producto">
														<h4 class=" text-center">${producto.modelo.nombre}</h4>
														<p class="text-justify">${producto.descripcion}</p>
														<p class="text-justify">
															<b>Memoria Ram:</b> ${producto.memoria.descripcion}
														</p>
														<p class="text-justify">
															<b>Almacenamiento:</b>
															${producto.almacenamiento.descripcion}
														</p>
														<p class="text-justify">
															<b>Color:</b> ${producto.color.nombre}
														</p>
														<p class="text-justify">
															<b>Precio:</b>
															<fmt:formatNumber value="${producto.precio}"
																minFractionDigits="0" maxFractionDigits="0" />
															gs
														</p>
														<p class="text-center">
															<a href="${urlRoot}productos/detalle/${producto.prod_id}"
																class="btn btn-danger" role="button">Ver más</a>
														</p>

														<c:if test="${usuario == null }">
															<p class="text-center">
																<a href="${urlRoot}login/index" class="btn btn-success"
																	role="button" title="Agregar al carrito"><span
																	class="glyphicon glyphicon-shopping-cart"></span></a>
															</p>
														</c:if>

														<c:if test="${usuario != null }">
															<p class="text-center">
																<a
																	href="${urlRoot}carrito/${usuario.name}/agregar/${producto.prod_id}"
																	class="btn btn-success" role="button"
																	title="Agregar al carrito"><span
																	class="glyphicon glyphicon-shopping-cart"></span></a>
															</p>
														</c:if>


													</div>
												</div>
											</div>

										</c:forEach>

									</div>
									<!-- ===================================== SmartPhones ============================================= -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>

	<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>

</body>
