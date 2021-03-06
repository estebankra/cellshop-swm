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
	<spring:url value="/productos/guardar" var="urlForm" />
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
					<p class="tittles-pages">Agregar productos</p>
				</div>

				<c:if test="${msg !=null }">
					<div class='alert alert-warning' role='alert'>${msg}</div>
				</c:if>

				<spring:hasBindErrors name="producto">
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
					modelAttribute="producto">
					<br><br><br><br>
					
					<div class="form-group">
						<label for="inputAddress2">Descripción</label>
						<form:hidden path="prod_id" />	
						<form:input type="text" class="form-control" path="descripcion" id="descripcion" required="required" />
					</div>
					
					
					<div class="form-group">
						<label for="inputAddress2">Imagén</label> 
						<form:input type="text" class="form-control" path="imagen" id="imagen" required="required" />
					</div>
					
					<div class="form-row">
						<div class="form-group">			
							<label for="idModelo" class="control-label">Modelo</label>
							<form:select id="idModelo" path="modelo.model_id"	class="form-control" items="${modelos}" itemLabel="nombre"  itemValue="model_id" />  
						</div>
						
						<div class="form-group">			
							<label for="idAlmacenamiento" class="control-label">Almacenamiento</label>
							<form:select id="idAlmacenamiento" path="almacenamiento.almacen_id"	class="form-control" items="${almacenamientos}" itemLabel="descripcion"  itemValue="almacen_id" />  
						</div>
						
						<div class="form-group">			
							<label for="idMemoria" class="control-label">Memoria</label>
							<form:select id="idMemoria" path="memoria.mem_id"	class="form-control" items="${memorias}" itemLabel="descripcion"  itemValue="mem_id" />  
						</div>
						
						<div class="form-group">			
							<label for="idColor" class="control-label">Color</label>
							<form:select id="idColor" path="color.color_id"	class="form-control" items="${colores}" itemLabel="nombre"  itemValue="color_id" />  
						</div>
					</div>

					<hr class="featurette-divider">
										
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Stock</label> 
							<form:input type="number" class="form-control" path="stock" id="stock" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Precio</label> 
							<form:input type="number" class="form-control" path="precio"
									id="precio" required="required" />
						</div>					
		
					</div>
					

					<button type="submit" class="btn btn-primary">Guardar</button>
					
					<hr class="featurette-divider">
										
				</form:form>

			</div>

		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>

		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>