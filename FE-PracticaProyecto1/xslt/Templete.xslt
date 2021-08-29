<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>
	<xsl:param name="oPcion" select="oPcion"></xsl:param>

	<xsl:template match="Tienda">
		<html lang="es">
			<head>

				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				<meta name="description" content=""/>
				<meta name="author" content=""/>
				<!--<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">-->

				<title>Sixteen Clothing HTML Template</title>

				<!-- Bootstrap core CSS -->
				<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

				<!-- Additional CSS Files -->
				<link rel="stylesheet" href="/assets/css/fontawesome.css"/>
				<link rel="stylesheet" href="/assets/css/templatemo-sixteen.css"/>
				<link rel="stylesheet" href="/assets/css/owl.css"/>
				<!--<script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>-->


			</head>
			<body>

				<!-- Header -->
				<header class="">
					<nav class="navbar navbar-expand-lg">
						<div class="container">
							<a class="navbar-brand">
								<h2>
									<xsl:value-of select="Datos/NombreTienda"/>
									<em>Clothing</em>
								</h2>
							</a>
							<!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>-->
							<div class="collapse navbar-collapse" id="navbarResponsive">
								<ul class="navbar-nav ml-auto">

									<xsl:for-each select="menu/opcion">
										<li class="nav-item active">
											<xsl:choose>
												<xsl:when test="$oPcion = @Id">
													<a class="nav-link" href="@Url" >
														<xsl:value-of select="@Texto"></xsl:value-of>
														<span class="sr-only">(current)</span>
													</a>

												</xsl:when>
												<xsl:otherwise>
													<a href="{@Url}" class="">
														<xsl:value-of select="@Texto"/>
													</a>
												</xsl:otherwise>


											</xsl:choose>

										</li>
									</xsl:for-each>
									<!--<li class="nav-item active">
										<a class="nav-link" href="index.html">
											Home
											<span class="sr-only">(current)</span>
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="products.html">Our Products</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="about.html">About Us</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="contact.html">Contact Us</a>
									</li>-->
								</ul>
							</div>
						</div>
					</nav>
				</header>

				<xsl:choose>
					<xsl:when test="$oPcion = 1">
						<xsl:call-template name="Productos"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$oPcion = 2">
						<xsl:call-template name="Nosotros"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$oPcion = 3">
						<xsl:call-template name="Contacto"></xsl:call-template>
					</xsl:when>

					<xsl:otherwise>

						<xsl:call-template name="Inicio"></xsl:call-template>



					</xsl:otherwise>

				</xsl:choose>


				<!--<div class="best-features">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="section-heading">
									<h2>
										<xsl:value-of select="Datos/NombreTienda"/>
									</h2>
								</div>
							</div>
							<div class="col-md-6">
								<div class="left-content">
									<h4>
										¿Buscas los mejores productos de temporada?
									</h4>
									<p>
										<xsl:value-of select="Datos/Descripcion"/>
									</p>
									-->
				<!--<ul class="featured-list">
										<li>
											<a href="#">Lorem ipsum dolor sit amet</a>
										</li>
										<li>
											<a href="#">Consectetur an adipisicing elit</a>
										</li>
										<li>
											<a href="#">It aquecorporis nulla aspernatur</a>
										</li>
										<li>
											<a href="#">Corporis, omnis doloremque</a>
										</li>
										<li>
											<a href="#">Non cum id reprehenderit</a>
										</li>
									</ul>-->
				<!--
									<a href="about.html" class="filled-button">Read More</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="right-image">
									<img src="img/banner_3.jpg" alt=""/>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="call-to-action">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="inner-content">
									<div class="row">
										<div class="col-md-8">
											<h4>
												Creative &amp; Unique <em>Sixteen</em> Products
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque corporis amet elite author nulla.</p>
										</div>
										<div class="col-md-4">
											<a href="#" class="filled-button">Purchase Now</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>-->



				<footer>
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="inner-content">
									<p>
										Copyright  2020 Sixteen Clothing Co., Ltd.

										- Design: <a rel="nofollow noopener" href="https://templatemo.com" target="_blank">TemplateMo</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</footer>


				<!-- Bootstrap core JavaScript -->
				<script src="vendor/jquery/jquery.min.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


				<!-- Additional Scripts -->
				<script src="assets/js/custom.js"></script>
				<script src="assets/js/owl.js"></script>
				<script src="assets/js/slick.js"></script>
				<script src="assets/js/isotope.js"></script>
				<script src="assets/js/accordions.js"></script>





				<script language = "text/Javascript">
					cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
					function clearField(t){                   //declaring the array outside of the
					if(! cleared[t.id]){                      // function makes it static and global
					cleared[t.id] = 1;  // you could use true and false, but that's more typing
					t.value='';         // with more chance of typos
					t.style.color='#fff';
					}
					}
				</script>


			</body>


		</html>

	</xsl:template>
	<xsl:template name="Productos">


		<div class="page-heading products-heading header-text" style="paddin-top:15px;">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="text-content">
							<h4>Clothing</h4>
							<h2>Productos de Novedades la Villa</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--<div class="products">
			<div class="container">

				<div class="col-md-12">
					<div class="filters">
						<ul>
							<li class="active" data-filter="*">Todos los productos</li>
							<li data-filter=".des">Recomendados</li>
							<li data-filter=".dev">Ofertas</li>
							<li data-filter=".gra">venta Nocturna</li>
						</ul>
					</div>
				</div>
				<xsl:for-each select="Productos/tipo/prenda">
					<div class="product-item">
						<a href="#">
							<img src="{Imagen}" alt="" />
						</a>
						<div class="down-content">
							<a href="#">
								<h4>
									<xsl:value-of select="@Nombre"/>
								</h4>
							</a>
							<h6>
								<xsl:value-of select="Precio"/>
							</h6>
							<p>
								<xsl:value-of select="Descripcion"/>
							</p>
							<span>
								valoracion: <xsl:value-of select="valoracion"/>

							</span>


						</div>
					</div>
				</xsl:for-each>



			</div>



		</div>-->

		<div class ="col-lg-12" style="padding:10px;" >
			<div class="container">
				<div class="products">
					<div class="col-md-12">
						<div class="filters">
							<ul>
								<xsl:for-each select="Productos/tipo">
									<li>
										<a  id="li{@Nombre}" class="tipomenu" data-id="{@Nombre}" style="cursor:pointer; padding:10px;">
											<xsl:value-of select="@Nombre"/>
										</a>
									</li>
								</xsl:for-each>

							</ul>


							<!--<xsl:for-each select="Productos/tipo">
								<ul>
									<li class="active" data-filter="*">
									<a id="li{@Nombre}" data-id="{@Nombre}" style="cursor:pointer;"></a>

								</li>
								
								</ul>
								

							</xsl:for-each>-->

							<!--<ul>
								<li class="active" data-filter="*">Todos los productos</li>
								<li data-filter=".des">Recomendados</li>
								<li data-filter=".dev">Ofertas</li>
								<li data-filter=".gra">venta Nocturna</li>
							</ul>-->
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					
				<div class="row">
					<xsl:for-each select="Productos/tipo">


						<xsl:for-each select="prenda">
							<div id="{@Nombre}" class="tipoplatillo " >

								<div class="col-lg-4" style="padding-bottom:50px" >
									<div class="card" style="width: 18rem; heigth:100px;" >
										<img class="card-img-top" src="{Imagen}" alt="Card image cap"  width="100" height="200"/>
										<div class="card-body">
											<h5 class="card-title">
												<xsl:value-of select="@Nombre"/>
											</h5>
											<div class ="down-content">
												<h6>
													<xsl:value-of select="Precio"/>
												</h6>
												<p>
													<xsl:value-of select="Descripcion"/>
												</p>
												<span>
													valoracion: <xsl:value-of select="valoracion"/>

												</span>

											</div>

										</div>
									</div>

								</div>
							</div>
						</xsl:for-each>



					</xsl:for-each>


				</div>

				
				</div>

			</div>



		</div>
		<script src="js/jq.js"></script>
		<script>
			$(document).ready(function()
			{
			<!--//$(".tipoplatillo").css("display","none");-->
			$(".tipoplatillo").hide();
			$("#Dama").show();
			$("#Dama").addClass("Active");
			$(".tipomenu").click(function()
			{
			var nombre = $(this).data("id");
			$(".tipomenu").removeClass("Active");
			$(this).addClass("Active");
			$(".tipoplatillo").hide();
			$("#"+nombre).show();
			});


			});
		</script>
		<!--<script>

			-->
		<!--//$(".tipoplatillo".css("display","none"))-->
		<!--

			$(document).ready(function()
			{
			-->
		<!--//$(".tipoplatillo").css("display","none");-->
		<!--
			$(".tiporopa").hide();
			$("#Dama").show();
			$("#liDama").addClass("Active");
			$(".tipomenu").click(function()
			{
			var nombre = $(this).data("id");
			-->
		<!--$(".tipomenu").removeClass("Active");
			$(this).addClass("Active");-->
		<!--
			$(".tiporopa").hide();
			$("#"+nombre).show();
			});


			});-->
		<!--


		</script>-->



	</xsl:template>
	<xsl:template name="Nosotros">

	</xsl:template>
	<xsl:template name="Contacto">

	</xsl:template>
	<xsl:template name="Inicio">
		<link href="/assets/css/Banner.css" rel="stylesheet" type="text/css"/>
		<div>
			<input type="hiden"></input>
			<input type="hiden"></input>
			<input type="hiden"></input>
			<input type="hiden"></input>
		</div>

		<!--<div class="contenedor" >
			<ul class="slider">
				<li id="slider1">
					<img src="/img/banner_5.jpg"></img>
					
				</li>
				<li id="slider2">
					<img src="/img/banner_2.jpg"></img>

				</li>
				<li id="slider3">
					<img src="/img/banner_1.jpg"></img>

				</li>
			</ul>
			<ul class="menu_">
				<li>
					<a href="#slider1">1</a>
				</li>
				<li>
					<a href="#slider2">2</a>
				</li>
				<li>
					<a href="#slider3">3</a>
				</li>
			</ul>
			
		</div>-->

		<div class="best-features">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h2>
								<xsl:value-of select="Datos/NombreTienda"/>
							</h2>
						</div>
					</div>
					<div class="col-md-6">
						<div class="left-content">
							<h4>
								¿Buscas los mejores productos de temporada?
							</h4>
							<p>
								<xsl:value-of select="Datos/Descripcion"/>
							</p>

							<ul class="featured-list">
								<li>
									<a href="#">Lorem ipsum dolor sit amet</a>
								</li>
								<li>
									<a href="#">Consectetur an adipisicing elit</a>
								</li>
								<li>
									<a href="#">It aquecorporis nulla aspernatur</a>
								</li>
								<li>
									<a href="#">Corporis, omnis doloremque</a>
								</li>
								<li>
									<a href="#">Non cum id reprehenderit</a>
								</li>
							</ul>

							<a href="about.html" class="filled-button">Read More</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="right-image">
							<img src="img/banner_3.jpg" alt=""/>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="call-to-action">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="inner-content">
							<div class="row">
								<div class="col-md-8">
									<h4>
										Creative &amp; Unique <em>Sixteen</em> Products
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque corporis amet elite author nulla.</p>
								</div>
								<div class="col-md-4">
									<a href="#" class="filled-button">Purchase Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</xsl:template>


</xsl:stylesheet>
