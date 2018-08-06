<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/marcas/guardar" var="urlForm" />
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	<div class="page-container">

		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase" role="main">

			<div class="col-xs-12">
				<p class="tittles-pages">Agregar marcas</p>
			</div>

			<div class="page-container-form">
				<spring:hasBindErrors name="marca">
					<div class='alert alert-danger' role='alert'>
						Por favor corrija los siguientes errores:
						<ul>
							<c:forEach var="error" items="${errors.allErrors}">
								<li><spring:message message="${error}" /></li>
							</c:forEach>
						</ul>
					</div>
				</spring:hasBindErrors>

				<form:form action="${urlForm}" method="POST" modelAttribute="marca">
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<label for="descripcion">Descripción</label>
								<form:hidden path="marca_id" />
								<form:input type="text" class="form-control" path="descripcion"
									id="descripcion" required="required" />
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-danger">Guardar</button>
				</form:form>
			</div>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>
	</div>
</body>