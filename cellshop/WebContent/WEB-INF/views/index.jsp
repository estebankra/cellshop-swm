<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />

<body>
	
    <div class="page-container">
    
    	<jsp:include page="includes/menu.jsp"></jsp:include>
    	
        <div class="content-page cover-background font-content-index">
            <div class="jumbotron">
              <h1 class="tittles-pages">Bienvenido a CellShop</h1>
              <p> Compra el smartphone que más te guste en CellShop tienda en línea. Contamos con diversos tipos de celulares y modelos como un celular Samsung, iPhone,Xperia, Moto G o LG Nexus y más.<br>
				Compra un celular que cubra tus necesidades ya sea un samsung galaxy s7, un iPhone 7, o un celular desbloqueado, el que desees se encuentra aquí. Adquiere el teléfono móvil de tu preferencia a precio bajo, seguro encontrarás celulares baratos o con la mejor tecnología. Aprovecha los beneficios que tenemos en nuestra tienda de celulares en línea.

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
                                <p class="text-justify">iOS es un sistema operativo móvil de la multinacional Apple Inc. Originalmente desarrollado para el iPhone (iPhone OS), después se ha usado en dispositivos como el iPod touch y el iPad. No permite la instalación de iOS en hardware de terceros.<br><br> Actualmente es el segundo sistema operativo móvil más utilizado del mundo, detrás de Android, con una cuota de mercado de entre 10-15% al año 2017. La última versión del sistema operativo es iOS 12 aparecida en junio de 2018 sustituye a iOS 112​ con el objetivo principal de mejorar la experiencia del usuario. Los elementos de control consisten de deslizadores, interruptores y botones. La respuesta a las órdenes del usuario es inmediata y provee una interfaz fluida. La interacción con el sistema operativo incluye gestos como deslices, toques, pellizcos, los cuales tienen definiciones diferentes dependiendo del contexto de la interfaz. 
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <div class="content-dest">
                                <p style="font-size: 90px; text-align: center;"><i class="fa fa-windows"></i></p>
                                <h3 class="text-center">Windows Phone</h3>
                                <p class="text-justify">Windows Phone (abreviado WP) es un sistema operativo móvil desarrollado por Microsoft, como sucesor de Windows Mobile. A diferencia de su predecesor fue enfocado en el mercado de consumo en lugar del mercado empresarial. Con Windows Phone, Microsoft ofreció una nueva interfaz de usuario que integró varios de sus servicios activos. Compitió directamente contra Android de Google e iOS de Apple. Su última versión fue Windows Phone 8.1, lanzado el 14 de abril de 2014.5​6​ <br><br>Debido a la evidente fragmentación de sus sistemas operativos, Microsoft anunció en enero de 2015 que dará de baja a Windows Phone, para enfocarse en un único sistema más versátil denominado Windows 10 Mobile, disponible para todo tipo de plataformas (teléfonos inteligentes, tabletas y computadoras).
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                            <div class="content-dest">
                                <p style="font-size: 90px; text-align: center;"><i class="fa fa-android"></i></p>
                                <h3 class="text-center">Android</h3>
                                <p class="text-justify">Android es un sistema operativo basado en el núcleo Linux. Fue diseñado principalmente para dispositivos móviles con pantalla táctil, como teléfonos inteligentes, tabletas y también para relojes inteligentes, televisores y automóviles. Inicialmente fue desarrollado por Android Inc., empresa que Google respaldó económicamente y más tarde, en 2005, compró. <br><br> Android fue presentado en 2007 junto la fundación del Open Handset Alliance (un consorcio de compañías de hardware, software y telecomunicaciones) para avanzar en los estándares abiertos de los dispositivos móviles.4​ El primer móvil con el sistema operativo Android fue el HTC Dream y se vendió en octubre de 2008.5​ Android es el sistema operativo móvil más utilizado del mundo, con una cuota de mercado superior al 80% al año 2017, muy por encima de IOS.
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
                        <!-- <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-promo.png" alt="promo-icon" class="img-responsive center-box-content">
                                <h3>Promociones</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius vitae similique quos veritatis numquam fugiat fugit ea vel consectetur deserunt, provident hic nesciunt, natus soluta voluptate laudantium a possimus suscipit.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                                <hr class="visible-xs">
                            </div>
                        </div> -->
                        <div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-phones.png" alt="phone-icon" class="img-responsive center-box-content">
                                <h3>Teléfonos</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa delectus deserunt eveniet beatae repudiandae asperiores! Et facere beatae ea inventore similique molestiae fugiat ad, quos, tenetur natus est libero ducimus.
                                </p>
                                <a href="${urlRoot}modelos/lists" class="btn btn-success">Más información</a>
                                <hr class="visible-xs">
                            </div>
                        </div>
                        <!--<div class="col-xs-12 col-sm-6 text-center">
                            <div class="content-dest">
                                <img src="${urlPublic}/assets/img/home-plans.png" alt="plans-icon" class="img-responsive center-box-content">
                                <h3>Planes y precios</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa delectus deserunt eveniet beatae repudiandae asperiores! Et facere beatae ea inventore similique molestiae fugiat ad, quos, tenetur natus est libero ducimus.
                                </p>
                                <a href="#" class="btn btn-success">Más información</a>
                            </div>
                        </div> -->
                    </div>
                </div>
            </section> 
        </div>
        
        <jsp:include page="includes/footer.jsp"></jsp:include>
        
    </div>
    	
		<!-- JavaScript -->
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
</body>