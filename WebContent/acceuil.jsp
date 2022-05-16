<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Vente de moto</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
					
						

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="acceuil">
										<i class="fa fa-home"></i>
										<span>Acceuil</span>
										
									</a>
								</div>
								<!-- /Wishlist -->
								
								<!-- Wishlist -->
								<div>
									<a href="index.jsp">
										<i class="fa fa-user"></i>
										<span>Admin</span>
										
									</a>
								</div>
								<!-- /Wishlist -->

								
							</div>
						</div>
						<!-- /ACCOUNT -->
						
						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form action="acceuil" method="POST" >
									<select class="input-select" name="type">
										<option selected disabled>CATEGORIES </option>
										<option value="2T">2T</option>
										<option value="4T">4T</option>
										<option value="Sportive">Sportive</option>
									</select>
									<input class="input" name="nom" placeholder="Rechercher une moto" >
									<button class="search-btn">Rechercher</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->
						
						
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container"  >
			
			
				<!-- section title -->
		<div class="col-md-12">
			<div class="section-title">
				
				<div class="section-nav">
					<ul class="section-tab-nav tab-nav">
						<li><a data-toggle="tab" href="#tab1">Yamaha</a></li>
						<li><a data-toggle="tab" href="#tab1">Kymco</a></li>						
					</ul>
				</div>
			</div>
		</div>
		<!-- /section title -->
				
				
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
		
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					

					<!-- STORE -->
					<div id="store" class="col-md-12">
						
						<h3 class="title" style="text-align:center">VOICI NOS PRODUITS</h3>
						<!-- store products -->
						<div class="row">
							
		  					<c:forEach var="produit" items="${ produits }">
							<!-- product -->
							<div class="col-md-3 col-xs-6">
							
								<div class="product">
								
									<div class="product-img" >
										<img src="./img/produits/<c:out value="${ produit.getImage() }" />" alt="" >
										
									</div>
									<div class="product-body">
										<p class="product-category">Categorie <c:out value="${ produit.getType() }" /></p>
										<h3 class="product-name"><a href="#"><c:out value="${ produit.getNom() }" /></a></h3>
										<h4 class="product-price"><c:out value="${ produit.getPrix() }" /> Ar</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-o"></i>
										</div>
										
									</div>
									<div class="add-to-cart">
										<a href="details?id=<c:out value="${ produit.getIdProduit() }" />"> <button class="add-to-cart-btn"> Details</button> </a>									
									</div>
									
								</div>
							
							</div>
							<!-- /product -->
							</c:forEach>

							<div class="clearfix visible-sm visible-xs"></div>

							
						</div>
						<!-- /store products -->

						
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/2T.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>2T<br>Collection</h3>
								<a href="#" class="cta-btn">Acheter maintenant<i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/4T.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>4T<br>Collection</h3>
								<a href="#" class="cta-btn">Acheter maintenant<i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/Sportive.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Sportive<br>Collection</h3>
								<a href="#" class="cta-btn">Acheter maintenant<i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		
		
		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						
			
						<div class="clearfix visible-xs"></div>

						<div class="col-md-6 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">A propos</a></li>
									<li><a href="#">Contact</a></li>									
									<li><a href="#">Conditions et Termes</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-6 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">Mon compte</a></li>									
									<li><a href="#">Aide</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> IT University <i class="fa fa-heart-o" aria-hidden="true"></i> 
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
