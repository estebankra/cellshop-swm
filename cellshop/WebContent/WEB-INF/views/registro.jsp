<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
<title>CineSite | Bienvenido</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/usuarios/guardar" var="urlForm" />
<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="https://fonts.googleapis.com/css?family=Dosis"
	rel="stylesheet">
<link href="${urlPublic}/css/my-style.css" rel="stylesheet">
<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
<link rel="stylesheet" href="${urlPublic}/css/style.css">
<link rel="Shortcut Icon" type="image/x-icon"
	href="assets/icons/shortcut-icon.ico" />
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

		<jsp:include page="includes/menu.jsp"></jsp:include>

		<div class="page-container">
			<div class="content-page cover-background font-content-contact">
				<section class="contact-form-info section">
				<div class="container">
					<div class="row">
						<div class="col-xs-10 col-xs-offset-1 col-sm-5 col-sm-offset-0">
							<div class="well">
								<h3 class="text-center"
									style="font-family: 'Lobster', cursive; font-size: 27px;">Dirección</h3>
								<address>
									<strong>Pais:</strong> Tu país<br> <strong>Dirección:</strong>
									Tu dirección<br> <strong>Ciudad:</strong> Tu ciudad<br>
									<strong>Email:</strong> tucorreo@info.com
								</address>
							</div>
						</div>
						<div class="col-xs-12 col-sm-7">
							<div class="well">
								<h3 class="tittles-pages text-center">Más info de contacto</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Dicta velit ducimus aut tempore blanditiis assumenda totam eius
									optio id minima labore natus ex ratione maxime, iusto fuga
									omnis dolorum libero?</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-md-4 col-md-push-8">
							<h2 class="tittles-pages text-center">Info pedidos</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Animi quidem ipsum atque numquam, sint odio nesciunt laborum
								repellat tenetur commodi beatae a, officia praesentium eius fuga
								illum totam veniam velit. Lorem ipsum dolor sit amet,
								consectetur adipisicing elit. Recusandae, nam ipsum dolores ut
								nesciunt sequi iste vitae iusto, unde placeat veniam quis earum
								atque omnis optio praesentium! Officia, ipsum, neque.</p>
						</div>
						
						
						<div class="col-xs-12 col-md-8 col-md-pull-4">
							<h2 class="tittles-pages text-center">Formulario de registro</h2>
							
							<form:form action="${urlForm}" method="POST" enctype="multipart/form-data" modelAttribute="usuario">
							
								<div class="form-group">
									<label class="control-label col-sm-2">Apellidos</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="apellidos"
									id="apellidos" required="required" placeholder="Escribe tus apellidos"/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Nombre</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="nombre"
											id="nombre" required="required" placeholder="Escribe tu nombre" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Nacimiento</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="fechanac"
											id="fechanac" required="required" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Documento</label>
									<div class="col-sm-10">
										<form:input type="number" class="form-control input-form-contact" path="docunum"
										id="docunum" required="required" placeholder="Introduce tu número de documento" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Dirección</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="direccion"
											id="direccion" required="required" placeholder="Escribe tu dirección "/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Ciudad</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="ciudad"
											id="ciudad" required="required" placeholder="Escribe tu ciudad de residencia" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">País</label>
									<div class="col-sm-10">
										<form:input type="text" class="form-control input-form-contact" path="pais"
											id="pais" required="required" placeholder="Escribe tu país de residencia" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Telefóno</label>
									<div class="col-sm-10">
										<form:input type="number" class="form-control input-form-contact" path="telefono"
											id="telefono" required="required" placeholder="Escribe tu número de telefóno" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Email</label>
									<div class="col-sm-10">
										<form:input type="email" class="form-control input-form-contact" path="email"
											id="email" required="required" placeholder="Escribe tu dirección de correo" />
									</div>
								</div>
								
								<hr class="featurette-divider">
								
								<div class="form-group">
									<label class="control-label col-sm-2">Usuario</label>
									<div class="col-sm-10">
										<form:input type="usuario" class="form-control input-form-contact" path="usuario"
											id="usuario" required="required" placeholder="Escribe el nombre de usuario que desees" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-2">Contraseña</label>
									<div class="col-sm-10">
										<form:input type="password" class="form-control input-form-contact" path="contrasena"
											id="contrasena" required="required" placeholder="Escribe tu contraseña" />
									</div>
								</div>
								
								<br>
											
								<button type="submit" class="btn btn-primary pull-right">Registrar</button>							
								
							</form:form>
						</div>
					</div>
				</div>
				</section>
			</div>


			<jsp:include page="includes/footer.jsp"></jsp:include>

		</div>
	</div>
	
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