<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>CineSite | Bienvenido</title>
	<spring:url value="/resources" var="urlPublic" />
	<spring:url value="/" var="urlRoot" />
	<link rel="stylesheet" href="${urlPublic}/css/normalize.css">
	<link rel="stylesheet" href="${urlPublic}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${urlPublic}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${urlPublic}/css/style.css">
	<link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/shortcut-icon.ico" />
	<link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="${urlPublic}/js/modernizr.js"></script>
	<script src="${urlPublic}/js/main.js"></script>
	<script src="${urlPublic}/js/bootstrap.min.js"></script>
</head>
<body>
	
    <div class="page-container">
    
    	<jsp:include page="includes/menu.jsp"></jsp:include>
    
        <div class="content-page cover-background font-content-index">
            <div class="jumbotron">
              <h1 class="tittles-pages">Bienvenido a CellShop</h1>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore ipsam quod dignissimos rerum veniam rem architecto voluptas quos facere voluptatibus molestiae odit, suscipit atque id, voluptate culpa assumenda a repellendus.
              </p>
            </div>
            <section class="OS-phones section">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <p class="tittles-pages">Sistemas en nuestros teléfonos y tablets</p>
                            <br><br><br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-4">
                            <div class="content-dest">
                                <p style="font-size: 90px; text-align: center;"><i class="fa fa-apple"></i></p>
                                <h3 class="text-center">iOS</h3>
                                <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe iure ea cum, quos, praesentium porro officia adipisci, deserunt asperiores dignissimos quasi non libero eum voluptate aut cumque nobis fuga. Laudantium!
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <div class="content-dest">
                                <p style="font-size: 90px; text-align: center;"><i class="fa fa-windows"></i></p>
                                <h3 class="text-center">Windows Phone</h3>
                                <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe iure ea cum, quos, praesentium porro officia adipisci, deserunt asperiores dignissimos quasi non libero eum voluptate aut cumque nobis fuga. Laudantium!
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <div class="content-dest">
                                <p style="font-size: 90px; text-align: center;"><i class="fa fa-android"></i></p>
                                <h3 class="text-center">Android</h3>
                                <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe iure ea cum, quos, praesentium porro officia adipisci, deserunt asperiores dignissimos quasi non libero eum voluptate aut cumque nobis fuga. Laudantium!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="news-promo-content section">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <p class="tittles-pages">Novedades y productos</p>
                            <br><br><br>
                        </div>
                        <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-news.png" alt="news-icon" class="img-responsive center-box-content">
                                <h3>Noticias</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius vitae similique quos veritatis numquam fugiat fugit ea vel consectetur deserunt, provident hic nesciunt, natus soluta voluptate laudantium a possimus suscipit.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                                <hr class="visible-xs">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-promo.png" alt="promo-icon" class="img-responsive center-box-content">
                                <h3>Promociones</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius vitae similique quos veritatis numquam fugiat fugit ea vel consectetur deserunt, provident hic nesciunt, natus soluta voluptate laudantium a possimus suscipit.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                                <hr class="visible-xs">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-phones.png" alt="phone-icon" class="img-responsive center-box-content">
                                <h3>Teléfonos</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa delectus deserunt eveniet beatae repudiandae asperiores! Et facere beatae ea inventore similique molestiae fugiat ad, quos, tenetur natus est libero ducimus.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                                <hr class="visible-xs">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-plans.png" alt="plans-icon" class="img-responsive center-box-content">
                                <h3>Planes y precios</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa delectus deserunt eveniet beatae repudiandae asperiores! Et facere beatae ea inventore similique molestiae fugiat ad, quos, tenetur natus est libero ducimus.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
        </div>
        
        <jsp:include page="includes/footer.jsp"></jsp:include>
        
    </div>
</body>
</html>