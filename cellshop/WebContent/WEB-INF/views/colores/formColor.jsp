<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/colores/guardar" var="urlForm" />
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	<div class="page-container">
		
			<jsp:include page="../includes/menu.jsp"></jsp:include>
	
			<div class="container theme-showcase" role="main">
	
				<div class="content-page">
					<div class="col-xs-12">
						<p class="tittles-pages">Agregar colores</p>
					</div>
	
					<form:form action="${urlForm}" method="POST" modelAttribute="color">
	
						<h3>Descripción</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="row">
									<form:hidden path="color_id" />
								<form:input type="text" class="form-control" path="nombre"
									id="nombre" required="required" />
								</div>
							</div>
						</div>
						<br>
	
						<button type="submit" class="btn btn-danger">Guardar</button>
					</form:form>
	
					<hr class="featurette-divider">
	
				</div>
	
			</div>
	
		<jsp:include page="../includes/footer.jsp"></jsp:include>
	
	</div>
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>