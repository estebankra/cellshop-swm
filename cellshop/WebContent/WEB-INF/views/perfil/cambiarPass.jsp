<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<spring:url value="/usuarios/editar/password/${usuarioLogueado.usuario}" var="urlForm" />
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
					
					<hr class="featurette-divider">

					<h3>Nueva contraseña</h3>
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
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

					<hr class="featurette-divider">

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
