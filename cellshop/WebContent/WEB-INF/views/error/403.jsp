<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>CellShop | Bienvenido</title>
	<spring:url value="/resources" var="urlPublic" />
	<spring:url value="/" var="urlRoot" />
	
	<!-- Bootstrap 2014 -->
	<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
	<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- Style CSS -->
	<link rel="stylesheet" href="${urlPublic}/css/style.css">
	
	<!-- Icon -->
	<link rel="Shortcut Icon" type="image/x-icon"
		href="${urlPublic}/assets/icons/shortcut-icon.ico" />
	
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Dosis"
		rel="stylesheet">
	
	<!-- Social Icons -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>

	<div class="page-container">
		<jsp:include page="../includes/menu.jsp"></jsp:include>

		<div class="content-page">
		
			<div class="container" role="main">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">Error 403.</h3>
					</div>
					<div class="panel-body">
						<img src="${urlPublic}/assets/img/error.png" width="48"
							height="48">
						<h4>Permiso denegado!</h4>
						<br>
						<button class="btn btn-success" onclick="goBack()">REGRESAR</button>
					</div>
				</div>


			</div>
			<jsp:include page="../includes/footer.jsp"></jsp:include>
		</div>
		<!-- /container -->
	</div>

		
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>

	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>