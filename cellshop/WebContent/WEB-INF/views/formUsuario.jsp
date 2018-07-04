<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Creacion de cuenta</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/usuarios/save" var="urlForm" />

<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="https://fonts.googleapis.com/css?family=Dosis"
	rel="stylesheet">
<link href="${urlPublic}/css/my-style.css" rel="stylesheet">

</head>

<body>

	<jsp:include page="includes/menu.jsp"></jsp:include>

	<div class="container theme-showcase" role="main">

		<div class="page-header">
			<h3 class="blog-title">
				<span class="label label-success">Completa los siguientes
					datos para registrarte</span>
			</h3>
		</div>
		
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
			enctype="multipart/form-data" modelAttribute="usuario">
			<!-- Inician los inputs del form -->
			<div class="row">
				<div class="col-sm-3">
					<div class="form-group">
						<label for="apellidos">Apellidos</label>
						<form:input type="text" class="form-control" path="apellidos"
							id="apellidos" required="required" />
					</div>
				</div>

				<div class="col-sm-3">
					<div class="form-group">
						<label for="apellidos">Nombre</label>
						<form:input type="text" class="form-control" path="nombre"
							id="nombre" required="required" />
					</div>
				</div>

				<div class="col-sm-3">
					<div class="form-group">
						<label for="fechanac">Fecha de nacimiento</label>
						<form:input type="text" class="form-control" path="fechanac"
							id="fechanac" required="required" />
					</div>
				</div>

			</div>

			<div class="row">
			
				<div class="col-sm-3">
					<div class="form-group">
						<label for="docunum">Número de documento</label>
						<form:input type="number" class="form-control" path="docunum"
							id="docunum" required="required" />
					</div>
				</div>

				<div class="col-sm-3">
					<div class="form-group">
						<label for="direccion">Dirección</label>
						<form:input type="text" class="form-control" path="direccion"
							id="direccion" required="required" />
					</div>
				</div>
				
				<div class="col-sm-3">
					<div class="form-group">
						<label for="ciudad">Ciudad</label>
						<form:input type="text" class="form-control" path="ciudad"
							id="ciudad" required="required" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-3">
					<div class="form-group">
						<label for="pais">País</label>
						<form:input type="text" class="form-control" path="pais"
							id="pais" required="required" />
					</div>
				</div>
				
				<div class="col-sm-3">
					<div class="form-group">
						<label for="telefono">Telefóno</label>
						<form:input type="number" class="form-control" path="telefono"
							id="telefono" required="required" />
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label for="email">Email</label>
						<form:input type="email" class="form-control" path="email"
							id="email" required="required" />
					</div>
				</div>
			</div>
			
			<hr class="featurette-divider">
			
			<div class="row">
				<div class="col-sm-3">
					<div class="form-group">
						<label for="text">Usuario</label>
						<form:input type="usuario" class="form-control" path="usuario"
							id="usuario" required="required" />
					</div>
				</div>
				
				<div class="col-sm-3">
					<div class="form-group">
						<label for="contrasena">Contraseña</label>
						<form:input type="password" class="form-control" path="contrasena"
							id="contrasena" required="required" />
					</div>
				</div>
			</div>
			<hr class="featurette-divider">
			<button type="submit" class="btn btn-danger">Guardar</button>
		</form:form><br />

		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#fechanac").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
	</script>
</body>
</html>