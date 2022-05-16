<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  HttpSession sessions=request.getSession();
	sessions.setAttribute("nbr",3); 
	
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

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
		

		
		
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12" style="text-align:center;">
						<h3 class="breadcrumb-header"  > Gestion de Produit</h3>
						
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->
		
		<div class="section-title text-center">
			<c:if test="${ !empty erreur }"><h5 class="title" style="color:red;"><c:out value="${ erreur }"/></h5></c:if>
		</div>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container" >
				<!-- row -->
				<div class="row" >

					
					<!-- Order Details -->
					<div class="col-md-5 order-details">	
					
						<form action="filter"  method="POST" >
							<div class="section-title text-center">
								<h3 class="title">Ajout</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="nom" placeholder="Nom" required>
							</div>
							
							<select class="input-select" name="marque">
								<option selected disabled>Marque</option>
								<option value="Yamaha">Yamaha</option>
								<option value="Kymco">Kymco</option>
								<option value="Honda">Honda</option>
								<option value="Benda">Benda</option>
								<option value="Hooper">Hooper</option>
								<option value="Ktm">Ktm</option>
								<option value="Suzuki">Suzuki</option>
								<option value="Malugati">Malugati</option>
							</select>
							
							
								<p> Categorie :</p>
																			
								<div class="input-radio" >
									<input type="radio" name="type" value="2T" id="payment-1" checked>
									<label for="payment-1">
										<span></span>
										2T
									</label>
									
								</div>
								
								<div class="input-radio" >
									<input type="radio" name="type" value="4T" id="payment-2">
									<label for="payment-2">
										<span></span>
										4T
									</label>							
								</div>
								
								<div class="input-radio" >
									<input type="radio" name="type" value="Sportive" id="payment-3">
									<label for="payment-3">
										<span></span>
										Sportive
									</label>							
								</div>
								
								
								<div class="form-group">
									<input class="input" type="number" name="vitesse" placeholder="Vitesse" required>
								</div>
								<div class="order-notes">
									<textarea class="input" name="fiche" placeholder="Fiche" required></textarea>
								</div>
								<div class="form-group">
									<input class="input" type="number" name="prix" placeholder="Prix" required>
								</div>
								
								
								<input type="file" name="image" required> 
								
								<input type="submit"  class="primary-btn order-submit" id='submit' value='Valider' >
						
						</form>
					
					
					</div>
					<!-- /Order Details -->
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
