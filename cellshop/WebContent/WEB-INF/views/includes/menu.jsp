<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<spring:url value="/" var="urlRoot" />
<!-- Fixed navbar -->

<nav class="full-reset nav-phonestore">
	<div class="page-container">
		<c:choose>
			<c:when test="${usuario.hasRole('admin')}">
				<div class="logo tittles-pages">CellShop | Administración</div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}login/index">Inicio</a></li>
					<li><a href="${urlRoot}usuarios/cuentas">Usuarios</a></li>
					<li><a href="${urlRoot}login/index">Productos</a></li>
					<li><a href="${urlRoot}login/index">Colores</a></li>
					<li><a href="${urlRoot}login/index">Ram</a></li>
					<li><a href="${urlRoot}marcas/index">Marcas</a></li>
					<li><a href="${urlRoot}almacenamientos/index">Almacenamiento</a></li>
					<li><a href="${urlRoot}logout">Salir</a></li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:when>


			<c:when test="${usuario.hasRole('cliente')}">
				<div class="logo tittles-pages">CellShop</div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}">Inicio</a></li>
					<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
					<li><a href="${urlRoot}perfil/${usuario.name}">Perfil</a></li>
					<li><a href="${urlRoot}login/index">Carrito de compra</a></li>
					<li><a href="${urlRoot}login/index">Historial de compras</a></li>
					<li><a href="${urlRoot}logout">Salir</a></li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:when>

			<c:otherwise>
				<div class="logo tittles-pages">CellShop</div>
				<ul class="list-unstyled full-reset navigation-list">
					<li><a href="${urlRoot}">Inicio</a></li>
					<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
					<!--<li><a href="news.html">Noticias</a></li>
				<li><a href="services.html">Servicios</a></li>
				<li><a href="contact.html">Contactenos</a></li> -->
					<li><a href="${urlRoot}usuarios/nuevo"><b>Registrate</b></a></li>
					<li><a href="${urlRoot}login/index"><b>Inicia
								Sesión</b></a></li>
					<li><i class="fas fa-cog"></i></li>
				</ul>
				<i class="fa fa-bars visible-xs btn-mobile"></i>
			</c:otherwise>
		</c:choose>
	</div>
</nav>
