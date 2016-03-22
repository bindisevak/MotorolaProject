<%@page import="com.monitor.model.Monitor"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>

<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> --%>
<%-- <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %> --%>



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

<style>
.center {
	margin: 7%;
	width: 90%;
}

#myModal .modal-body p {
	margin-bottom: 500px
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
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<br>
		<br>
		<br>
		<br>
		<div class="text-center">
			<h1>Monitoring Tool</h1>
		</div>
		<br> <br> <br> 
		
		<div id="right">
			<form action="SearchControlling" method="post" autocomplete="on">

			<input id="search1" type="search1" size="25" placeholder="search">
		 	<span class="glyphicon glyphicon-search"></span> 
			<input type="submit" value="Search" class="btn btn-success btn-md">
			</form>
			</div>
		
		<br> <br> <br> <br>

	
	
		<div>		
			<% 
		
			
  
   		Monitor mon1 = (Monitor)session.getAttribute("bean1"); 
			
// 			Iterator<Monitor> itr = mon.iterator();
// 			while(itr.hasNext())
	
	
			
				
				%>
<%-- 				<%Monitor s = (Monitor)itr.next(); %> --%>
				
				<center>
				<div class="row">	

				<div class="col-md-11">
					

						<form action="ModuleController" method="get">
							<input type="hidden" name="operating_id" id="operating_id" value="<%=mon1.getOperating_id()%>" />
							
								<div class="row">
							<div class="col-md-12">
							<input type="submit" name="operating_units" id="operating_units" class="btn btn-primary btn-block" 
							value="<%out.println(mon1.getOperating_units());%>" />
							
						</div>
						</div>
						</form>
					

				</div>
				</div>
			</center>
	
	
	
</div>
	

			
		
</body>
</html>