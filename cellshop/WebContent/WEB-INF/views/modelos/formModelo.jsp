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
	<spring:url value="/modelos/guardar" var="urlForm" />
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
					<p class="tittles-pages">Agregar modelos</p>
				</div>

				<c:if test="${msg !=null }">
					<div class='alert alert-warning' role='alert'>${msg}</div>
				</c:if>

				<spring:hasBindErrors name="usuario">
					<div class='alert alert-danger' role='alert'>
						Por favor corrija los siguientes errores:
						<ul>
							<c:forEach var="error" items="${errors.allErrors}">
								<li><spring:message message="${error}" /></li>
							</c:forEach>
						</ul>
					</div>
				</spring:hasBindErrors>

				<form:form action="${urlForm}" method="POST"
					modelAttribute="modelo">
					<br><br><br><br>

					<div class="form-group">			
						<label for="idMarca" class="control-label">Marca</label>
						<form:hidden path="model_id" />		
						<form:select id="idMarca" path="marca.marca_id"	class="form-control" items="${marcas}" itemLabel="descripcion"  itemValue="marca_id" />  
					</div>

					<div class="form-group">
						<label for="inputPassword4">Nombre</label> 
						<form:input type="text" class="form-control" path="nombre" id="nombre" required="required" />
					</div>
					
					<div class="form-group">
						<label for="inputAddress">Resolución</label> 
						<form:input type="text" class="form-control" path="resolucion" id="resolucion" required="required" />
					</div>
					
					<div class="form-group">
						<label for="inputAddress2">Pantalla</label> 
						<form:input type="text" class="form-control" path="pantalla" id="pantalla" required="required" />
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Peso</label> 
							<form:input type="text" class="form-control" path="peso" id="peso" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Dimensiones</label> 
							<form:input type="text" class="form-control" path="dimensiones"
									id="dimensiones" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Batería</label> 
							<form:input type="text" class="form-control" path="bateria"
									id="bateria" required="required" />
						</div>
						
		
					</div>
					
					<hr class="featurette-divider">

					<button type="submit" class="btn btn-primary">Guardar</button>
				</form:form>

			</div>

		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>

		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>