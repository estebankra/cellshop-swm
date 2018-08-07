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

					<div class="form-group">
						<label for="inputEmail4">Apellidos</label>
						<form:hidden path="usuario_id" />
						<form:hidden path="usuario" />
						<form:hidden path="contrasena" />
						<form:hidden path="perfil" />
						<form:input type="text" class="form-control" path="apellidos" id="apellidos" required="required" />
					</div>
					

					<div class="form-group">
						<label for="inputPassword4">Nombre</label> 
						<form:input type="text" class="form-control" path="nombre" id="nombre" required="required" />
					</div>

					
					<div class="form-group">
						<label for="inputAddress">Nacimiento</label> 
						<form:input type="Date" class="form-control" path="fechanac" id="fechanac" required="required" />
					</div>
					
					<div class="form-group">
						<label for="inputAddress2">Documento</label> 
						<form:input type="number" class="form-control" path="docunum" id="docunum" required="required" />
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Dirección</label> 
							<form:input type="text" class="form-control" path="direccion" id="direccion" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Ciudad</label> 
							<form:input type="text" class="form-control" path="ciudad"
									id="ciudad" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">País</label> 
							<form:input type="text" class="form-control" path="pais"
									id="pais" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Telefóno</label> 
							<form:input type="number" class="form-control" path="telefono" id="telefono" required="required" />
						</div>
					</div>
					
					<hr class="featurette-divider">
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Email</label> 
							<form:input type="email" class="form-control" path="email" id="email" required="required" />
						</div>
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
