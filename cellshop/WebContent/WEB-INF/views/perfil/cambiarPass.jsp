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
	<spring:url value="/usuarios/editar/password/${usuarioLogueado.usuario}" var="urlForm" />
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
					<p class="tittles-pages">Editar datos de su cuenta</p>
		
				<h3>Usuario: ${usuarioLogueado.usuario}</h3>
				
				<div class="col-xs-12">
					<c:if test="${msg !=null }">
						<div class='alert alert-warning' role='alert'>${msg}</div>
					</c:if>
				</div>

				<form:form action="${urlForm}" method="POST" modelAttribute="usuarioLogueado">

					<div class="form-group">
						<label for="inputEmail4">Contraseña</label>
						<form:hidden path="usuario_id" />
						<form:hidden path="apellidos" />
						<form:hidden path="nombre" />
						<form:hidden path="fechanac" />
						<form:hidden path="docunum" />
						<form:hidden path="direccion" />
						<form:hidden path="ciudad" />
						<form:hidden path="pais" />
						<form:hidden path="telefono" />
						<form:hidden path="email" />
						<form:hidden path="usuario" />
						<form:input type="password" class="form-control" path="contrasena" id="contrasena" required="required" />
					</div>
				
					<div class="form-group">
						<label for="inputZip">Confirmar contraseña</label> 
						<form:input type="password" class="form-control" path="perfil" id="perfil" required="required" />
					</div>


					<hr class="featurette-divider">
	
					<button type="submit" class="btn btn-primary">Guardar cambios</button>
				
				</form:form>
				<br /><br />

			</div>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>
