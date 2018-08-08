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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> 
	<a class="navbar-brand" href="#">CellShop</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<c:choose>
		<c:when test="${usuario.hasRole('admin')}">
		
			<div class="collapse navbar-collapse right" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}login/index">Inicio</a></li>
					<li class="nav-item active"><a  class="nav-link" href="${urlRoot}pedidos/list">Pedidos recibidos</a></li>
					<li class="nav-item active"><a  class="nav-link" href="${urlRoot}usuarios/cuentas">Usuarios</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}login/index">Productos</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}stock/index">Stock</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}colores/index">Colores</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}memorias/index">Memorias</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}marcas/index">Marcas</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}almacenamientos/index">Almacenamientos</a></li>
				</ul>
				
				<div class="form-inline my-2 my-lg-0">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> ${usuario.name} </a>
							
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="${urlRoot}perfil/${usuario.name}">Perfil</a> <a
									class="dropdown-item" href="${urlRoot}perfil/password/${usuario.name}">Contraseña</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${urlRoot}logout/${usuario.name}">Cerrar Sesión</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</c:when>
	
		<c:when test="${usuario.hasRole('cliente')}">
		
			<div class="collapse navbar-collapse right" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}">Inicio</a></li>
					<li class="nav-item active"><a  class="nav-link" href="${urlRoot}modelos/lists">Telefónos</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}carrito/${usuario.name}/list">Carrito de compra</a></li>
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}pedidos/${usuario.name}">Historial de pedidos</a></li>
				</ul>
				
				<div class="form-inline my-2 my-lg-0">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> ${usuario.name} </a>
							
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="${urlRoot}perfil/${usuario.name}">Perfil</a> <a
									class="dropdown-item" href="${urlRoot}perfil/password/${usuario.name}">Contraseña</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${urlRoot}logout/${usuario.name}">Cerrar Sesión</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</c:when>
	
		<c:otherwise>
			<div class="collapse navbar-collapse right" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="${urlRoot}">Inicio</a></li>
					<li class="nav-item active"><a  class="nav-link" href="${urlRoot}modelos/lists">Telefónos</a></li>
				</ul>
			
				<div class="form-inline my-2 my-lg-0">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="${urlRoot}usuarios/nuevo"><b>Registrate</b></a></li>
						<li class="nav-item active"><a class="nav-link" href="${urlRoot}login/index"><b>Inicia Sesión</b></a></li>
					</ul>
				</div>
			</div>
		</c:otherwise>
	</c:choose> 
</nav>