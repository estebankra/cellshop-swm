<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase" role="main">

			<div class="col-xs-12">
				<p class="tittles-pages">Listado de usuarios registrados</p>
			</div>

			<c:if test="${msg !=null }">
				<div class='alert alert-success' role='alert'>${msg}</div>
			</c:if>

			<spring:url value="/usuarios/eliminar" var="urlDelete" />

			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Apellidos</th>
						<th>Nombre</th>
						<th>Fecha de Nacimiento</th>
						<th>Documento</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th>País</th>
						<th>Telefóno</th>
						<th>Email</th>
						<th>Usuario</th>
						<th>Bloquear</th>
					</tr>

					<c:forEach var="cliente" items="${clientes}">
						<tr>
							<td>${cliente.apellidos}</td>
							<td>${cliente.nombre}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${cliente.fechanac}" /></td>
							<td>${cliente.docunum}</td>
							<td>${cliente.direccion}</td>
							<td>${cliente.ciudad}</td>
							<td>${cliente.pais}</td>
							<td>${cliente.telefono}</td>
							<td>${cliente.email}</td>
							<td>${cliente.usuario}</td>
							<td><a href="${urlDelete}/${cliente.usuario_id}"
								onclick='return confirm("¿Estas seguro?")'
								class="btn btn-danger btn-sm" role="button" title="Eliminar"><span
									class="glyphicon glyphicon-ban-circle"></span></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>
	

	</div>

	<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>