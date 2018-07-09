<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<spring:url value="/" var="urlRoot" />
<!-- Fixed navbar -->
<div class="page-container">
	<nav class="full-reset nav-phonestore">
		<sec:authorize access="isAnonymous()">
			<div class="logo tittles-pages">CellShop</div>
			<ul class="list-unstyled full-reset navigation-list">
				<li><a href="${urlRoot}">Inicio</a></li>
				<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
				<!--<li><a href="news.html">Noticias</a></li>
				<li><a href="services.html">Servicios</a></li>
				<li><a href="contact.html">Contactenos</a></li> -->
				<li><a href="${urlRoot}usuarios/nuevo"><b>Registrate</b></a></li>
				<li><a href="${urlRoot}usuarios/nuevo"><b>Inicia Sesión</b></a></li>
			</ul>
			<i class="fa fa-bars visible-xs btn-mobile"></i>
		</sec:authorize>

		<sec:authorize access="hasAnyAuthority('ADMIN')">
			<div class="logo tittles-pages">PhoneStore</div>
			<ul class="list-unstyled full-reset navigation-list">
				<li><a href="${urlRoot}">Inicio</a></li>
				<li><a href="${urlRoot}modelos/lists">Telefónos</a></li>
				<!--<li><a href="news.html">Noticias</a></li>
				<li><a href="services.html">Servicios</a></li>
				<li><a href="contact.html">Contactenos</a></li> -->
				<li><a href="${urlRoot}marcas/nuevo">Marcas</a></li>
				<li><a href="${urlRoot}usuarios/nuevo">Registrate</a></li>
			</ul>
			<i class="fa fa-bars visible-xs btn-mobile"></i>
		</sec:authorize>
	</nav>
</div>