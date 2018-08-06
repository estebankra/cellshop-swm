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
				<p class="tittles-pages">Listado de pedidos</p>
			</div>

			<c:if test="${msg !=null }">
				<div class='alert alert-success' role='alert'>${msg}</div>
			</c:if>
			
			<spring:url value="/pedidos/${usuario.name}/detalles" var="urlDetails" />

			<div class="table-responsive text-center">
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th>Fecha</th>
						<th>Monto</th>
						<th>Detalles</th>
					</tr>

					<c:forEach var="pedido" items="${pedidos}">
						<tr>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${pedido.fecha}" /></td>
							<td><fmt:formatNumber value="${pedido.monto}" minFractionDigits="0" maxFractionDigits="0"/>gs</td>					
							<td><a href="${urlDetails}/${pedido.pedido_id}"
								class="btn btn-success" role="button" title="Ver"><span
									class="glyphicon glyphicon-info-sign"></span></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<jsp:include page="../includes/footer.jsp"></jsp:include>


	</div>
</body>