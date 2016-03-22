<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
	
	<style>
		.carousel-inner {
    height: 500px;
}

.carousel-inner .item {
    overflow: hidden;
    max-width: 100%;
    max-height: 1000px;;
}

.carousel-inner .item img {
    width: 100%;
    min-height: 100%;
    max-height: none;
}

.carousel,
.item,
.active {
    height: 500px;
}

 html,
body {
    height: 600px;
}
 
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<div class="navbar-brand">Motorola.com</div>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>

	</div>
	</nav>
	<br>
	<br>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="images/motorola_1.jpg" style="width: 100%; height: 100%"
					alt="First slide">
				<div class="container">
					
					
				</div>
			</div>
			<div class="item">
				<img src="images/motorola_2.jpg" style="width: 100%; height: 100%" data-src=""
					alt="Second    slide">
				<div class="container">
				
				
				</div>
			</div>
			<div class="item">
				<img src="images/motorola_3.jpg" style="width: 100%; height: 100%" data-src=""
					alt="Third slide">
				<div class="container">
					
					
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span
			class="glyphicon glyphicon-chevron-left"></span></a> <a
			class="right carousel-control" href="#myCarousel" data-slide="next"><span
			class="glyphicon glyphicon-chevron-right"></span></a>
	</div>

	<br>
	<br>



		<div class="container">
			<center>

			 <a href="./login.jsp" class="btn btn-lg btn-success" role="button">Welcome</a>

			</center>

		</div>

	</form>

</body>
</html>