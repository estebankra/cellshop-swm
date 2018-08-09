<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
				<p class="tittles-pages">Listado de productos</p>
			</div>

			<div class="col-xs-12">
				<c:if test="${msg !=null }">
					<div class='alert alert-success' role='alert'>${msg}</div>
				</c:if>
			</div>

			<spring:url value="/productos/editar" var="urlEdit" />
			<spring:url value="/productos/eliminar" var="urlDelete" />
			<spring:url value="/productos/nuevo" var="urlCreate" />

			<a href="${urlCreate}" class="btn btn-success" role="button"
				title="Nueva marca">Nueva</a><br> <br>

			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Nombre</th>
						<th>Imagen</th>
						<th>Descripción</th>
						<th>Almacenamiento</th>
						<th>Color</th>
						<th>Memoria</th>
						<th>Precio</th>
						<th>Acciones</th>
						
					</tr>

					<c:forEach var="producto" items="${productos}">
						<tr>
							<td>${producto.modelo.nombre}</td>
							<td>${producto.imagen}</td>
							<td>${producto.descripcion}</td>
							<td>${producto.almacenamiento.descripcion}</td>
							<td>${producto.color.nombre}</td>
							<td>${producto.memoria.descripcion}</td>
							<td><fmt:formatNumber value="${producto.precio}" minFractionDigits="0" maxFractionDigits="0" />gs</td>
							<td><a href="${urlEdit}/${producto.prod_id}"
								class="btn btn-success btn-sm" role="button" title="Edit"><span
									class="glyphicon glyphicon-pencil"></span></a> <a
								href="${urlDelete}/${producto.prod_id}"
								onclick='return confirm("¿Estas seguro?")'
								class="btn btn-danger btn-sm" role="button" title="Eliminar"><span
									class="glyphicon glyphicon-trash"></span></a></td>
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