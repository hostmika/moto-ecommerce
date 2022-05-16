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
										<i class="fa fa-shopping-cart"></i>
										<span>Boutique</span>
	
									</a>
								</div>
								<!-- /Wishlist -->
								
								<!-- Wishlist -->
								<div>
									<a href="ajouter.jsp">
										<i class="fa fa-plus"></i>
										<span>Ajout produit</span>
	
									</a>
								</div>
								<!-- /Wishlist -->

								
								

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
						
						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">CATEGORIES</option>
										<option value="1">2T</option>
										<option value="1">4T</option>
										<option value="1">Sportive</option>
									</select>
									<input class="input" placeholder="Rechercher une moto">
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
					
					
					
					<!-- STORE -->
					<div id="store" class="col-md-12">
						
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
										<h3 class="product-name"><c:out value="${ produit.getNom() }" /></h3>
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
										<a href="modifier?id=<c:out value="${ produit.getIdProduit() }" />"> <button class="add-to-cart-btn"> Modifier</button> </a>
										<a href="supprimer?id=<c:out value="${ produit.getIdProduit() }" />"> <button class="add-to-cart-btn"> Supprimer</button> </a>									
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

		
		<!-- FOOTER -->
		<footer id="footer">
			

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
