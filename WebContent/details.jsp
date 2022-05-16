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
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					
					<ul class="header-links pull-right">
						
						<li><a href="index.jsp"><i class="fa fa-user-o"></i> Admin</a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

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
									<a href="shop">
										<i class="fa fa-shopping-cart"></i>
										<span>Boutique</span>
										
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
										<option value="#">CATEGORIES</option>
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

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					
					
					<!-- Product main img -->
					<div class="col-md-6 ">
						<div id="product-img">							
							<img src="./img/produits/<c:out value="${ produit.getImage() }" />" alt="" >					
						</div>
					</div>
					<!-- /Product main img -->
					
					<!-- Product details -->
					<div class="col-md-4">
						<div class="product-details">
							<h2 style="color:#DC143C;"><c:out value="${ produit.getNom() }" /> <c:out value="${ produit.getType() }" />  <i class="fa fa-motorcycle"></i></h2>
							
							<h3> Marque : <c:out value="${ produit.getMarque() }" /></h3>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
							</div>
							<div>
								<h4 class="product-price"><c:out value="${ produit.getPrix() }" /> AR</h4>
								
							</div>
							
							<h4><c:out value="${ produit.getFiche() }" /></h4>
							
							<h4 class="product-price">ACHETER VOTRE MOTO MAINTENANT <i class="fa fa-money"> </i></h4>  

						</div>
					</div>
					<!-- /Product details -->
					
				
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
	
		

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
