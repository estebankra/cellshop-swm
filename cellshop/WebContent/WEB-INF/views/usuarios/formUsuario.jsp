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
<spring:url value="/usuarios/guardar" var="urlForm" />
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

		<div class="container theme-showcase" role="main">

			<div class="content-page">
				<div class="col-xs-12">
					<p class="tittles-pages">Registrate completando los siguientes
						datos</p>
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
					modelAttribute="usuario">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="apellidos">Apellidos</label>
								<form:hidden path="usuario_id" />
								<form:input type="text" class="form-control" path="apellidos"
									id="apellidos" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="nombre">Nombre</label>
								<form:input type="text" class="form-control" path="nombre"
									id="nombre" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="fechanac">Nacimiento</label>
								<form:input type="Date" class="form-control" path="fechanac"
									id="fechanac" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="docunum">Documento</label>
								<form:input type="number" class="form-control" path="docunum"
									id="docunum" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="direccion">Dirección</label>
								<form:input type="text" class="form-control" path="direccion"
									id="direccion" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="ciudad">Ciudad</label>
								<form:input type="text" class="form-control" path="ciudad"
									id="ciudad" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="pais">País</label>
								<form:input type="text" class="form-control" path="pais"
									id="pais" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="telefono">Telefóno</label>
								<form:input type="number" class="form-control" path="telefono"
									id="telefono" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="telefono">Email</label>
								<form:input type="email" class="form-control" path="email"
									id="email" required="required" />
							</div>
						</div>
					</div>

					<hr class="featurette-divider">

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="usuario">Usuario</label>
								<form:input type="text" class="form-control" path="usuario"
									id="usuario" required="required" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="contrasena">Contraseña</label>
								<form:input type="password" class="form-control"
									path="contrasena" id="contrasena" required="required" />
							</div>
						</div>
					</div>

					<hr class="featurette-divider">

					<button type="submit" class="btn btn-danger">Registrarse</button>
				</form:form>

				<hr class="featurette-divider">

			</div>

		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
	
		<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>
</html>