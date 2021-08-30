<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>
	<xsl:param name="oPcion" select="oPcion"></xsl:param>

	<xsl:template match="Tienda">
		<html lang="es">
			<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>

			<head>
				<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
				<link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>

				<meta charset="utf-8"/>


				<title>Sixteen Clothing HTML Template</title>

				<!-- Bootstrap core CSS -->
				<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

				<!-- Additional CSS Files -->
				<link rel="stylesheet" href="/assets/css/fontawesome.css"/>
				<link rel="stylesheet" href="/assets/css/templatemo-sixteen.css"/>
				<link rel="stylesheet" href="/assets/css/owl.css"/>



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
					<xsl:when test="$oPcion = 4">
						<xsl:call-template name="Venta"></xsl:call-template>
					</xsl:when>


					<xsl:otherwise>

						<xsl:call-template name="Inicio"></xsl:call-template>



					</xsl:otherwise>

				</xsl:choose>
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
				<!--<script src="vendor/jquery/jquery.min.js"></script>-->
				<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


				<!--Additional Scripts-->
				<script src="assets/js/custom.js"></script>
				<script src="assets/js/owl.js"></script>
				<script src="assets/js/slick.js"></script>
				<script src="assets/js/isotope.js"></script>
				<script src="assets/js/accordions.js"></script>





				<!--<script language = "text/Javascript">
					cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
					function clearField(t){                   //declaring the array outside of the
					if(! cleared[t.id]){                      // function makes it static and global
					cleared[t.id] = 1;  // you could use true and false, but that's more typing
					t.value='';         // with more chance of typos
					t.style.color='#fff';
					}
					}
				</script>-->


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
							<h2>Productos de Moda la Villa</h2>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class =" col-lg-12" style="padding:10px;" >
			<div class="container">
				<div class="products">
					<div class="col-md-12">
						<div class="filters">
							<ul>
								<xsl:for-each select="Productos/tipo" >
									<li>
										<a  id="li{@Nombre}" class="link"  data-id="{@Nombre}" style="cursor:pointer; padding:30px;">
											<xsl:value-of select="@Nombre"/>
										</a>
									</li>
								</xsl:for-each>

							</ul>
						</div>
					</div>
				</div>
				<div>
					<div class="container" style="padding-left:50px;">
						<div class="products">
							<xsl:for-each select="Productos/tipo">

								<div id="{@Nombre}" class="tipo row">

									<xsl:for-each select="prenda">


										<div class="col-lg-4" style="padding-bottom:50px" >
											<div class="card" style="width: 18rem; heigth:100px;" >
												<img class="card-img-top" src="{Imagen}" alt="Card image cap"  width="100" height="200"/>
												<div class="card-body">
													<h5 class="card-title">
														<xsl:value-of select="@Nombre"/>
													</h5>
													<div class ="down-content">
														<h6>
															Precio: <xsl:value-of select="Precio"/>
														</h6>
														<p>
															<xsl:value-of select="Descripcion"/>
														</p>
														<p>
															Talla: <xsl:value-of select="talla"/>
														</p>
														<span>
															valoracion: <xsl:value-of select="valoracion"/>

														</span>

													</div>

												</div>
											</div>

										</div>

									</xsl:for-each>

								</div>
							</xsl:for-each>


						</div>

					</div>




				</div>

			</div>



		</div>




		<script>

			$(document).ready(function()
			{

			$(".tipo").hide();
			<!--$("#Dama").show();
			$("#liDama").addClass("Active");-->
			$(".link").click(function()
			{
			var nombre = $(this).data("id");
			$(".link").removeClass("Active");
			$(this).addClass("Active");
			$(".tipo").hide();
			$("#"+nombre).show();


			});



			});

		</script>




	</xsl:template>
	<xsl:template name="Nosotros">

	</xsl:template>
	<xsl:template name="Contacto">
		<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;sensor=false&amp;language=en"></script>
		<script src="/js/geolocalizacion.js"></script>
		<div class="page-heading contact-heading header-text">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="text-content">
							<h4>
								<xsl:value-of select="Datos/NombreTienda"/>
							</h4>
							<h2>Contacta con nosotros</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="find-us">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h2>Buscanos en el mapa</h2>


						</div>
						<div class="col-lg-8" id="street">

						</div>
					</div>
					<div class="col-md-8" style ="padding-top:20px;">


						<div id="mapa"></div>


					</div>
					<div class="col-md-4">
						<div class="left-content">
							<h4>Buscanos en el mapa</h4>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisic elit. Sed voluptate nihil eumester consectetur similiqu consectetur.<br></br>Lorem ipsum dolor sit amet, consectetur adipisic elit. Et, consequuntur, modi mollitia corporis ipsa voluptate corrupti.
							</p>
							<ul class="social-icons">
								<li>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-linkedin"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-behance"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			$(document).ready(function()
			{


			getGeo();
			dibujaMapa(19.0628528, -98.1422546);

			});

		</script>



	</xsl:template>
	<xsl:template name="Venta">
		<div class="page-heading products-heading header-text" style="paddin-top:15px;">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="text-content">
							<h4>Ropa de Moda La villa</h4>
							<h2>Venta Noctura</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class =" col-lg-12" style="padding:10px;" >

			<div>
				<div class="container" style="padding-left:50px;">
					<div class="products">
						<xsl:for-each select="Productos/tipo">

							<div id="{@Nombre}" class="tipo row">

								<xsl:for-each select="prenda[@VentaNoc='SI']">


									<div class="row" style="padding-bottom:10px; padding-top:10px; padding-rigth:10px;" >
										<div class="card" style="width: 18rem; heigth:100px;" >
											<img class="card-img-top" src="{Imagen}" alt="Card image cap"  width="100" height="200"/>
											<div class="card-body">
												<h5 class="card-title">
													<xsl:value-of select="@Nombre"/>
												</h5>
												<div class ="down-content">
													<h6>
														Precio: <xsl:value-of select="Precio"/>
													</h6>
													<p>
														<xsl:value-of select="Descripcion"/>
													</p>
													<p>
														Talla: <xsl:value-of select="talla"/>
													</p>
													<span>
														valoracion: <xsl:value-of select="valoracion"/>

													</span>
													<p>
														Clave del producto: <xsl:value-of select="@claveProducto"/>

													</p>
													<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
														Comprar
													</button>


												</div>

											</div>
										</div>

									</div>



								</xsl:for-each>

							</div>
						</xsl:for-each>


					</div>

				</div>

			</div>




		</div>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding-top:100px">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Registra tu compra en linea</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<!--<span aria-hidden="true"><![CDATA[&times;]]></span>-->
						</button>
					</div>
					<div class="modal-body">

						<form action="ContactoVenta.aspx" method="post" class="tm-contact-form"
	  oninput ="contact_Total.value=contact_numeropersonas.valueAsNumber*contact_personaExtra.valueAsNumber">
							<div class="row" style="padding:10px;">
								<div class="col-lg-12">
									<label class="form-label">Nombre Competo:</label>
									<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Nombre" required="true"/>
								</div>
								<div class="col-lg-12">
									<label class="form-label">Direccion:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
								<div class="col-lg-6">
									<label class="form-label">Correo:</label>
									<input type="text" id="contact_email" name="contact_email" class="form-control"  placeholder="Correo electronico" required="true"/>
								</div>
								
								<div class="col-lg-6">
									<label class="form-label">Telefono:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
								<div class="col-lg-4">

									<label class="form-label">Clave del producto:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
								<div class="col-lg-4">
									<label class="form-label">Numero de prendas:</label>
									<input type="number" id="contact_numeropersonas" name ="contact_numeropersonas" class="form-control" value ="1" min="1" max="20" required="true"/>
								</div>
								<div class="col-lg-4">
									<label class="form-label">Precio del producto:</label>
									<input type="number" id="contact_personaExtra" name ="contact_personaExtra" class="form-control" value ="0" min="1" max="" required="true"/>
								</div>
								<div class="col-lg-4">
									<label class="form-label">Fecha:</label>
									<input type="date" id="contact_fecha" name="contact_fecha" class="form-control" placeholder="Nombre" required="true"/>
								</div>
								<div class="col-lg-4">
									<label class="form-label">Hora:</label>
									<input type="time" id="contact_hora" name="contact_hora" class="form-control" required="true" min ="06:00:00" max="22:00:00"/>
								</div>
								<div class="col-lg-4">
									<label class="form-label">Total a pagar:</label>
									<output id="contact_Total" name="contact_Total" class="form-control">1</output>
								</div>
								<div class="col-lg-12">
									<h4>Datos Bancarios: </h4>								
								</div>

								<div class="col-lg-12"  style="padding-top:10px;">
									<label class="form-label">Nombre del propietario:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
								<div class="col-lg-12" style="padding-top:10px;">
									<label class="form-label">Numero de tarjeta:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
									<div class="col-lg-12">
									<label class="form-label">Vigecia:</label>
									<input type="text" id="contact_Direccion" name="contact_Direccion" class="form-control"  placeholder="Direccion" required="true"/>
								</div>
				
								<div class="col-lg-12">
									
									<button  type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									<button type="submit" class="btn btn-primary" name="submit">Realizar compra</button>
								
							
							
								
								</div>
								
								
								


							</div>
							<div class="col-lg-6 col-md-6">
								<div id="google-map"></div>
								<!--<div id="mapa">

							</div>-->
							</div>
						</form>

					</div>

				</div>
			</div>
		</div>





		<!--<script>

			$(document).ready(function()
			{

			$(".tipo").hide();
			-->
		<!--$("#Dama").show();
			$("#liDama").addClass("Active");-->
		<!--
			$(".link").click(function()
			{
			var nombre = $(this).data("id");
			$(".link").removeClass("Active");
			$(this).addClass("Active");
			$(".tipo").hide();
			$("#"+nombre).show();


			});



			});

		</script>-->





	</xsl:template>
	<xsl:template name="Inicio">
		<link href="/assets/css/Banner.css" rel="stylesheet" type="text/css"/>
		<div>
			<input type="hiden"></input>
			<input type="hiden"></input>
			<input type="hiden"></input>
			<input type="hiden"></input>
		</div>



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
