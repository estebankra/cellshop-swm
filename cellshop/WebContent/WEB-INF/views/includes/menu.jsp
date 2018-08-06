<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	
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


<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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

<!-- Fixed navbar -->
<nav class="full-reset nav-phonestore">
	<div class="page-container">
		<c:choose>
			<c:when test="${usuario.hasRole('admin')}">
				<div class="logo tittles-pages">CellShop | Administración</div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}login/index">Inicio</a></li>
					<li><a href="${urlRoot}usuarios/cuentas">Usuarios</a></li>
					<li><a href="${urlRoot}login/index">Productos</a></li>
					<li><a href="${urlRoot}login/index">Colores</a></li>
					<li><a href="${urlRoot}login/index">Ram</a></li>
					<li><a href="${urlRoot}marcas/index">Marcas</a></li>
					<li><a href="${urlRoot}almacenamientos/index">Almacenamiento</a></li>
					<li><a href="${urlRoot}logout/${usuario.name}">Salir</a></li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:when>


			<c:when test="${usuario.hasRole('cliente')}">
				<div class="logo tittles-pages">CellShop </div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}">Inicio</a></li>
					<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
					<li><a href="${urlRoot}perfil/${usuario.name}">Perfil</a></li>
					<li><a href="${urlRoot}carrito/${usuario.name}/list">Carrito de compra</a></li>
					<li><a href="${urlRoot}pedidos/${usuario.name}">Historial de compras</a></li>
					<li><a href="${urlRoot}logout/${usuario.name}">Salir</a></li>
					<li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          Dropdown
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="#">Action</a>
				          <a class="dropdown-item" href="#">Another action</a>
				          <div class="dropdown-divider"></div>
				          <a class="dropdown-item" href="#">Something else here</a>
				        </div>
			      	</li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:when>

			<c:otherwise>
				<div class="logo tittles-pages">CellShop</div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}">Inicio</a></li>
					<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
					<!--<li><a href="news.html">Noticias</a></li>
				<li><a href="services.html">Servicios</a></li>
				<li><a href="contact.html">Contactenos</a></li> -->
					<li><a href="${urlRoot}usuarios/nuevo"><b>Registrate</b></a></li>
					<li><a href="${urlRoot}login/index"><b>Inicia
								Sesión</b></a></li>
					<li><i class="fas fa-cog"></i></li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:otherwise>
		</c:choose>
	</div>
</nav>
