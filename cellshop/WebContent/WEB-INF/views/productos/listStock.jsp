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
				<p class="tittles-pages">Stock de Productos</p>
			</div>

			<div class="col-xs-12">
				<c:if test="${msg !=null }">
					<div class='alert alert-success' role='alert'>${msg}</div>
				</c:if>
			</div>

			<spring:url value="/stock/agregar" var="urlAdd" />
			<spring:url value="/stock/restar" var="urlRemove" />

			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Producto</th>
						<th>En Stock</th>
						<th>Acciones</th>
					</tr>

					<c:forEach var="producto" items="${productos}">
						<tr>
							<td>${producto.modelo.nombre}</td>
							<td>${producto.stock}</td>
							<td><a href="${urlAdd}/${producto.prod_id}"
								class="btn btn-success btn-sm" role="button" title="Sumar"><span
									class="glyphicon glyphicon-plus"></span></a>
								<a href="${urlRemove}/${producto.prod_id}"
								class="btn btn-danger btn-sm" role="button" title="Restar"><span
									class="glyphicon glyphicon-minus"></span></a></td>
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