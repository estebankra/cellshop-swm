<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url value="/modelos/guardar" var="urlForm" />
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	<div class="page-container">
		
		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="container theme-showcase" role="main">

			<div class="content-page">
				<div class="col-xs-12">
					<p class="tittles-pages">Agregar modelos</p>
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
					modelAttribute="modelo">
					<br><br><br><br>

					<div class="form-group">			
						<label for="inputEmail4">Marca</label>
						<form:hidden path="model_id" />		
						<form:select id="marca" path="marca"  class="form-control">
                            <c:forEach var="marcax" items="${marcas}">
								 <form:option value="marcax">${marcax.descripcion}</form:option>
							</c:forEach>    
	             		</form:select>
					</div>

					<div class="form-group">
						<label for="inputPassword4">Nombre</label> 
						<form:input type="text" class="form-control" path="nombre" id="nombre" required="required" />
					</div>
					
					<div class="form-group">
						<label for="inputAddress">Resolución</label> 
						<form:input type="text" class="form-control" path="resolucion" id="resolucion" required="required" />
					</div>
					
					<div class="form-group">
						<label for="inputAddress2">Pantalla</label> 
						<form:input type="text" class="form-control" path="pantalla" id="pantalla" required="required" />
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Peso</label> 
							<form:input type="text" class="form-control" path="peso" id="peso" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Dimensiones</label> 
							<form:input type="text" class="form-control" path="dimensiones"
									id="dimensiones" required="required" />
						</div>
						
						<div class="form-group col-md-2">
							<label for="inputZip">Batería</label> 
							<form:input type="text" class="form-control" path="bateria"
									id="bateria" required="required" />
						</div>
						
		
					</div>
					
					<hr class="featurette-divider">

					<button type="submit" class="btn btn-primary">Guardar</button>
				</form:form>

			</div>

		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>

	</div>

		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>