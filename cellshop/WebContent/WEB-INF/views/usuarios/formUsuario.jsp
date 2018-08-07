<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<spring:url value="/usuarios/guardar" var="urlForm" />
		
		<!-- Bootstrap 2014 -->
		<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
		<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">
		
		<!-- Style CSS -->
		<link rel="stylesheet" href="${urlPublic}/css/style.css">
		
		<!-- Icon -->
		<link rel="Shortcut Icon" type="image/x-icon"
			href="${urlPublic}/assets/icons/shortcut-icon.ico" />
		
		<!-- Font -->
		<link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
		
		<!-- Social Icons -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	</head>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">CellShop</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		
		<i class="fa fa-bars visible-xs btn-mobile"></i>
		
		<div class="collapse navbar-collapse right" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="${urlRoot}">Inicio</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${urlRoot}modelos/lists">Telefónos</a></li>
			</ul>
			
			<div class="form-inline my-2 my-lg-0">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
				href="${urlRoot}usuarios/nuevo"><b>Registrate</b></a></li>
					<li class="nav-item active"><a class="nav-link"
						href="${urlRoot}login/index"><b>Inicia Sesión</b></a></li>
				</ul>
			</div>	
		</div>
	</nav>
	<body>
	
		<div class="page-container">
	
			<div class="container theme-showcase" role="main">
	
				<div class="content-page">
					<div class="col-xs-12">
						<p class="tittles-pages">Registrate completando los siguientes
							datos</p>
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
						modelAttribute="usuario">
	
						<h3>Apellidos</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:hidden path="usuario_id" />
									<form:input type="text" class="form-control" path="apellidos"
										id="apellidos" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Nombre</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="text" class="form-control" path="nombre"
										id="nombre" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Nacimiento</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="Date" class="form-control" path="fechanac"
										id="fechanac" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Documento</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="number" class="form-control" path="docunum"
										id="docunum" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Dirección</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="text" class="form-control" path="direccion"
										id="direccion" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Ciudad</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="text" class="form-control" path="ciudad"
										id="ciudad" required="required" />
								</div>
							</div>
						</div>
	
						<h3>País</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="text" class="form-control" path="pais"
										id="pais" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Telefóno</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="number" class="form-control" path="telefono"
										id="telefono" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Email</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="email" class="form-control" path="email"
										id="email" required="required" />
								</div>
							</div>
						</div>
	
						<hr class="featurette-divider">
	
						<h3>Usuario</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="text" class="form-control" path="usuario"
										id="usuario" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Contraseña</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="password" class="form-control"
										path="contrasena" id="contrasena" required="required" />
								</div>
							</div>
						</div>
	
						<h3>Confirmar contraseña</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:input type="password" class="form-control" path="perfil"
										id="perfil" required="required" />
								</div>
							</div>
						</div>
						<br />
	
						<button type="submit" class="btn btn-danger">Registrarse</button>
					</form:form>
	
					<hr class="featurette-divider">
	
				</div>
	
			</div>
	
			<jsp:include page="../includes/footer.jsp"></jsp:include>
	
		</div>
		
			
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	
	</body>

</html>