<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<spring:url value="/usuarios/editar/${usuarioLogueado.usuario}" var="urlForm" />
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>

	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase" role="main">

			<div class="content-page">
					<p class="tittles-pages">Editar datos de su cuenta</p>

				<div class="col-xs-12">
					<c:if test="${msg !=null }">
						<div class='alert alert-warning' role='alert'>${msg}</div>
					</c:if>
				</div>
		

				<h1>Usuario: ${usuarioLogueado.usuario}</h1>

				<form:form action="${urlForm}" method="POST"
					modelAttribute="usuarioLogueado">

					<h3>Apellidos</h3>
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<form:hidden path="usuario_id" />
								<form:hidden path="usuario" />
								<form:hidden path="contrasena" />
								<form:hidden path="perfil" />
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

					<!-- <h3>Nueva contraseña</h3>
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
								<form:input type="password" class="form-control"
									path="perfil" id="perfil" required="required" />
							</div>
						</div>
					</div>

					<hr class="featurette-divider"> -->

					<button type="submit" class="btn btn-danger">Guardar
						cambios</button>
				</form:form><br /><br />


			</div>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>
